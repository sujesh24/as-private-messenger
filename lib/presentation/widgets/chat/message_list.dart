import 'package:flutter/material.dart';

import '../../../services/chat_service.dart';
import 'date_separator.dart';
import 'message_bubble.dart';

class MessageList extends StatelessWidget {
  const MessageList({super.key});

  @override
  Widget build(BuildContext context) {
    final chatService = ChatService();
    final messages = chatService.getMessages();

    return ListView.builder(
      padding: const EdgeInsets.symmetric(vertical: 20),
      itemCount: messages.length + 1,
      itemBuilder: (context, index) {
        if (index == 0) {
          return const DateSeparator(text: "Today");
        }

        final message = messages[index - 1];

        return MessageBubble(
          message: message.message,
          time: message.time,
          isMe: message.isMe,
          isRead: message.isRead,
        );
      },
    );
  }
}
