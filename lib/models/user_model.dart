class UserModel {
  late int id;
  late String name;
  late String phone;
  late String address;
  late String city;
  late String roles;
  late String email;
  late String profilePhotoUrl;
  late String? token;

  UserModel({
    required this.id,
    required this.name,
    required this.phone,
    required this.address,
    required this.city,
    required this.roles,
    required this.email,
    required this.profilePhotoUrl,
    required this.token,
  });

  UserModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    phone = json['phone'];
    address = json['address'];
    city = json['city'];
    roles = json['roles'];
    email = json['email'];
    profilePhotoUrl = json['profile_photo_url'];
    token = json['token'];
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'phone': phone,
      'address': address,
      'city': city,
      'roles': roles,
      'email': email,
      'profile_photo_url': profilePhotoUrl,
      'token': token,
    };
  }
}
