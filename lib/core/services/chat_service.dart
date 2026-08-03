import 'package:flutter/material.dart';

import '../constants/dummy_data.dart';
import '../../models/message_model.dart';

class ChatService extends ChangeNotifier {
  final List<MessageModel> _messages = List.from(messages);

  List<MessageModel> getMessages() {
    return _messages;
  }

  void sendMessage(MessageModel message) {
    _messages.add(message);
    notifyListeners();
  }
}
