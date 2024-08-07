class ProductCategoryModel {
  final String productId;
  final String categoryId;

  // Constructor for ProductCategoryModel
  ProductCategoryModel({
    required this.productId,
    required this.categoryId,
  });

  // Convert ProductCategoryModel to JSON
  Map<String, dynamic> toJson() {
    return {
      'productId': productId,
      'categoryId': categoryId,
    };
  }

  // Create ProductCategoryModel from JSON
  factory ProductCategoryModel.fromJson(Map<String, dynamic> json) {
    return ProductCategoryModel(
      productId: json['productId'],
      categoryId: json['categoryId'],
    );
  }
}
