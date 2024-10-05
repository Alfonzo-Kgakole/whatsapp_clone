import 'package:flutter/material.dart';
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
            child: Column(
              children: [
                // chat app bar
                Webcahtapp(),
                // chat list
                // message input box
              ],
            ),
          )
        ],
      ),
    );
  }
}
