import 'dart:html';

class RiderModel {
  String? name;
  String? carBrand;
  String? carNumber;
  String? email;
  String? password;
  File? drivingLicenseImage;
  File? profileImage;

  RiderModel(
      {this.password,
      this.profileImage,
      this.name,
      this.carBrand,
      this.carNumber,
      this.drivingLicenseImage,
      this.email});

  factory RiderModel.fromJson(Map<String, dynamic> json) {
    return RiderModel(
      name: json['fullname'],
      carBrand: json['carBrand'],
      drivingLicenseImage: json['drivingLicenseImage'],
      carNumber: json['carNumber'],
      email: json['phoneNumber'],
      profileImage: json['profileImage'],
      password: json['password'],
    );
  }
  Map<String, dynamic> toJson() => {
        "name": name,
        "carBrand": carBrand,
        "drivingLicenseImage": drivingLicenseImage,
        "carNumber": carNumber,
        "phoneNumber": email,
        "profileImage": profileImage,
        "password": password,
      };

  @override
  // TODO: implement props
  List<Object?> get props => [
        carBrand,
        name,
        drivingLicenseImage,
        carNumber,
        email,
        profileImage,
        password
      ];
  bool validate() {
    if (password == null || password!.length < 8) return false;

    return true;
  }
}
