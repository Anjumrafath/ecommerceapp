import 'package:ecommerceapp/features/shop/models/brandmodel.dart';
import 'package:ecommerceapp/features/shop/models/productattributemodel.dart';
import 'package:ecommerceapp/features/shop/models/productvariationmodel.dart';

class ProductModel {
  final String id;
  final String title;
  final String thumbnail;
  final bool isFeatured;
  final int stock;
  final double price;
  final String description;
  final BrandModel brand;
  final List<String> images;
  final double salePrice;
  final String sku;
  final String categoryId;
  final List<ProductAttributeModel> productAttributes;
  final List<ProductVariationModel> productVariations;
  final String productType;
  // Constructor for ProductModel
  ProductModel({
    required this.id,
    required this.title,
    required this.thumbnail,
    required this.isFeatured,
    required this.stock,
    required this.price,
    required this.description,
    required this.brand,
    required this.images,
    required this.salePrice,
    required this.sku,
    required this.categoryId,
    required this.productAttributes,
    required this.productVariations,
    required this.productType,
  });

  // Convert ProductModel to JSON
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'thumbnail': thumbnail,
      'isFeatured': isFeatured,
      'stock': stock,
      'price': price,
      'description': description,
      'brand': brand.toJson(),
      'images': images,
      'salePrice': salePrice,
      'sku': sku,
      'categoryId': categoryId,
      'productAttributes': productAttributes.map((e) => e.toJson()).toList(),
      'productVariations': productVariations.map((e) => e.toJson()).toList(),
    };
  }

  // Create ProductModel from JSON
  factory ProductModel.fromJson(Map<String, dynamic> json) {
    return ProductModel(
      id: json['id'],
      title: json['title'],
      thumbnail: json['thumbnail'],
      isFeatured: json['isFeatured'],
      stock: json['stock'],
      price: json['price'],
      description: json['description'],
      brand: BrandModel.fromJson(json['brand']),
      images: List<String>.from(json['images']),
      salePrice: json['salePrice'],
      sku: json['sku'],
      categoryId: json['categoryId'],
      productAttributes: (json['productAttributes'] as List)
          .map((e) => ProductAttributeModel.fromJson(e))
          .toList(),
      productVariations: (json['productVariations'] as List)
          .map((e) => ProductVariationModel.fromJson(e))
          .toList(),
      productType: '',
    );
  }
}
