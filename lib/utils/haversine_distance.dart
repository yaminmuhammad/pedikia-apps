import 'dart:math';

class HaversineDistance {
  static const radiusBumi = 6371; // dalam satuan kilometer

  // fungsi rumus algoritma haversine
  static getDistance(double lat1, double lon1, double lat2, double lon2) {
    double dLat = _toRadians(lat2 - lat1); // hasil selisih latitude 1 dan latitude 2 diubah menjadi bentuk radian
    double dLon = _toRadians(lon2 - lon1); // hasil selisih longitude 1 dan longitude 2 diubah menjadi bentuk radian
    lat1 = _toRadians(lat1); // latitude 1 diubah ke dalam bentuk radian
    lat2 = _toRadians(lat2); // latitude 2 diubah ke dalam bentuk radian
    double a = pow(sin(dLat / 2), 2) + pow(sin(dLon / 2), 2) * cos(lat1) * cos(lat2); // nilai a sebagai hasil perhitungan yang akan digunakan dalam akar
    double c = 2 * atan2(sqrt(a), sqrt(1-a)); // perhitungan rumus haversine tanpa radius
    double result = radiusBumi * c; // hasil perhitungan rumus haversine dikalikan dengan radius bumi
    return result; // mengembalikan nilai hasil kalkulasi fungsi rumus algoritma haversine (jarak dua titik pada permukaan bumi)
  }

  // fungsi konversi dalam bentuk radian
  static double _toRadians(double derajat) {
    return derajat * pi / 180;
  }
}