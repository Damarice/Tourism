import 'package:flutter/material.dart';

class NationalPark extends StatelessWidget {
  const NationalPark({Key? key}) : super(key: key);

  final List<Map<String, dynamic>> nationalParks = const [
    {
      'name': 'Amboseli National Park',
      'image': 'assets/images/amboseli.jpg',
      'description':
          'Amboseli National Park is located in southern Kenya and is known for its breathtaking views of Mount Kilimanjaro. The park is home to a variety of wildlife, including elephants, lions, cheetahs, giraffes, and over 400 bird species. Visitors can enjoy game drives, guided nature walks, and cultural interactions with the Maasai people.'
    },
    {
      'name': 'Maasai Mara National Reserve',
      'image': 'assets/images/maasai_mara.jpg',
      'description':
          'Maasai Mara National Reserve is one of the most famous and popular wildlife destinations in Africa. It is located in southwestern Kenya and is known for its spectacular wildebeest migration, which takes place every year. The reserve is home to the "Big Five" (elephant, rhino, buffalo, lion, and leopard) and offers incredible opportunities for game drives, hot air balloon safaris, and cultural visits to Maasai villages.'
    },
    // Rest of the national parks...
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('National Park'),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        children: nationalParks.map((park) {
          return Card(
            child: Column(
              children: [
                Expanded(
                  child: Image.asset(
                    park['image'],
                    fit: BoxFit.cover,
                  ),
                ),
                ListTile(
                  title: Text(park['name']),
                  subtitle: Text(park['description']),
                ),
              ],
            ),
          );
        }).toList(),
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
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.green,
              ),
              child: Text(
                'Drawer Header',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              title: const Text('Item 1'),
              onTap: () {
                // Do something
              },
            ),
            ListTile(
              title: const Text('Item 2'),
              onTap: () {
                // Do something
              },
            ),
            ListTile(
              title: const Text('Item 3'),
              onTap: () {
                // Do something
              },
            ),
          ],
        ),
      ),
    );
  }
}
