class UserModel {
  int id;
  String name;
  String phone;
  String address;
  String city;
  String roles;
  String email;
  String profilePhotoUrl;
  String token;

  UserModel({
    this.id,
    this.name,
    this.phone,
    this.address,
    this.city,
    this.roles,
    this.email,
    this.profilePhotoUrl,
    this.token,
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
