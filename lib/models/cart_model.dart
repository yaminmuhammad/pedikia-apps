import 'package:pedikia/models/service_model.dart';

class CartModel {
  int id;
  ServiceModel service;
  int quantity;

  CartModel({
    this.id,
    this.service,
    this.quantity,
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
    return service.price * quantity;
  }
}
