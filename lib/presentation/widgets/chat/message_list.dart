import 'package:as_private_messenger/providers/chat_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'date_separator.dart';
import 'message_bubble.dart';

class MessageList extends ConsumerWidget {
  const MessageList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final messages = ref.watch(chatProvider).getMessages();

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
