import 'package:flutter/material.dart';
import 'package:pedikia/models/cart_model.dart';
import 'package:pedikia/models/service_model.dart';

class CartProvider with ChangeNotifier {
  List<CartModel> _carts = [];

  List<CartModel> get carts => _carts;

  set carts(List<CartModel> carts) {
    _carts = carts;
    notifyListeners();
  }

  addCart(ServiceModel service) {
    if (serviceExist(service)) {
      int index =
          _carts.indexWhere((element) => element.service.id == service.id);
      _carts[index].quantity++;
    } else {
      _carts.add(
        CartModel(
          id: _carts.length,
          service: service,
          quantity: 1,
        ),
      );
    }
    notifyListeners();
  }

  removeCart(int id) {
    _carts.removeAt(id);
    notifyListeners();
  }

  addQuantity(int id) {
    _carts[id].quantity++;
    notifyListeners();
  }

  reduceQuantity(int id) {
    _carts[id].quantity--;
    if (_carts[id].quantity == 0) {
      _carts.removeAt(id);
    }
    notifyListeners();
  }

  totalItems() {
    int total = 0;
    for (var item in _carts) {
      total += item.quantity;
    }
    return total;
  }

  totalPrice() {
    double total = 0;
    for (var item in _carts) {
      total += (item.quantity * item.service.price);
    }
    return total;
  }

  serviceExist(ServiceModel service) {
    if (_carts.indexWhere((element) => element.service.id == service.id) ==
        -1) {
      return false;
    } else {
      return true;
    }
  }
}
