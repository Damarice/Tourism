import 'package:flutter/material.dart';

class NationalPark extends StatelessWidget {
  const NationalPark({Key? key}) : super(key: key);

  final List<Map<String, dynamic>> nationalParks = const [
    // National Park data...
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('National Park'),
      ),
      body: ListView.builder(
        itemCount: nationalParks.length,
        itemBuilder: (BuildContext context, int index) {
          final park = nationalParks[index];
          return Card(
            child: Column(
              children: [
                Image.asset(
                  park['image'],
                  fit: BoxFit.cover,
                ),
                ListTile(
                  title: Text(park['name']),
                  subtitle: Text(park['description']),
                ),
              ],
            ),
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

void main() {
  runApp(MaterialApp(
    home: NationalPark(),
  ));
}
