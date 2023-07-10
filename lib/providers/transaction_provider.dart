import 'package:flutter/material.dart';
import 'package:pedikia_id/models/cart_model.dart';
import 'package:pedikia_id/services/transaction_service.dart';

class TransactionProvider with ChangeNotifier {
  Future<bool> checkout(String token, String address, String city,
      List<CartModel> carts, double totalPrice) async {
    try {
      if (await TransactionService()
          .checkout(token, address, city, carts, totalPrice)) {
        return true;
      } else {
        return false;
      }
    } catch (e) {
      print(e);
      return false;
    }
  }
}
