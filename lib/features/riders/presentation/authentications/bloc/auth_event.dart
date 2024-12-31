part of 'auth_bloc.dart';

abstract class AuthEvent extends Equatable {
  const AuthEvent();

  @override
  List<Object?> get props => [];
}

class AuthEventStartEmailAuth extends AuthEvent {
  final String email;
  final String password;
  final String carNumber;
  final String name;
  final String carBrand;
  final String drivingLicenseImage;
  final String profileImage;

  const AuthEventStartEmailAuth({
    required this.email,
    required this.password,
    required this.carNumber,
    required this.name,
    required this.carBrand,
    required this.drivingLicenseImage,
    required this.profileImage,
  });

  @override
  List<Object?> get props => [
    email,
    password,
    carNumber,
    name,
    carBrand,
    drivingLicenseImage,
    profileImage,
  ];
}

class AuthEventVerifyEmailAuth extends AuthEvent {
  final String email;
  final String password;

  const AuthEventVerifyEmailAuth({
    required this.email,
    required this.password,
  });

  @override
  List<Object?> get props => [email, password];
}
class AuthEventLogin extends AuthEvent {
  final String email;
  final String password;

  const AuthEventLogin({
    required this.email,
    required this.password,
  });

  @override
  List<Object?> get props => [email, password];
}