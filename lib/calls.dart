import 'package:flutter/material.dart';

class Calls extends StatelessWidget {
  const Calls({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          "Calls",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.green,
          ),
        ),
        actions: [Icon(Icons.search),
          SizedBox(width: 5),
          PopupMenuButton(
            itemBuilder: (context) => [
              PopupMenuItem(child: Text("Clear call log")),
              PopupMenuItem(child: Text("Scheduled calls")),
              PopupMenuItem(child: Text("Settings")),],),]
      ),
    );
  }
}
