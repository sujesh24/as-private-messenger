import 'package:as_private_messenger/core/services/chat_service.dart';
import 'package:flutter_riverpod/legacy.dart';

final chatProvider = ChangeNotifierProvider<ChatService>((ref) {
  return ChatService();
});
