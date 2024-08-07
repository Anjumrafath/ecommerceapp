import 'package:ecommerceapp/features/shop/models/cartmodel.dart';

enum OrderStatus {
  processing,
  shipped,
  delivered,
  canceled,
}

class OrderModel {
  final String id;
  final OrderStatus status;
  final List<CartItemModel> items;
  final double totalAmount;
  final DateTime orderDate;
  final DateTime deliveryDate;

  OrderModel({
    required this.id,
    required this.status,
    required this.items,
    required this.totalAmount,
    required this.orderDate,
    required this.deliveryDate,
  });
}
