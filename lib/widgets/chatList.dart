import 'package:flutter/material.dart';
import 'package:whatsapp/info.dart';
import 'package:whatsapp/widgets/my_message_card.dart';
import 'package:whatsapp/widgets/senderMessageCard.dart';

class Chatlist extends StatelessWidget {
  const Chatlist({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: messages.length,
      itemBuilder: (context, index) {
        if (messages[index]["isMe"] == true) {
          //my message -> card
          return MyMessageCard(
            message: messages[index]["text"].toString(),
            date: messages[index]['time'].toString(),
          );
        }

        // sender message card
        return Sendermessagecard(
            message: messages[index]["text"].toString(),
            date: messages[index]['time'].toString(),
          );
      },
    );
  }
}
