import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  // cores que uso
  final fundoClaro = Color(0xFFF8F9FA);
  final roxoPrincipal = Color(0xFF4A2EFF); //essa cor nem aparece mas tá ai fé foi a ideia do começo e não quis tirar

  @override
  Widget build(BuildContext context) {
    final corFundo = fundoClaro;
    final margemPagina = EdgeInsets.fromLTRB(16, 12, 16, 28);
    final estiloTituloSecao = TextStyle(
      color: Colors.black,
      fontSize: 20,
      fontWeight: FontWeight.bold,
    );
    return Scaffold(
      backgroundColor: corFundo,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {},
        ),
        title: Text(
          'GRR',
          style: TextStyle(
            color: Color(0xFF1F1F1F),
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Icons.person, size: 26),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.shopping_cart, size: 26),
            onPressed: () {},
          ),
        ],
      ),
      // não sei se o padding ficou bom, mas fé
      body: SingleChildScrollView(
        padding: margemPagina,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.05),
                    blurRadius: 4,
                    offset: Offset(0, 2),
                  ),
                ],
              ),
              padding: EdgeInsets.all(2),
              child: TextField(
                cursorColor: Colors.white,
                style: TextStyle(color: Colors.white, fontSize: 16),
                cursorWidth: 2.0,
                cursorHeight: 22,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search, color: Colors.grey),
                  hintText: 'O que você procura?',
                  hintStyle: TextStyle(color: Colors.grey, fontSize: 15),
                  filled: true,
                  fillColor: Color(0xFF1F1F1F),
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: 8,
                    vertical: 14,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide.none,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide.none,
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            ),
            SizedBox(height: 16),
            // banner ficou grande mas fé
            SizedBox(
              height: 220,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Stack(
                  fit: StackFit.expand,
                  children: [
                    Positioned.fill(
                      child: Image.asset(
                        'assets/images/yago-banner.jpg',
                        fit: BoxFit.cover,
                        width: double.infinity,
                        height: 220,
                        errorBuilder: (_, __, ___) => Container(
                          color: roxoPrincipal,
                          alignment: Alignment.center,
                          child: Icon(
                            Icons.broken_image_outlined,
                            color: Colors.white54,
                            size: 48,
                          ),
                        ),
                      ),
                    ),
                    Positioned.fill(
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter,
                            colors: [
                              Colors.black.withOpacity(0.78),
                              Colors.black.withOpacity(0.12),
                              Colors.white.withOpacity(0.35),
                            ],
                            stops: [0.0, 0.5, 1.0],
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 14,
                      left: 14,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Yago o maior do momento',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 32,
                              fontWeight: FontWeight.bold,
                              shadows: [
                                Shadow(
                                  color: Colors.black.withOpacity(0.4),
                                  blurRadius: 6,
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            'Aproveitar e vamos puxar saco\ndo nosso professor! Yago!',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                              height: 1.35,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      right: 14,
                      bottom: 14,
                      child: Material(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(24),
                          side: BorderSide(
                            color: Colors.grey.shade300,
                            width: 1,
                          ),
                        ),
                        clipBehavior: Clip.antiAlias,
                        child: InkWell(
                          onTap: () {},
                          borderRadius: BorderRadius.circular(24),
                          splashColor: Colors.grey.withOpacity(0.35),
                          highlightColor: Colors.black.withOpacity(0.06),
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: 18,
                              vertical: 10,
                            ),
                            child: Text(
                              'Ver as atualizações!',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Color(0xFF1F1F1F),
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 24),
            Text(
              'Categorias',
              textAlign: TextAlign.left,
              style: estiloTituloSecao,
            ),
            SizedBox(height: 12),
            // colocar 2 colunas porque ficou melhor na tela
            GridView.count(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              crossAxisCount: 2,
              crossAxisSpacing: 12,
              mainAxisSpacing: 12,
              mainAxisExtent: 200,
              children: [
                _CategoriaCardVisual(
                  titulo: 'Roupas do Naruto',
                  assetPath: 'assets/images/naruto.png',
                ),
                _CategoriaCardVisual(
                  titulo: 'Canecas da Dilma',
                  assetPath: 'assets/images/dilma.png',
                ),
              ],
            ),
            SizedBox(
              height: 32,
            ),
            Text(
              'Promos especiais',
              textAlign: TextAlign.left,
              style: estiloTituloSecao,
            ),
            SizedBox(height: 12),
            _PromoCardVisual(
              assetPath: 'assets/images/ben10.png',
              nome: 'Cueca Ben 10',
              preco: '28,00',
            ),
            SizedBox(height: 12),
            _PromoCardVisual(
              assetPath: 'assets/images/hi-men.png',
              nome: 'Meia Hi-Men',
              preco: '18,00',
            ),
            SizedBox(height: 20),
            Center(
              child: Material(
                color: Colors.black,
                borderRadius: BorderRadius.circular(24),
                clipBehavior: Clip.antiAlias,
                child: InkWell(
                  // fé que isso rode
                  onTap: () {},
                  borderRadius: BorderRadius.circular(24),
                  splashColor: Colors.white24,
                  highlightColor: Colors.white10,
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 28,
                      vertical: 12,
                    ),
                    child: Text(
                      'Ver mais',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 40),
            _NewsletterSectionVisual(),
            SizedBox(height: 24),
            _FooterSectionVisual(),
          ],
        ),
      ),
    );
  }
}

// rodapé só pra ver como fica esse peste me deu um trabalho 
class _FooterSectionVisual extends StatelessWidget {
  _FooterSectionVisual();

  final cinzaTextoRodape = Color(0xFFCCCCCC);
  final cinzaDivisor = Color(0xFF3A3A3A);
  final fundoQuadradoIcone = Color(0xFF2A2A2A);

  @override
  Widget build(BuildContext context) {
    final cantoArredondadoFooter = BorderRadius.circular(20);
    return Container(
      width: double.infinity,
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: cantoArredondadoFooter,
      ),
      padding: EdgeInsets.all(24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            'GRR',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 32,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 22),
          Text(
            'GRR Imports - Professor Yago compra aqui!!!',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 14,
              height: 1.35,
            ),
          ),
          SizedBox(height: 16),
          tituloRodape('Funcionamento'),
          SizedBox(height: 10),
          linhaRodape('Segunda a Sexta - 8h às 18h'),
          linhaRodape('sac@grrimports.com.br'),
          linhaRodape('4002 - 8922'),
          SizedBox(height: 28),
          tituloRodape('Institucional'),
          SizedBox(height: 10),
          linhaRodape('Sobre nós'),
          linhaRodape('Contato'),
          linhaRodape('Política de Privacidade'),
          linhaRodape('LGPD - Lei de proteção de dados'),
          SizedBox(height: 28),
          tituloRodape('Informações'),
          SizedBox(height: 10),
          linhaRodape('Entregas'),
          linhaRodape('Garantia'),
          linhaRodape('Trocas e devoluções'),
          SizedBox(height: 28),
          tituloRodape('Formas de Pagamento'),
          SizedBox(height: 14),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              iconeBandeira('assets/images/visacicon.png'),
              SizedBox(width: 12),
              iconeBandeira('assets/images/mastecardicon.png'),
              SizedBox(width: 12),
              iconeBandeira('assets/images/pix.png'),
              SizedBox(width: 12),
              iconeBandeira('assets/images/eloicon.png'),
            ],
          ),
          SizedBox(height: 28),
          Text(
            'Siga nossas redes:',
            textAlign: TextAlign.left,
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              iconeRedeSocial(
                'assets/images/zapzapicon.png',
                tamanhoImagem: 36,
              ),
              SizedBox(width: 16),
              iconeRedeSocial(
                'assets/images/instaicon.png',
                tamanhoImagem: 36,
              ),
              SizedBox(width: 16),
              iconeRedeSocial(
                'assets/images/tiktokicon.png',
                tamanhoImagem: 44,
              ),
            ],
          ),
          SizedBox(height: 32),
          Divider(color: cinzaDivisor, thickness: 1, height: 1),
          SizedBox(height: 16),
          Text(
            'Desenvolvido por Gustavo, Rofinis e Wallif. Projeto fictício sem fins comerciais.',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 11,
              height: 1.4,
            ),
          ),
        ],
      ),
    );
  }

  Widget tituloRodape(String texto) {
    return Text(
      texto,
      style: TextStyle(
        color: Colors.white,
        fontSize: 15,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  Widget linhaRodape(String texto) {
    return Padding(
      padding: EdgeInsets.only(bottom: 6),
      child: Text(
        texto,
        style: TextStyle(
          color: cinzaTextoRodape,
          fontSize: 13,
          height: 1.35,
        ),
      ),
    );
  }

  Widget iconeBandeira(String caminhoImagem) {
    return Material(
      color: fundoQuadradoIcone,
      borderRadius: BorderRadius.circular(14),
      clipBehavior: Clip.antiAlias,
      child: InkWell(
        onTap: () {},
        borderRadius: BorderRadius.circular(14),
        splashColor: Colors.white24,
        highlightColor: Colors.white10,
        child: SizedBox(
          width: 56,
          height: 56,
          child: Padding(
            padding: EdgeInsets.all(10),
            child: Image.asset(
              caminhoImagem,
              fit: BoxFit.contain,
              alignment: Alignment.center,
              errorBuilder: (_, __, ___) => Icon(
                Icons.image_not_supported_outlined,
                color: Colors.white54,
                size: 20,
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget iconeRedeSocial(
    String caminhoImagem, {
    required double tamanhoImagem,
  }) {
    return Material(
      color: fundoQuadradoIcone,
      borderRadius: BorderRadius.circular(16),
      clipBehavior: Clip.antiAlias,
      child: InkWell(
        onTap: () {},
        borderRadius: BorderRadius.circular(16),
        splashColor: Colors.white24,
        highlightColor: Colors.white10,
        child: SizedBox(
          width: 62,
          height: 62,
          child: Center(
            child: Image.asset(
              caminhoImagem,
              width: tamanhoImagem,
              height: tamanhoImagem,
              fit: BoxFit.contain,
              alignment: Alignment.center,
              errorBuilder: (_, __, ___) => Icon(
                Icons.image_not_supported_outlined,
                color: Colors.white54,
                size: tamanhoImagem * 0.55,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _NewsletterSectionVisual extends StatefulWidget {
  _NewsletterSectionVisual();

  @override
  State<_NewsletterSectionVisual> createState() =>
      _NewsletterSectionVisualState();
}

class _NewsletterSectionVisualState extends State<_NewsletterSectionVisual> {
  // campo de email + botão fake  deu um trabalho da peste 
  final cinzaHint = Color(0xFFCCCCCC);
  double raioBorda = 30;

  final TextEditingController emailController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final corFundoNewsletter = Colors.black;
    final paddingCaixa = EdgeInsets.symmetric(horizontal: 16, vertical: 32);
    var arredondamentoCaixa = 16.0;
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: corFundoNewsletter,
        borderRadius: BorderRadius.circular(arredondamentoCaixa),
      ),
      child: Padding(
        padding: paddingCaixa,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Inscreva-se para ganhar descontos!',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 12),
            Text(
              'Cadastre seu email, receba novidades e descontos imperdíveis antes de todo mundo!',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: cinzaHint,
                fontSize: 14,
                height: 1.4,
              ),
            ),
            SizedBox(height: 20),
            TextField(
              controller: emailController,
              keyboardType: TextInputType.emailAddress,
              style: TextStyle(color: Colors.white),
              cursorColor: Colors.white,
              decoration: InputDecoration(
                hintText: 'Digite seu melhor endereço de email',
                hintStyle: TextStyle(
                  color: Colors.grey,
                  fontSize: 14,
                ),
                filled: true,
                fillColor: Color(0xFF1F1F1F),
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 16,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(raioBorda),
                  borderSide: BorderSide(color: Colors.grey.shade400),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(raioBorda),
                  borderSide: BorderSide(color: Colors.grey.shade400),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(raioBorda),
                  borderSide: BorderSide(color: Colors.grey.shade300),
                ),
              ),
            ),
            SizedBox(height: 16),
            Material(
              color: Colors.white,
              borderRadius: BorderRadius.circular(raioBorda),
              clipBehavior: Clip.antiAlias,
              child: InkWell(
                onTap: () {},
                borderRadius: BorderRadius.circular(raioBorda),
                splashColor: Colors.black26,
                highlightColor: Colors.black12,
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 16),
                  child: Center(
                    child: Text(
                      'Inscrever',
                      style: TextStyle(
                        color: Color(0xFF1F1F1F),
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// pra ficar bonito fio
class _PromoCardVisual extends StatelessWidget {
  _PromoCardVisual({
    required this.assetPath,
    required this.nome,
    required this.preco,
  });

  final String assetPath;
  final String nome;
  final String preco;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.06),
            blurRadius: 8,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: Material(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        clipBehavior: Clip.antiAlias,
        child: InkWell(
          onTap: () {},
          borderRadius: BorderRadius.circular(16),
          splashColor: Colors.black12,
          highlightColor: Colors.black.withOpacity(0.04),
          child: Padding(
            padding: EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(
                  height: 180,
                  width: double.infinity,
                  child: Center(
                    child: Image.asset(
                      assetPath,
                      height: 180,
                      fit: BoxFit.contain,
                      errorBuilder: (_, __, ___) => SizedBox(
                        height: 180,
                        child: Icon(Icons.image_not_supported_outlined,
                            size: 48, color: Colors.grey[400]),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 12),
                Text(
                  nome,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 6),
                Text(
                  'R\$ $preco',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF1F1F1F),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// categorias pra ficar chique
class _CategoriaCardVisual extends StatelessWidget {
  _CategoriaCardVisual({
    required this.titulo,
    required this.assetPath,
  });

  final String titulo;
  final String assetPath;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.06),
            blurRadius: 6,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: Material(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        clipBehavior: Clip.antiAlias,
        child: InkWell(
          onTap: () {},
          borderRadius: BorderRadius.circular(12),
          splashColor: Colors.black12,
          highlightColor: Colors.black.withOpacity(0.04),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(12),
                ),
                child: Image.asset(
                  assetPath,
                  height: 140,
                  width: double.infinity,
                  fit: BoxFit.cover,
                  errorBuilder: (_, __, ___) => Container(
                    height: 140,
                    color: Colors.grey[300],
                    alignment: Alignment.center,
                    child: Icon(Icons.image_not_supported_outlined,
                        color: Colors.grey[600]),
                  ),
                ),
              ),
              Expanded(
                child: Center(
                  child: Text(
                    titulo,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
