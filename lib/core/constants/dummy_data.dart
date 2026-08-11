import 'package:cloud_firestore/cloud_firestore.dart';

import '../../models/message_model.dart';
import '../../models/user_model.dart';

const UserModel currentUser = UserModel(
  id: "snow",
  username: "Snow",
  password: "",
  profileImage: "",
  isOnline: true,
);

const UserModel otherUser = UserModel(
  id: "abisha",
  username: "Abisha",
  password: "",
  profileImage: "",
  isOnline: true,
);

final List<MessageModel> messages = [
  MessageModel(
    id: "msg-1",
    senderId: otherUser.id,
    message: "Hey",
    createdAt: Timestamp.fromDate(DateTime(2026, 8, 11, 21, 30)),
    isRead: true,
  ),
  MessageModel(
    id: "msg-2",
    senderId: currentUser.id,
    message: "Hii",
    createdAt: Timestamp.fromDate(DateTime(2026, 8, 11, 21, 31)),
    isRead: true,
  ),
  MessageModel(
    id: "msg-3",
    senderId: otherUser.id,
    message: "Finished today's drawing?",
    createdAt: Timestamp.fromDate(DateTime(2026, 8, 11, 21, 32)),
    isRead: true,
  ),
  MessageModel(
    id: "msg-4",
    senderId: currentUser.id,
    message: "Almost! I'll send it in a bit.",
    createdAt: Timestamp.fromDate(DateTime(2026, 8, 11, 21, 33)),
    isRead: false,
  ),
];
