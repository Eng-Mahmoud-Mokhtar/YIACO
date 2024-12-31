part of 'auth_bloc.dart';

abstract class AuthState extends Equatable {
  const AuthState();

  @override
  List<Object?> get props => [];
}

class AuthInitial extends AuthState {}

class AuthStateEmailAuthInProgress extends AuthState {}

class AuthStateEmailAuthSuccess extends AuthState {
  final String uid;
  final String email;
  final String carNumber;
  final String name;
  final String carBrand;
  final String password;
  final String drivingLicenseImage;
  final String profileImage;

  const AuthStateEmailAuthSuccess({
    required this.uid,
    required this.email,
    required this.carNumber,
    required this.name,
    required this.carBrand,
    required this.password,
    required this.drivingLicenseImage,
    required this.profileImage,
  });

  @override
  List<Object?> get props => [
    uid,
    email,
    carNumber,
    name,
    carBrand,
    password,
    drivingLicenseImage,
    profileImage,
  ];
}

class AuthStateEmailAuthFailure extends AuthState {
  final String error;

  const AuthStateEmailAuthFailure(this.error);

  @override
  List<Object?> get props => [error];
}
class AuthStateEmailAuthLoggedIn extends AuthState {
  final String uid;
  final String email;

  const AuthStateEmailAuthLoggedIn({
    required this.uid,
    required this.email,
  });

  @override
  List<Object?> get props => [uid, email];
}