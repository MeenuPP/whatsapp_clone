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
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.green,
          ),
        ),
        actions: [
          Icon(Icons.currency_rupee_sharp),
          SizedBox(width: 5),
          Icon(Icons.camera_alt_outlined),

          PopupMenuButton(
            itemBuilder: (context) => [
              PopupMenuItem(child: Text("New group")),
              PopupMenuItem(child: Text("New community")),
              PopupMenuItem(child: Text("Broadcast Lists")),
              PopupMenuItem(child: Text("Linked devices")),
              PopupMenuItem(child: Text("Starred")),
              PopupMenuItem(child: Text("Payments")),
              PopupMenuItem(child: Text("Read all")),
              PopupMenuItem(child: Text("Settings")),
            ],
          ),
        ],
      ),
      floatingActionButton: Column(mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {},
            child: Image(
              image: NetworkImage(
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQWmR2IawvXafShmZA1x5n1CvcJ_cnF0NzU96x0lfl7Cw&s=10",
              ),
            ),
          ),
          FloatingActionButton(
            onPressed: () {},

            child: Icon(Icons.message),
            backgroundColor: Colors.green,
            foregroundColor: Colors.white,
          ),
        ],
      ),
      body: ListView(
        children: [
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(40)),
              ),
              prefixIcon: Icon(Icons.search),
              hintText: "Ask Meta AI or Search",
            ),
          ),SingleChildScrollView(scrollDirection: Axis.horizontal,child: 
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(15),
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text("All"),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.grey,
                  ),
                ),
              ), Padding(
                padding: const EdgeInsets.all(15),
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text("Unread 99+"),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.grey,
                  ),
                ),
              ), Padding(
                padding: const EdgeInsets.all(15),
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text("Favourites"),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.grey,
                  ),
                ),
              ), Padding(
                padding: const EdgeInsets.all(15),
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text("Groups 45"),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.grey,
                  ),
                ),
              ), Padding(
                padding: const EdgeInsets.all(15),
                child: ElevatedButton(
                  onPressed: () {},
                  child: Icon(Icons.add),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.grey,
                  ),
                )
              ),
            ],
          ),),
          ListTile(
            leading: CircleAvatar(
              radius: 40,
              backgroundImage: NetworkImage(
                "data:image/jpeg;base64,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",
              ),
            ),
            title: Text("amma"),
            subtitle: Text("tea?"),
            trailing: Text("10:00"),
          ),
          ListTile(
            leading: CircleAvatar(
              radius: 40,
              backgroundImage: NetworkImage(
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTsHnU5BAE_3Xku1OIFc_6QT1UnYYFb86Mjm_8VGoN-eA&s=10",
              ),
            ),
            title: Text("ettan"),
            subtitle: Text("food?"),
            trailing: Text("11:00"),
          ),
          ListTile(
            leading: CircleAvatar(
              radius: 40,
              backgroundImage: NetworkImage(
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSUqD57p9d_iNXYdqvfzSc96PNLc8jjdjU-FvoaSBct-w&s=10",
              ),
            ),
            title: Text("mony"),
            subtitle: Text("waassup"),
            trailing: Text("12:00"),
          ),
          ListTile(
            leading: CircleAvatar(
              radius: 40,
              backgroundImage: NetworkImage(
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSTJdzYMBpM4I-5lkB-3D6tuvogdMDGyx3DiQ&s",
              ),
            ),
            title: Text("appu"),
            subtitle: Text("hy"),
            trailing: Text("1:00"),
          ),
        ],
      ),
    );
  }
}
