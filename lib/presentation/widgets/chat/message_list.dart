import 'package:as_private_messenger/providers/chat_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';

import 'date_separator.dart';
import 'message_bubble.dart';

class MessageList extends ConsumerStatefulWidget {
  const MessageList({super.key});

  @override
  ConsumerState<MessageList> createState() => _MessageListState();
}

class _MessageListState extends ConsumerState<MessageList> {
  final ScrollController _scrollController = ScrollController();

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: ref.watch(chatProvider).getMessages(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        }

        if (snapshot.hasError) {
          return Center(child: Text(snapshot.error.toString()));
        }

        final messages = snapshot.data ?? [];

        WidgetsBinding.instance.addPostFrameCallback((_) {
          if (_scrollController.hasClients) {
            _scrollController.animateTo(
              _scrollController.position.maxScrollExtent,
              duration: const Duration(milliseconds: 250),
              curve: Curves.easeOut,
            );
          }
        });

        if (messages.isEmpty) {
          return const Center(
            child: Text("No messages yet", style: TextStyle(fontSize: 16)),
          );
        }

        return ListView.builder(
          controller: _scrollController,
          padding: const EdgeInsets.symmetric(vertical: 20),
          itemCount: messages.length + 1,
          itemBuilder: (context, index) {
            if (index == 0) {
              return const DateSeparator(text: "Today");
            }

            final message = messages[index - 1];

            return MessageBubble(
              message: message.message,
              time: DateFormat.jm().format(message.createdAt.toDate()),
              isMe: message.senderId == "sujesh",
              isRead: message.isRead,
            );
          },
        );
      },
    );
  }
}
