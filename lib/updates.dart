import 'package:flutter/material.dart';

class Updates extends StatelessWidget {
  const Updates({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          "Updates",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.green,
          ),
        ),
        actions: [
          Icon(Icons.search),
          SizedBox(width: 5),
          PopupMenuButton(
            itemBuilder: (context) => [
              PopupMenuItem(child: Text("Create channel")),
              PopupMenuItem(child: Text("Status privacy")),
              PopupMenuItem(child: Text("Starred")),
              PopupMenuItem(child: Text("Ad privacy")),
              PopupMenuItem(child: Text("Settings")),
            ],
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Text("Status",style: TextStyle(fontSize: 20,color: Colors.green),),
      ),
    );
  }
}
