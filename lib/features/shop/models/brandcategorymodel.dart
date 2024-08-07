class BrandCategoryModel {
  final String brandId;
  final String categoryId;

  // Constructor for BrandCategoryModel
  BrandCategoryModel({
    required this.brandId,
    required this.categoryId,
  });

  // Convert BrandCategoryModel to JSON
  Map<String, dynamic> toJson() {
    return {
      'brandId': brandId,
      'categoryId': categoryId,
    };
  }

  // Create BrandCategoryModel from JSON
  factory BrandCategoryModel.fromJson(Map<String, dynamic> json) {
    return BrandCategoryModel(
      brandId: json['brandId'],
      categoryId: json['categoryId'],
    );
  }
}
