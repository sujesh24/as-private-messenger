import 'package:cloud_firestore/cloud_firestore.dart';

import '../../models/message_model.dart';

class FirestoreService {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Stream<List<MessageModel>> getMessages() {
    return _firestore
        .collection('messages')
        .orderBy('createdAt')
        .snapshots()
        .map(
          (snapshot) => snapshot.docs
              .map((doc) => MessageModel.fromFirestore(doc))
              .toList(),
        );
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
