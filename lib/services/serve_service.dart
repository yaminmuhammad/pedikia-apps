import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:pedikia/models/service_model.dart';

class ServeService {
  String baseUrl = "http://192.168.48.159:8001/api";

  Future<List<ServiceModel>> getServices() async {
    var url = "$baseUrl/services";
    var headers = {"Content-Type": "application/json"};

    var response = await http.get(url, headers: headers);

    print(response.body);

    if (response.statusCode == 200) {
      List data = jsonDecode(response.body)['data']['data'];
      List<ServiceModel> services = [];

      for (var item in data) {
        services.add(ServiceModel.fromJson(item));
      }

      return services;
    } else {
      throw Exception('Gagal Get Products!');
    }
  }
}
