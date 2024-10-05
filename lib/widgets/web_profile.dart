import 'package:flutter/material.dart';
import 'package:whatsapp/color.dart';

class WebProfile extends StatelessWidget {
  const WebProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height*0.077,
      width: MediaQuery.of(context).size.width*0.25,
      padding: const EdgeInsets.all(10),
      decoration: const BoxDecoration(
        border: Border(
          right: BorderSide(
            color: dividerColor
          )
        )
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,  
        children: [
          const CircleAvatar(
            backgroundImage: NetworkImage(
              "https://images.unsplash.com/photo-1542379653-b928db1b4956?q=80&w=387&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
            ),
            radius: 20,
          ),
          Row(
            children: [
              IconButton(onPressed: (){}, icon: const Icon(Icons.comment, color: Colors.grey,)),
              IconButton(onPressed: (){}, icon: const Icon(Icons.more_vert, color: Colors.grey,)),
            ],
          ),
        ],
      ),
    );
  }
}