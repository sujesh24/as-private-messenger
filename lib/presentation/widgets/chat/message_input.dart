import 'package:as_private_messenger/providers/chat_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/constants/app_colors.dart';

class MessageInput extends ConsumerStatefulWidget {
  const MessageInput({super.key});

  @override
  ConsumerState<MessageInput> createState() => _MessageInputState();
}

class _MessageInputState extends ConsumerState<MessageInput> {
  final TextEditingController _controller = TextEditingController();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  Future<void> sendMessage() async {
    final text = _controller.text.trim();

    if (text.isEmpty) return;

    await ref.read(chatProvider).sendMessage(senderId: "sujesh", message: text);

    _controller.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(18, 14, 18, 18),
      decoration: const BoxDecoration(
        color: AppColors.primaryCard,
        border: Border(top: BorderSide(color: AppColors.divider)),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Container(
              height: 58,
              padding: const EdgeInsets.symmetric(horizontal: 6),
              decoration: BoxDecoration(
                color: AppColors.secondaryCard,
                borderRadius: BorderRadius.circular(30),
                border: Border.all(color: AppColors.border, width: 1),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 46,
                    height: 46,
                    child: IconButton(
                      padding: EdgeInsets.zero,
                      splashRadius: 22,
                      onPressed: () {},
                      icon: const Icon(
                        Icons.emoji_emotions_outlined,
                        color: AppColors.secondaryText,
                        size: 23,
                      ),
                    ),
                  ),

                  Expanded(
                    child: SizedBox(
                      height: 46,
                      child: TextField(
                        controller: _controller,
                        minLines: 1,
                        maxLines: 1,
                        textAlignVertical: TextAlignVertical.center,
                        style: const TextStyle(
                          color: AppColors.primaryText,
                          fontSize: 15,
                        ),
                        decoration: const InputDecoration(
                          isDense: true,
                          filled: false,
                          fillColor: Colors.transparent,
                          hintText: "Type a message...",
                          hintStyle: TextStyle(
                            color: AppColors.secondaryText,
                            fontSize: 15,
                          ),
                          border: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          disabledBorder: InputBorder.none,
                          errorBorder: InputBorder.none,
                          focusedErrorBorder: InputBorder.none,
                          contentPadding: EdgeInsets.symmetric(vertical: 17),
                        ),
                        cursorColor: AppColors.myMessage,
                        onSubmitted: (_) => sendMessage(),
                      ),
                    ),
                  ),

                  SizedBox(
                    width: 46,
                    height: 46,
                    child: IconButton(
                      padding: EdgeInsets.zero,
                      splashRadius: 22,
                      onPressed: () {},
                      icon: const Icon(
                        Icons.attach_file_rounded,
                        color: AppColors.secondaryText,
                        size: 22,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          const SizedBox(width: 12),

          SizedBox(
            width: 58,
            height: 58,
            child: Material(
              color: Colors.transparent,
              child: InkWell(
                borderRadius: BorderRadius.circular(30),
                onTap: sendMessage,
                child: Ink(
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    gradient: LinearGradient(
                      colors: [
                        AppColors.myMessage,
                        AppColors.myMessageGradient,
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                  ),
                  child: const Icon(
                    Icons.send_rounded,
                    color: Colors.white,
                    size: 22,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
