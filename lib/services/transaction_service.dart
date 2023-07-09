import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:pedikia/models/cart_model.dart';

class TransactionService {
  String baseUrl = "https://testing.tanpabatasgroup.com/public/api";
  // String baseUrl = "http://10.0.2.2:8000/api";

  Future<bool> checkout(
    String token,
    String address,
    String city,
    List<CartModel> carts,
    double totalPrice,
  ) async {
    var url = '$baseUrl/checkout';
    var headers = {
      'Content-Type': 'application/json',
      'Authorization': token,
    };
    var body = jsonEncode(
      {
        "address": '$address, $city',
        "items": carts
            .map(
              (cart) => {
                "id": cart.service.id,
                "quantity": cart.quantity,
              },
            )
            .toList(),
        "status": "PENDING",
        "total_price": totalPrice,
        "extra_price": 0,
      },
    );

    var response = await http.post(
      Uri.parse(url),
      headers: headers,
      body: body,
    );
    print(response.body);

    if (response.statusCode == 200) {
      return true;
    } else {
      throw Exception('Gagal Melakukan Checkout');
    }
  }
}
