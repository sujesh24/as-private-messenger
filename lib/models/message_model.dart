import 'package:cloud_firestore/cloud_firestore.dart';

class MessageModel {
  final String id;
  final String senderId;
  final String message;
  final Timestamp createdAt;
  final bool isRead;
  final String? imageUrl;

  const MessageModel({
    required this.id,
    required this.senderId,
    required this.message,
    required this.createdAt,
    this.isRead = false,
    this.imageUrl,
  });
}
