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
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(onPressed: () {}, child: Icon(Icons.edit)),
          FloatingActionButton(
            onPressed: () {},
            child: Icon(Icons.camera_alt),
            backgroundColor: Colors.green,
            foregroundColor: Colors.white,
          ),
        ],
      ),

      body: Column(crossAxisAlignment: .start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 150,
                width: 100,
                child: Card(
                  color: Colors.grey,
                  child: Stack(
                    children: [
                      CircleAvatar(radius: 20,
                        child: Icon(Icons.circle),
                        backgroundColor: Colors.grey,
                      ),
                      Positioned(left: 15,top: 10,
                        child: CircleAvatar(
                          radius: 10,
                          child: Icon(
                            Icons.add,
                            size: 6,color: Colors.white,
                          ),
                          backgroundColor: Colors.green,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 150,width: 100,child:Card(color: Colors.grey,child: Stack(children: [CircleAvatar(backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTsHnU5BAE_3Xku1OIFc_6QT1UnYYFb86Mjm_8VGoN-eA&s=10"),)],),) ,),
             
            ],
          ), 
          
          Text(
                  "Status",
                  style: TextStyle(fontSize: 20,color: Colors.green ),

              ),
        ],
      ),
    );
  }
}
