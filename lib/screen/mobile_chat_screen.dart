import 'package:flutter/material.dart';
import 'package:whatsapp/color.dart';
import 'package:whatsapp/info.dart';
import 'package:whatsapp/widgets/chatList.dart';

class MobileChatScreen extends StatelessWidget {
  const MobileChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appBarColor,
        title: Text(info[0]['name'].toString()),
        actions: [
          IconButton(onPressed: (){}, icon: const Icon(Icons.video_call),),
          IconButton(onPressed: (){}, icon: const Icon(Icons.call),),
          IconButton(onPressed: (){}, icon: const Icon(Icons.more_vert),),
        ],
      ),
      body:  Column(
        
        children: [
        //chatlist
        const Expanded(
          child: Chatlist(),
        ),
        TextField(
          decoration:  InputDecoration(
            fillColor: mobileChatBoxColor,
            filled: true,
            prefixIcon: const Padding(
              padding:  EdgeInsets.symmetric(horizontal: 20),
              child: Icon(Icons.emoji_emotions, color: Colors.grey,),
            ),
            suffixIcon: const Padding(
              padding:  EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Icon(Icons.camera_alt, color: Colors.grey,),
                  Icon(Icons.attach_file, color: Colors.grey,),
                  Icon(Icons.money, color: Colors.grey,),
                ],
              ),
            ),
            hintText: "Type a message",
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: const  BorderSide(
                width: 0,
                style: BorderStyle.none
              )
            ),
            contentPadding: const EdgeInsets.all(10)
          ),
        )
        
        //text input

        ],
      ),
    );
  }
}