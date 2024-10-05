import 'package:flutter/material.dart';
import 'package:whatsapp/color.dart';
import 'package:whatsapp/info.dart';

class Webcahtapp extends StatelessWidget {
  const Webcahtapp({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height*0.077,
      width: MediaQuery.of(context).size.width*0.75,
      padding: const EdgeInsets.all(10),
      color: webAppBarColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              const CircleAvatar(
                backgroundImage: NetworkImage(
                  "https://images.unsplash.com/photo-1542379653-b928db1b4956?q=80&w=387&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
                ),
                radius: 30,
              ),
              SizedBox(width: MediaQuery.of(context).size.width*0.01),
              Text(info[0]['name'].toString(), style: const TextStyle(fontSize: 30),)
            ],
          ),
         Row(
          children: [
            IconButton(onPressed: (){}, icon: const Icon(Icons.search, color: Colors.grey,)),
            IconButton(onPressed: (){}, icon: const Icon(Icons.more_vert, color: Colors.grey,)),
          ],
         )
        ],
      ),
    );
  }
}