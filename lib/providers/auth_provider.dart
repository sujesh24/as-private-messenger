import 'package:cloud_firestore/cloud_firestore.dart';

class AuthService {
  final FirebaseFirestore _db = FirebaseFirestore.instance;

  Future<DocumentSnapshot?> login({
    required String username,
    required String password,
  }) async {
    final result = await _db
        .collection('users')
        .where('username', isEqualTo: username)
        .limit(1)
        .get();

    if (result.docs.isEmpty) return null;

    final user = result.docs.first;

    if (user['password'] != password) {
      return null;
    }

    return user;
  }
}
