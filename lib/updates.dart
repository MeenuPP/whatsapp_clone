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
            color: Colors.black,
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
        mainAxisAlignment: .end,
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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              SizedBox(
                height: 150,
                width: 100,
                child: Card(
                  color: const Color.fromARGB(255, 190, 179, 179),
                  child: Stack(
                    children: [
                      CircleAvatar(
                        backgroundColor: const Color.fromARGB(
                          255,
                          144,
                          152,
                          144,
                        ),
                      ),
                      Positioned(
                        left: 18,
                        top: 25,
                        child: CircleAvatar(
                          radius: 8,
                          child: Icon(Icons.add, color: Colors.white, size: 10),
                          backgroundColor: Colors.green,
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              SizedBox(
                height: 150,
                width: 100,
                child: Card(
                  color: const Color.fromARGB(255, 190, 179, 179),
                  child: Stack(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage(
                              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRFZRw61hmRNpox4YAfxdu0oeMisgYWg5vphFO_kZL3Ng&s=10",
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      CircleAvatar(
                        backgroundImage: NetworkImage(
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTsHnU5BAE_3Xku1OIFc_6QT1UnYYFb86Mjm_8VGoN-eA&s=10",
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 150,
                width: 100,
                child: Card(
                  color: const Color.fromARGB(255, 190, 179, 179),
                  child: Stack(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage(
                              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSVnJjnKNeLvtwfvYS_ySA_w9WpIa1hqSLNH3NBt_yi9g&s=10",
                            ),

                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      CircleAvatar(
                        backgroundImage: NetworkImage(
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSUqD57p9d_iNXYdqvfzSc96PNLc8jjdjU-FvoaSBct-w&s=10",
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),

          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text(
              "Status",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}