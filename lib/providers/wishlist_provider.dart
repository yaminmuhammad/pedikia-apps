import 'package:flutter/material.dart';

import '../models/service_model.dart';

class WishlistProvider with ChangeNotifier {
  List<ServiceModel> _wishlist = [];

  List<ServiceModel> get wishlist => _wishlist;

  set wishlist(List<ServiceModel> wishlist) {
    _wishlist = wishlist;
    notifyListeners();
  }

  setService(ServiceModel service) {
    if (!isWishlist(service)) {
      _wishlist.add(service);
    } else {
      _wishlist.removeWhere((element) => element.id == service.id);
    }

    notifyListeners();
  }

  isWishlist(ServiceModel service) {
    if (_wishlist.indexWhere((element) => element.id == service.id) == -1) {
      return false;
    } else {
      return true;
    }
  }
}
