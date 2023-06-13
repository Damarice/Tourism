import 'package:flutter/material.dart';

class Museum {
  final String name;
  final String description;
  final String imagePath;

  Museum({
    required this.name,
    required this.description,
    required this.imagePath,
  });
}

class Museums extends StatefulWidget {
  const Museums({Key? key});

  @override
  State<Museums> createState() => _MuseumsState();
}

class _MuseumsState extends State<Museums> {
  final List<Museum> museumsList = [
    Museum(
      name: 'National Museum of Kenya',
      description:
          'The National Museum of Kenya showcases Kenya\'s rich cultural and natural heritage, including archaeological and ethnographic exhibits.',
      imagePath: 'assets/images/national_museum.jpg',
    ),
    Museum(
      name: 'Nairobi National Museum',
      description:
          'The Nairobi National Museum focuses on Kenya\'s history, art, and culture. It is located within the National Museum of Kenya.',
      imagePath: 'assets/images/nairobi_museum.jpg',
    ),
    Museum(
      name: 'Karen Blixen Museum',
      description:
          'The Karen Blixen Museum is dedicated to the Danish author Karen Blixen, who wrote "Out of Africa." The museum is set in her former home.',
      imagePath: 'assets/images/karen_blixen_museum.jpg',
    ),
    Museum(
      name: 'Nairobi Railway Museum',
      description:
          'The Nairobi Railway Museum displays historical locomotives and carriages, showcasing Kenya\'s railway heritage.',
      imagePath: 'assets/images/nairobi_railway_museum.jpg',
    ),
    Museum(
      name: 'Lamu Museum',
      description:
          'The Lamu Museum highlights the Swahili culture and history of the Lamu Archipelago.',
      imagePath: 'assets/images/lamu_museum.jpg',
    ),
    Museum(
      name: 'Fort Jesus Museum',
      description:
          'The Fort Jesus Museum is a UNESCO World Heritage Site located in Mombasa. It showcases the history of Mombasa and the East African coast.',
      imagePath: 'assets/images/fort_jesus_museum.jpg',
    ),
    Museum(
      name: 'Gede Ruins Museum',
      description:
          'The Gede Ruins Museum exhibits the remains of an ancient Swahili town and offers insights into the region\'s history. It is located near Malindi.',
      imagePath: 'assets/images/gede_ruins_museum.jpg',
    ),
    Museum(
      name: 'Kitale Museum',
      description:
          'The Kitale Museum focuses on the culture and history of the Kalenjin people and displays archaeological artifacts. It is located in Kitale.',
      imagePath: 'assets/images/kitale_museum.jpg',
    ),
    Museum(
      name: 'Kisumu Museum',
      description:
          'The Kisumu Museum highlights the cultural heritage of the Luo community and exhibits traditional artifacts. It is located in Kisumu.',
      imagePath: 'assets/images/kisumu_museum.jpg',
    ),
    Museum(
      name: 'Meru Museum',
      description:
          'The Meru Museum showcases the cultural heritage of the Meru people and displays traditional artifacts. It is located in Meru.',
      imagePath: 'assets/images/meru_museum.jpg',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Museums'),
      ),
      body: ListView.builder(
        itemCount: museumsList.length,
        itemBuilder: (BuildContext context, int index) {
          Museum museum = museumsList[index];
          return Column(
            children: [
              Image.asset(
                museum.imagePath,
                width: 100,
                height: 100,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  museum.name,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(museum.description),
              ),
            ],
          );
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favorites',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: Museums(),
  ));
}
