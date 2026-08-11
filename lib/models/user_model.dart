import 'package:cloud_firestore/cloud_firestore.dart';

class UserModel {
  final String id;
  final String username;
  final String password;
  final String profileImage;
  final bool isOnline;
  final Timestamp? lastSeen;

  const UserModel({
    required this.id,
    required this.username,
    required this.password,
    required this.profileImage,
    required this.isOnline,
    this.lastSeen,
  });
}
