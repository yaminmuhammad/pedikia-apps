import 'package:pedikia/models/service_model.dart';

class OrderItemModel {
  late int id;
  late int userId;
  late int serviceId;
  late int transactionsId;
  late int quantity;
  late DateTime createdAt;
  late DateTime updatedAt;
  late ServiceModel service;

  OrderItemModel({
    required this.id,
    required this.userId,
    required this.serviceId,
    required this.transactionsId,
    required this.quantity,
    required this.createdAt,
    required this.updatedAt,
    required this.service,
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
      'service': service.toJson(),
    };
  }
}
