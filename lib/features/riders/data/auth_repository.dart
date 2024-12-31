import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:uber_clone/features/riders/domain/rider_model.dart';

class UserRepository {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<void> createUserWithEmailPassword(
      String email,
      String password,
      RiderModel rider,
      Function(String? userId) onSuccess,
      Function(String error) onError) async {
    try {
      UserCredential userCredential = await _firebaseAuth
          .createUserWithEmailAndPassword(email: email, password: password);

      await saveUserToFirestore(rider, userCredential.user?.uid);

      onSuccess(userCredential.user?.uid);
    } catch (e) {
      onError("Error creating user: $e");
    }
  }

  Future<void> signInWithEmailPassword(
      String email, String password, Function(String? userId) onSuccess, Function(String error) onError) async {
    try {
      UserCredential userCredential = await _firebaseAuth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      onSuccess(userCredential.user?.uid);
    } catch (e) {
      onError("Error signing in: $e");
    }
  }

  Future<void> saveUserToFirestore(RiderModel rider, String? uid) async {
    if (uid == null) throw Exception("User ID is null");

    try {
      await _firestore.collection('users').doc(uid).set(rider.toJson());
    } catch (e) {
      throw Exception("Error saving user data: $e");
    }
  }
}
