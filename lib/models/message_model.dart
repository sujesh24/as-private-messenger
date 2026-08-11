import 'package:cloud_firestore/cloud_firestore.dart';

class MessageModel {
  final String id;
  final String senderId;
  final String message;
  final String imageUrl;
  final Timestamp createdAt;
  final bool isRead;

  const MessageModel({
    required this.id,
    required this.senderId,
    required this.message,
    required this.imageUrl,
    required this.createdAt,
    required this.isRead,
  });

  factory MessageModel.fromFirestore(DocumentSnapshot doc) {
    final data = doc.data() as Map<String, dynamic>;

    return MessageModel(
      id: doc.id,
      senderId: data['senderId'] ?? '',
      message: data['message'] ?? '',
      imageUrl: data['imageUrl'] ?? '',
      createdAt: data['createdAt'] ?? Timestamp.now(),
      isRead: data['isRead'] ?? false,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'senderId': senderId,
      'message': message,
      'imageUrl': imageUrl,
      'createdAt': createdAt,
      'isRead': isRead,
    };
  }
}
