class ProductVariationModel {
  final String id;
  final int stock;
  final double price;
  final String image;
  final String description;
  final Map<String, dynamic> attributeValues;

  ProductVariationModel({
    required this.id,
    required this.stock,
    required this.price,
    required this.image,
    required this.description,
    required this.attributeValues,
  });

  // Factory constructor to create an instance from JSON
  factory ProductVariationModel.fromJson(Map<String, dynamic> json) {
    return ProductVariationModel(
      id: json['id'] as String,
      stock: json['stock'] as int,
      price: (json['price'] as num).toDouble(),
      image: json['image'] as String,
      description: json['description'] as String,
      attributeValues: Map<String, dynamic>.from(json['attributeValues']),
    );
  }

  // Method to convert an instance to JSON
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'stock': stock,
      'price': price,
      'image': image,
      'description': description,
      'attributeValues': attributeValues,
    };
  }
}
