import 'package:as_private_messenger/presentation/widgets/chat/chat_header.dart';
import 'package:as_private_messenger/presentation/widgets/chat/message_input.dart';
import 'package:as_private_messenger/presentation/widgets/chat/message_list.dart';
import 'package:as_private_messenger/presentation/widgets/chat/sidebar.dart';
import 'package:flutter/material.dart';

import '../../../core/constants/app_colors.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldBackground,

      body: SafeArea(
        child: Row(
          children: [
            // Sidebar
            const Sidebar(),

            VerticalDivider(width: 1, thickness: 1, color: AppColors.divider),

            // Chat Area
            Expanded(
              child: Column(
                children: [
                  const ChatHeader(),

                  const Expanded(child: MessageList()),

                  const MessageInput(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
