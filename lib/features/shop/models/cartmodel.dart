class CartModel {
  final String cartId;
  final List<CartItemModel> items;

  CartModel({
    required this.cartId,
    required this.items,
  });
}

class CartItemModel {
  final String productId;
  final String variationId;
  final int quantity;
  final String title;
  final String image;
  final String brandName;
  final double price;
  final Map<String, dynamic> selectedVariation;

  CartItemModel({
    required this.productId,
    required this.variationId,
    required this.quantity,
    required this.title,
    required this.image,
    required this.brandName,
    required this.price,
    required this.selectedVariation,
  });

  // Create CartItemModel from JSON
  factory CartItemModel.fromJson(Map<String, dynamic> json) {
    return CartItemModel(
      productId: json['productId'],
      variationId: json['variationId'],
      quantity: json['quantity'],
      title: json['title'],
      image: json['image'],
      brandName: json['brandName'],
      price: json['price'],
      selectedVariation: Map<String, dynamic>.from(json['selectedVariation']),
    );
  }
}
