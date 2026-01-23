import os
import sys
from google import genai
from github import Github, Auth

# Configuração e Verificação de Variáveis de Ambiente
def get_env_var(name):
    value = os.getenv(name)
    if not value:
        print(f"Erro: A variável de ambiente {name} não está definida.")
        sys.exit(1)
    return value

GITHUB_TOKEN = get_env_var('GITHUB_TOKEN')
GEMINI_API_KEY = get_env_var('GEMINI_API_KEY')
REPO_NAME = get_env_var('REPO_NAME')
try:
    PR_NUMBER = int(get_env_var('PR_NUMBER'))
except ValueError:
    print("Erro: PR_NUMBER deve ser um número inteiro.")
    sys.exit(1)

# Inicializa o cliente da nova SDK do Google (google-genai)
client = genai.Client(api_key=GEMINI_API_KEY)

def get_pr_diff():
    # Correção da Autenticação do PyGithub (Novo padrão)
    auth = Auth.Token(GITHUB_TOKEN)
    g = Github(auth=auth)
    
    try:
        repo = g.get_repo(REPO_NAME)
        # Correção: O método correto é get_pull, não get_pull_request
        pr = repo.get_pull(PR_NUMBER)
    except Exception as e:
        print(f"Erro ao acessar o repositório ou PR: {e}")
        sys.exit(1)
    
    files_changed = []
    print(f"Analisando PR #{PR_NUMBER} no repo {REPO_NAME}...")
    
    for file in pr.get_files():
        # Filtra apenas arquivos de código relevantes
        if file.filename.endswith(('.dart', '.js', '.ts', '.tsx', '.py', '.java', '.kt', '.xml')): 
            # patch pode ser None se o arquivo for binário ou muito grande, então tratamos isso
            patch_content = file.patch if file.patch else "Conteúdo binário ou muito grande omitido."
            files_changed.append(f"Arquivo: {file.filename}\nAlterações:\n{patch_content}")
    
    return "\n---\n".join(files_changed), pr

def evaluate_code(diff_text):
    if not diff_text:
        return "Não foi possível encontrar alterações de código legíveis neste PR."

    prompt = f"""
    Você é um professor sênior de Engenharia de Software (Mobile/Flutter).
    Seu objetivo é avaliar o código de um aluno.
    
    Critérios de avaliação:
    1. Clean Code e Boas Práticas (nomes de variáveis, funções pequenas).
    2. Arquitetura e Organização (separação de responsabilidades).
    3. Potenciais bugs ou problemas de performance.
    
    Aqui está o DIFF do Pull Request:
    {diff_text}
    
    Gere um feedback conciso em Markdown. Aponte erros específicos e sugira correções.
    Se o código estiver bom, elogie.
    Dê uma nota final de 0 a 10.
    """
    
    try:
        # Nova chamada da SDK google-genai
        response = client.models.generate_content(
            model='gemini-2.5-flash',
            contents=prompt
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
    diff_text, pr = get_pr_diff()
    
    if not diff_text:
        print("Nenhum arquivo relevante alterado ou diff vazio.")
        # Opcional: postar um aviso no PR
    else:
        review = evaluate_code(diff_text)
        post_comment(pr, f"## 🤖 Avaliação Automática do Gemini\n\n{review}")