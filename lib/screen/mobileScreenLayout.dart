import 'package:flutter/material.dart';
import 'package:whatsapp/color.dart';
import 'package:whatsapp/widgets/contactList.dart';

class Mobilescreenlayout extends StatelessWidget {
  const Mobilescreenlayout({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: appBarColor,
            elevation: 0,
        title: const Text(
          "WhatsApp",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold
          ),
        ),
        actions: [
          IconButton(
            onPressed: (){},
            icon: const Icon(Icons.search, color: Colors.grey,),
          ),
          IconButton(
            onPressed: (){},
            icon: const Icon(Icons.more_vert, color: Colors.grey,),
          )
        ],
        bottom: const TabBar(
          indicatorColor: tabColor,
          indicatorWeight: 5,
          labelColor: tabColor,
          unselectedLabelColor: Colors.grey,
          labelStyle: TextStyle(
            fontWeight: FontWeight.bold
          ),
          tabs: [
            Tab(text: "CHAT",),
            Tab(text: "STATUS",),
            Tab(text: "CALLS",),
          ],
        ),
      ),
      body: const Contactlist(),
      ),
    );
  }
}
