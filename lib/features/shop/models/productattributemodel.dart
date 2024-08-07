class ProductAttributeModel {
  final String name;
  final List<String> values;

  // Constructor for ProductAttributeModel
  ProductAttributeModel({
    required this.name,
    required this.values,
  });

  // Convert ProductAttributeModel to JSON
  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'values': values,
    };
  }

  // Create ProductAttributeModel from JSON
  factory ProductAttributeModel.fromJson(Map<String, dynamic> json) {
    return ProductAttributeModel(
      name: json['name'],
      values: List<String>.from(json['values']),
    );
  }
}
