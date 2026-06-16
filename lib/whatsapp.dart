import 'package:flutter/material.dart';
import 'package:whatsapp_clone/calls.dart';
import 'package:whatsapp_clone/chat.dart';

import 'package:whatsapp_clone/communities.dart';
import 'package:whatsapp_clone/updates.dart';

class Whatsapp extends StatefulWidget {
  const Whatsapp({super.key});

  @override
  State<Whatsapp> createState() => _WhatsappState();
}

class _WhatsappState extends State<Whatsapp> {
  List<Widget> screens = [chats(), Updates(), Communities(),Calls()];

  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: screens[index],
      bottomNavigationBar: BottomNavigationBar(
        showUnselectedLabels: true,
        onTap: (value) {
          setState(() {
            index = value;
          });
        },
        currentIndex: index,
        selectedItemColor: Colors.teal,
        unselectedItemColor: Colors.blueGrey,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.chat), label: "Chats"),
          BottomNavigationBarItem(icon: Icon(Icons.update), label: "Updates"),
          BottomNavigationBarItem(
            icon: Icon(Icons.group),
            label: "Communities",
          ),
          BottomNavigationBarItem(icon: Icon(Icons.phone), label: "Calls"),
        ],
      ),
    );
  }
}