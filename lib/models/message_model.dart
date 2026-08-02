class MessageModel {
  final String message;
  final String time;
  final bool isMe;
  final bool isRead;

  const MessageModel({
    required this.message,
    required this.time,
    required this.isMe,
    this.isRead = false,
  });
}
