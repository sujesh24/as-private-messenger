import '../services/chat_service.dart';
import '../../models/message_model.dart';

class ChatController {
  final ChatService _chatService = ChatService();

  List<MessageModel> getMessages() {
    return _chatService.getMessages();
  }

  void sendMessage(MessageModel message) {
    _chatService.sendMessage(message);
  }
}
