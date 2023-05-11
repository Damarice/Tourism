import 'package:flutter/material.dart';

class SportsGrounds extends StatefulWidget {
  const SportsGrounds({Key? key});

  @override
  State<SportsGrounds> createState() => _SportsGroundsState();
}

class _SportsGroundsState extends State<SportsGrounds> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sports Grounds'),
      ),
      body: Center(
        child: Text(
          'Welcome to Our Sports Grounds',
          style: TextStyle(fontSize: 24),
        ),
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
                color: Colors.blue,
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
