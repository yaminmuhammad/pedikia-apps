import 'package:pedikia_id/models/order_item_model.dart';
import 'package:pedikia_id/models/user_model.dart';

class OrderModel {
  late int id;
  late int therapistId;
  late int userId;
  late String address;
  late double totalPrice;
  late double extraPrice;
  late String status;
  late String payment;
  late DateTime createdAt;
  late DateTime updatedAt;
  // List<OrderItemModel> items;
  // ItemModel item;

  OrderModel({
    required this.id,
    required this.therapistId,
    required this.userId,
    required this.address,
    required this.totalPrice,
    required this.extraPrice,
    required this.status,
    required this.payment,
    required this.createdAt,
    required this.updatedAt,
    // this.items,
  });

  OrderModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    // therapistId = json['therapist_id'];
    therapistId = int.parse(json['therapist_id'].toString());
    // userId = json['user_id'];
    userId = int.parse(json['user_id'].toString());
    address = json['address'];
    totalPrice = double.parse(json['total_price'].toString());
    extraPrice = double.parse(json['extra_price'].toString());
    status = json['status'];
    payment = json['payment'];
    createdAt = DateTime.parse(json['created_at']);
    updatedAt = DateTime.parse(json['updated_at']);
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'therapist_id': therapistId,
      'user_id': userId,
      'address': address,
      'total_price': totalPrice,
      'extra_price': extraPrice,
      'status': status,
      'payment': payment,
      'created_at': createdAt.toString(),
      'updated_at': updatedAt.toString(),
    };
  }
}
