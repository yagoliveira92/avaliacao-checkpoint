class PromoProductModel {
  final String id;
  final String name;
  final double price;
  final double? originalPrice;
  final String imageUrl;
  final bool isPromotion;
  final String? badge;

  PromoProductModel({
    required this.id,
    required this.name,
    required this.price,
    this.originalPrice,
    required this.imageUrl,
    this.isPromotion = false,
    this.badge,
  });

  // Dados mockados dos produtos em destaque do Figma
  static List<PromoProductModel> mockPromoProducts() {
    return [
      PromoProductModel(
        id: '1',
        name: 'Camisetas Capy',
        price: 28.00,
        imageUrl: 'assets/images/Cards_produtos/Cards_Home/Mobile/Imagem_produto_Capy_Mobile.png',
        isPromotion: true,
        badge: 'Promoção',
      ),
      PromoProductModel(
        id: '2',
        name: 'Mousepad Café',
        price: 18.00,
        imageUrl: 'assets/images/Cards_produtos/Cards_Home/Mobile/Imagem_produto_Mousepad_Mobile.png',
      ),
      PromoProductModel(
        id: '3',
        name: 'Caneca Bug',
        price: 28.00,
        imageUrl: 'assets/images/Cards_produtos/Cards_Home/Mobile/Imagem_produto_Caneca_bug_Mobile.png',
      ),
      PromoProductModel(
        id: '4',
        name: 'Boné 404',
        price: 25.00,
        imageUrl: 'assets/images/Cards_produtos/Cards_Home/Mobile/Imagem_produto_Bone_404_Mobile.png',
      ),
      PromoProductModel(
        id: '5',
        name: 'Quadro While',
        price: 22.00,
        imageUrl: 'assets/images/Cards_produtos/Cards_Home/Mobile/Imagem_produto_Quadro_Mobile.png',
      ),
      PromoProductModel(
        id: '6',
        name: 'Copo Vida de Dev',
        price: 28.00,
        imageUrl: 'assets/images/Cards_produtos/Cards_Home/Mobile/Imagem_produto_Copo_Mobile.png',
      ),
      PromoProductModel(
        id: '7',
        name: 'abridor de garrafa',
        price: 12.00,
        imageUrl: 'assets/images/Cards_produtos/Cards_Home/Mobile/Imagem_produto_Abridor_Mobile.png',
      ),
      PromoProductModel(
        id: '8',
        name: 'Camisetas estagios',
        price: 38.00,
        imageUrl: 'assets/images/Cards_produtos/Cards_Home/Mobile/Imagem_produto_Camiseta_Mobile.png',
      ),
    ];
  }
}