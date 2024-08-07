class BrandModel {
  final String id;
  final String image;
  final String name;
  final int productCount;
  final bool isFeatured;

  // Constructor for BrandModel
  BrandModel({
    required this.id,
    required this.image,
    required this.name,
    required this.productCount,
    required this.isFeatured,
  });

  // Convert BrandModel to JSON
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'image': image,
      'name': name,
      'productCount': productCount,
      'isFeatured': isFeatured,
    };
  }

  // Create BrandModel from JSON
  factory BrandModel.fromJson(Map<String, dynamic> json) {
    return BrandModel(
      id: json['id'],
      image: json['image'],
      name: json['name'],
      productCount: json['productCount'],
      isFeatured: json['isFeatured'],
    );
  }
}
