import 'package:as_private_messenger/core/services/firestore_service.dart';
import 'package:as_private_messenger/models/message_model.dart';
import 'package:flutter/material.dart';

class ChatService extends ChangeNotifier {
  final FirestoreService _firestoreService = FirestoreService();

  Stream<List<MessageModel>> getMessages() {
    return _firestoreService.getMessages();
  }

  Future<void> sendMessage({
    required String senderId,
    required String message,
  }) async {
    await _firestoreService.sendMessage(senderId: senderId, message: message);
  }
}
