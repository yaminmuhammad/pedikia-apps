import 'package:flutter/material.dart';
import 'package:pedikia/models/service_model.dart';
import 'package:pedikia/services/serve_service.dart';

class ServeProvider with ChangeNotifier {
  List<ServiceModel> _services = [];

  List<ServiceModel> get services => _services;

  set services(List<ServiceModel> services) {
    _services = services;
    notifyListeners();
  }

  Future<void> getServices() async {
    try {
      List<ServiceModel> services = await ServeService().getServices();
      _services = services;
      // notifyListeners();
    } catch (e) {
      print(e);
    }
  }
}
