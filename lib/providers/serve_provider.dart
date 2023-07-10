import 'package:flutter/material.dart';
import 'package:pedikia_id/models/service_model.dart';
import 'package:pedikia_id/services/serve_service.dart';

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
