import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreService {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Stream<QuerySnapshot> getMessages() {
    return _firestore.collection('messages').orderBy('createdAt').snapshots();
  }

  Future<void> sendMessage({
    required String senderId,
    required String message,
  }) async {
    await _firestore.collection('messages').add({
      'senderId': senderId,
      'message': message,
      'imageUrl': '',
      'createdAt': FieldValue.serverTimestamp(),
      'isRead': false,
    });
  }
}
