import 'package:flutter/material.dart';

import '../../../core/constants/app_colors.dart';

class MessageInput extends StatelessWidget {
  const MessageInput({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(20, 14, 20, 20),
      decoration: const BoxDecoration(
        color: AppColors.primaryCard,
        border: Border(top: BorderSide(color: AppColors.divider)),
      ),
      child: Row(
        children: [
          Expanded(
            child: Container(
              height: 54,
              decoration: BoxDecoration(
                color: AppColors.secondaryCard,
                borderRadius: BorderRadius.circular(30),
              ),
              child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  contentPadding: const EdgeInsets.symmetric(vertical: 16),
                  hintText: "Type a message...",
                  prefixIcon: const Icon(Icons.emoji_emotions_outlined),
                  suffixIcon: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.attach_file_rounded),
                  ),
                ),
              ),
            ),
          ),

          const SizedBox(width: 12),

          Container(
            width: 54,
            height: 54,
            decoration: const BoxDecoration(
              color: AppColors.accent,
              shape: BoxShape.circle,
            ),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.send_rounded, color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
