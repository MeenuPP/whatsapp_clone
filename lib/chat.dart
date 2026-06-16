import 'package:flutter/material.dart';

class chats extends StatelessWidget {
  const chats({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          "Whatsapp",
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.green,
          ),
        ),actions: [Icon(Icons.currency_rupee_sharp),SizedBox(width: 5),
          Icon(Icons.camera_alt_outlined),
        
          PopupMenuButton(itemBuilder: (context) =>[
         PopupMenuItem(child: Text("New group")),
        PopupMenuItem(child: Text("New community")),
        PopupMenuItem(child: Text("Broadcast Lists")),
        PopupMenuItem(child: Text("Linked devices")),
        PopupMenuItem(child: Text("Starred")),
        PopupMenuItem(child: Text("Payments")),
        PopupMenuItem(child: Text("Read all")),
        PopupMenuItem(child: Text("Settings")),
        PopupMenuItem(child: Text("Switch account")),
        ] )],
        
      ),
    );
  }
}
