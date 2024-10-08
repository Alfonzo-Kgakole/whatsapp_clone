import 'package:flutter/material.dart';
import 'package:whatsapp/color.dart';
import 'package:whatsapp/widgets/chatList.dart';
import 'package:whatsapp/widgets/contactList.dart';
import 'package:whatsapp/widgets/webCahtApp.dart';
import 'package:whatsapp/widgets/webSearch.dart';
import 'package:whatsapp/widgets/web_profile.dart';

class Webscreenlayout extends StatelessWidget {
  const Webscreenlayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  //web profile bar
                  WebProfile(),
                  // web search bar 
                  Websearch(),

                  Contactlist()
                ],
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width*0.75,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/backgroundImage.png"),
                fit: BoxFit.cover
              )
            ),
            child:  Column(
              children: [
                // chat app bar
                const Webcahtapp(),
                // chat list
                const Expanded(
                  child: Chatlist(),
                ),
                // message input box
                Container(
                  height: MediaQuery.of(context).size.width*0.04,
                  padding: const EdgeInsets.all(10),
                  decoration: const BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        color: dividerColor
                      ),

                    ),
                    color: chatBarMessage,
                  ),
                  child: Row(
                    children: [
                      IconButton(onPressed: (){}, icon: const Icon(Icons.emoji_emotions_outlined, color: Colors.grey,)),
                      IconButton(onPressed: (){}, icon: const Icon(Icons.attach_file, color: Colors.grey,)),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10, right: 15),
                          child: TextField(
                            decoration: InputDecoration(
                              fillColor: searchBarColor,
                              filled: true,
                              hintText: "type a message",
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide: const BorderSide(
                                  width: 0,
                                  style: BorderStyle.none
                                )
                              ),
                              contentPadding: const EdgeInsets.only(left: 20)
                            ),
                          )
                        ),
                      ),
                      IconButton(onPressed: (){}, icon: const Icon(Icons.mic, color: Colors.grey,)),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
