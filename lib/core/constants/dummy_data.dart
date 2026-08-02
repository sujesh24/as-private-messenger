import '../../models/message_model.dart';
import '../../models/user_model.dart';

const UserModel currentUser = UserModel(
  username: "Snow",
  profileImage: "",
  isOnline: true,
);

const UserModel otherUser = UserModel(
  username: "Abisha",
  profileImage: "",
  isOnline: true,
);

const List<MessageModel> messages = [
  MessageModel(message: "Hey 👋", time: "9:30 PM", isMe: false),

  MessageModel(message: "Hii 😊", time: "9:31 PM", isMe: true, isRead: true),

  MessageModel(
    message: "Finished today's drawing?",
    time: "9:32 PM",
    isMe: false,
  ),

  MessageModel(
    message: "Almost! I'll send it in a bit 🎨",
    time: "9:33 PM",
    isMe: true,
    isRead: false,
  ),
];
