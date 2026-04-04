import os
import sys
from google import genai
from github import Github, Auth

def get_env_var(name):
    value = os.getenv(name)
    if not value:
        print(f"Erro: A variável de ambiente {name} não está definida.")
        sys.exit(1)
    return value

GITHUB_TOKEN = get_env_var('GITHUB_TOKEN')
GEMINI_API_KEY = get_env_var('GEMINI_API_KEY')
REPO_NAME = get_env_var('REPO_NAME')
SYSTEM_PROMPT = get_env_var('GEMINI_PROMPT')

try:
    PR_NUMBER = int(get_env_var('PR_NUMBER'))
except ValueError:
    print("Erro: PR_NUMBER deve ser um número inteiro.")
    sys.exit(1)

client = genai.Client(api_key=GEMINI_API_KEY)

def get_pr_details():
    auth = Auth.Token(GITHUB_TOKEN)
    g = Github(auth=auth)
    
    try:
        repo = g.get_repo(REPO_NAME)
        pr = repo.get_pull(PR_NUMBER)
    except Exception as e:
        print(f"Erro ao acessar o repositório ou PR: {e}")
        sys.exit(1)
    
    files_changed = []
    print(f"Analisando PR #{PR_NUMBER} no repo {REPO_NAME}...")
    
    for file in pr.get_files():
        if file.filename.endswith(('.dart', '.js', '.ts', '.tsx', '.py', '.java', '.kt', '.xml')): 
            patch_content = file.patch if file.patch else "Conteúdo binário ou muito grande omitido."
            files_changed.append(f"Arquivo: {file.filename}\nAlterações:\n{patch_content}")
    
    diff_text = "\n---\n".join(files_changed)
    
    pr_title = pr.title
    pr_body = pr.body if pr.body else "Nenhuma descrição fornecida no PR."
    
    return diff_text, pr_title, pr_body, pr

def evaluate_code(diff_text, pr_title, pr_body):
    if not diff_text:
        return "Não foi possível encontrar alterações de código legíveis neste PR."

    final_prompt = f"""
{SYSTEM_PROMPT}

### DADOS DO PULL REQUEST
**Título:** {pr_title}
**Descrição:** {pr_body}

### DIFF DO CÓDIGO (Alterações do PR)
{diff_text}
"""
    
    try:
        response = client.models.generate_content(
            model='gemini-2.5-flash',
            contents=final_prompt
        )
        return response.text
    except Exception as e:
        return f"Erro ao consultar o Gemini: {e}"

def post_comment(pr, body):
    try:
        pr.create_issue_comment(body)
        print("Comentário postado com sucesso!")
    except Exception as e:
        print(f"Erro ao postar comentário: {e}")

if __name__ == "__main__":
    diff_text, pr_title, pr_body, pr = get_pr_details()
    
    if not diff_text:
        print("Nenhum arquivo relevante alterado ou diff vazio.")
    else:
        review = evaluate_code(diff_text, pr_title, pr_body)
        
        comment_header = f"## 🤖 Avaliação Automática do Gemini\n**Avaliando:** {pr_title}\n\n"
        post_comment(pr, comment_header + review)