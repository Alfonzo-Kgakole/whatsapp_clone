import 'package:flutter/material.dart';
import 'package:whatsapp/color.dart';

class Websearch extends StatelessWidget {
  const Websearch({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height*0.08,
      width: MediaQuery.of(context).size.width*0.25,
      padding: const EdgeInsets.all(10),
      decoration:  const BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: dividerColor
          )
        )
      ),
      child:  TextField(
        decoration: InputDecoration(
          fillColor: searchBarColor,
          filled: true,
          prefixIcon:  const Padding(
            padding:  EdgeInsets.symmetric(horizontal: 20),
            child: Icon(Icons.search, color: Colors.grey),
          ),
          hintText: "Search or start new Chat",
          hintStyle: const TextStyle(fontSize: 14),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: const BorderSide(
              width: 0,
              style: BorderStyle.none
            )
          ),
          contentPadding: const EdgeInsets.all(15)
        )
      ),
    );
  }
}