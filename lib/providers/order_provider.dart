import 'package:flutter/material.dart';
import 'package:pedikia/models/order_model.dart';
import 'package:pedikia/services/order_service.dart';

class OrderProvider with ChangeNotifier {
  List<OrderModel> _orders = [];
  List<OrderModel> get orders => _orders;
  set orders(List<OrderModel> orders) {
    _orders = orders;
    notifyListeners();
  }

  Future<void> getTransactionSuccess(
      // String token,
      ) async {
    try {
      List<OrderModel> orders = await OrderService().getOrder(
          // token,
          );
      if (orders != null) {
        _orders = orders;
        notifyListeners();
      }
    } catch (e) {
      print(e);
      print('error connection! / transaction provider');
    }
  }
}
