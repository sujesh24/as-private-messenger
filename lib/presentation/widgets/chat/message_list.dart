import 'package:flutter/material.dart';

import 'date_separator.dart';
import 'message_bubble.dart';

class MessageList extends StatelessWidget {
  const MessageList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.symmetric(vertical: 20),
      children: const [
        DateSeparator(text: "Today"),

        MessageBubble(message: "Hey 👋", time: "9:30 PM", isMe: false),

        MessageBubble(
          message: "Hii 😊",
          time: "9:31 PM",
          isMe: true,
          isRead: true,
        ),

        MessageBubble(
          message: "Finished today's drawing?",
          time: "9:32 PM",
          isMe: false,
        ),

        MessageBubble(
          message: "Almost! I'll send it in a bit 🎨",
          time: "9:33 PM",
          isMe: true,
          isRead: false,
        ),
      ],
    );
  }
}
