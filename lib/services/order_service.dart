import 'dart:convert';

import 'package:pedikia/models/order_model.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

class OrderService {
  String baseUrl = "https://testing.tanpabatasgroup.com/public/api";
  // String baseUrl = "http://10.0.2.2:8000/api";

  Future<List<OrderModel>> getOrder(
    String token,
  ) async {
    var url = "$baseUrl/transactions";

    // final sharedPreferences = await SharedPreferences.getInstance();
    // final token = sharedPreferences.getString('token');
    var headers = {
      "Content-Type": "application/json",
      'Authorization': token,
    };

    var response = await http.get(
      Uri.parse(url),
      headers: headers,
    );

    // print(response.body);
    if (response.statusCode == 200) {
      List data = jsonDecode(response.body)['data']['data'];
      List<OrderModel> orders = [];
      // print(response.body);
      for (var item in data) {
        // print(item);
        // print(data);
        orders.add(OrderModel.fromJson(item));
      }

      // return orders;
      // print(response.body);
      // print(orders);
      return orders;
    } else {
      throw Exception('Gagal Get Data Transaction ');
    }
  }
}
