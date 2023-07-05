import 'package:pedikia/models/service_model.dart';

class OrderItemModel {
  int id;
  int userId;
  int serviceId;
  int transactionsId;
  int quantity;
  DateTime createdAt;
  DateTime updatedAt;
  ServiceModel service;

  OrderItemModel({
    this.id,
    this.userId,
    this.serviceId,
    this.transactionsId,
    this.quantity,
    this.createdAt,
    this.updatedAt,
    this.service,
  });

  OrderItemModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    userId = json['users_id'];
    serviceId = json['services_id'];
    transactionsId = json['transactions_id'];
    quantity = json['quantity'];
    createdAt = DateTime.parse(json['created_at']);
    updatedAt = DateTime.parse(json['updated_at']);
    service = ServiceModel.fromJson(json['service']);
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'users_id': userId,
      'services_id': serviceId,
      'transactions_id': transactionsId,
      'quantity': quantity,
      'created_at': createdAt.toString(),
      'updated_at': updatedAt.toString(),
      'service': service?.toJson(),
    };
  }
}
