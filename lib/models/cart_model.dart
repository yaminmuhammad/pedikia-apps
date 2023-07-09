import 'package:pedikia/models/service_model.dart';

class CartModel {
  late int id;
  late ServiceModel service;
  late int quantity;

  CartModel({
    required this.id,
    required this.service,
    required this.quantity,
  });

  CartModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    service = ServiceModel.fromJson(json['service']);
    quantity = json['quantity'];
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'service': service.toJson(),
      'quantity': quantity,
    };
  }

  double getTotalPrice() {
    return service.price! * quantity;
  }
}
