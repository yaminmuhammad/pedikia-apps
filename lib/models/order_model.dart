import 'package:pedikia/models/order_item_model.dart';
import 'package:pedikia/models/user_model.dart';

class OrderModel {
  int id;
  int therapistId;
  int userId;
  String address;
  double totalPrice;
  double extraPrice;
  String status;
  String payment;
  DateTime createdAt;
  DateTime updatedAt;
  // List<OrderItemModel> items;
  // ItemModel item;

  OrderModel({
    this.id,
    this.therapistId,
    this.userId,
    this.address,
    this.totalPrice,
    this.extraPrice,
    this.status,
    this.payment,
    this.createdAt,
    this.updatedAt,
    // this.items,
  });

  OrderModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    therapistId = json['therapist_id'];
    userId = json['user_id'];
    address = json['address'];
    totalPrice = double.parse(json['total_price'].toString());
    extraPrice = double.parse(json['extra_price'].toString());
    status = json['status'];
    payment = json['payment'];
    createdAt = DateTime.parse(json['created_at']);
    updatedAt = DateTime.parse(json['updated_at']);
    // if (json['items'] != null) {
    //   items = json['items']
    //       .map<OrderItemModel>(
    //           (transactionItems) => OrderItemModel.fromJson(transactionItems))
    //       .toList();
    // } else {
    //   items = [];
    // }
    // if (json['items'] != null) {
    //   items = List<OrderItemModel>.from(
    //       json['items'].map((item) => OrderItemModel.fromJson(item)));
    // }
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
      // 'items':
      //     items.map((transactionItems) => transactionItems.toJson()).toList(),
    };
  }
}
