import 'package:flutter/material.dart';

class Lakes extends StatefulWidget {
  const Lakes({Key? key});

  @override
  State<Lakes> createState() => _LakesState();
}

class _LakesState extends State<Lakes> {
  final List<String> lakeNames = [
    'Lake Victoria',
    'Lake Turkana',
    'Lake Nakuru',
    'Lake Naivasha',
    'Lake Baringo',
    'Lake Elementaita',
    'Lake Magadi',
    'Lake Jipe',
  ];

  final List<String> lakeDescriptions = [
    'Lake Victoria is the largest lake in Africa and the second-largest freshwater lake in the world.',
    'Lake Turkana is the largest desert lake in the world and known for its unique geological features.',
    'Lake Nakuru is a shallow alkaline lake famous for its large population of flamingos.',
    'Lake Naivasha is a freshwater lake known for its stunning beauty and diverse wildlife.',
    'Lake Baringo is a freshwater lake in the Great Rift Valley known for its birdlife and picturesque surroundings.',
    'Lake Elementaita is a soda lake in the Rift Valley known for its abundant birdlife and UNESCO World Heritage status.',
    'Lake Magadi is a shallow, saline lake known for its soda ash extraction and alkaline waters.',
    'Lake Jipe is a small freshwater lake located on the border of Kenya and Tanzania, known for its scenic beauty and bird species.',
  ];

  final List<String> lakeImages = [
    'assets/lake_victoria.jpg',
    'assets/lake_turkana.jpg',
    'assets/lake_nakuru.jpg',
    'assets/lake_naivasha.jpg',
    'assets/lake_baringo.jpg',
    'assets/lake_elementaita.jpg',
    'assets/lake_magadi.jpg',
    'assets/lake_jipe.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lakes'),
      ),
      body: ListView.builder(
        itemCount: lakeNames.length,
        itemBuilder: (BuildContext context, int index) {
          return Column(
            children: [
              SizedBox(height: 16),
              Text(
                lakeNames[index],
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              Container(
                alignment: Alignment.center,
                child: Image.asset(
                  lakeImages[index],
                  width: 200,
                  height: 200,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Text(
                  lakeDescriptions[index],
                  style: TextStyle(
                    fontStyle: FontStyle.italic,
                    color: Colors.grey[700],
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              const Divider(),
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
            for (int i = 0; i < lakeNames.length; i++)
              ListTile(
                title: Text(lakeNames[i]),
                subtitle: Text(lakeDescriptions[i]),
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
