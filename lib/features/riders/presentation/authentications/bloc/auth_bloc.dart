import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:equatable/equatable.dart';
import 'package:firebase_auth/firebase_auth.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final FirebaseAuth _firebaseAuth;
  final FirebaseFirestore _firestore;

  AuthBloc({
    required FirebaseAuth firebaseAuth,
    required FirebaseFirestore firestore,
  })  : _firebaseAuth = firebaseAuth,
        _firestore = firestore,
        super(AuthInitial()) {
    on<AuthEventStartEmailAuth>(_onStartEmailAuth);
    on<AuthEventLogin>(_onLogin);
  }

   Future<void> _onStartEmailAuth(
      AuthEventStartEmailAuth event, Emitter<AuthState> emit) async {
    emit(AuthStateEmailAuthInProgress());

    try {
       await _firebaseAuth.createUserWithEmailAndPassword(
        email: event.email,
        password: event.password,
      );

       await _createUserAccount(event);

      emit(AuthStateEmailAuthSuccess(
        uid: _firebaseAuth.currentUser!.uid,
        email: event.email,
        carNumber: event.carNumber,
        name: event.name,
        carBrand: event.carBrand,
        password: event.password,
        drivingLicenseImage: event.drivingLicenseImage,
        profileImage: event.profileImage,
      ));
    } catch (e) {
      emit(AuthStateEmailAuthFailure(e.toString()));
    }
  }

   Future<void> _onLogin(
      AuthEventLogin event, Emitter<AuthState> emit) async {
    emit(AuthStateEmailAuthInProgress());

    try {
       await _firebaseAuth.signInWithEmailAndPassword(
        email: event.email,
        password: event.password,
      );

      emit(AuthStateEmailAuthLoggedIn(
        uid: _firebaseAuth.currentUser!.uid,
        email: event.email,
      ));
    } catch (e) {
      emit(AuthStateEmailAuthFailure(e.toString()));
    }
  }

   Future<void> _createUserAccount(AuthEventStartEmailAuth event) async {
    try {
      final user = _firebaseAuth.currentUser;
      if (user == null) throw Exception('User not logged in');

      await _firestore.collection('users').doc(user.uid).set({
        'email': event.email,
        'password': event.password,
        'carNumber': event.carNumber,
        'name': event.name,
        'carBrand': event.carBrand,
        'drivingLicenseImage': event.drivingLicenseImage,
        'profileImage': event.profileImage,
      });
    } catch (e) {
      throw Exception('Error saving user data: $e');
    }
  }
}
