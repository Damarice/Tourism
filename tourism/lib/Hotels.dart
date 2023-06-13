import 'package:flutter/material.dart';

class Hotels extends StatefulWidget {
  const Hotels({Key? key});

  @override
  State<Hotels> createState() => _HotelsState();
}

class _HotelsState extends State<Hotels> {
  final List<Map<String, dynamic>> hotels = [
    {
      'name': 'Giraffe Manor',
      'image': 'assets/images/giraffe_manor.jpg',
      'description':
          'Known for its unique experience of sharing breakfast with giraffes, Giraffe Manor offers luxurious accommodation and a close encounter with these magnificent animals.',
    },
    {
      'name': 'Fairmont Mount Kenya Safari Club',
      'image': 'assets/images/mount_kenya_safari_club.jpg',
      'description':
          'Set at the foothills of Mount Kenya, this exclusive resort offers breathtaking views, elegant rooms, and a range of outdoor activities, including golf and wildlife safaris.',
    },
    {
      'name': 'Hemingways Nairobi',
      'image': 'assets/images/hemingways_nairobi.jpg',
      'description':
          'A luxury boutique hotel with a blend of contemporary style and classic elegance. It offers spacious suites, gourmet dining options, and personalized services.',
    },
    {
      'name': 'Sarova Stanley',
      'image': 'assets/images/sarova_stanley.jpg',
      'description':
          'This historic hotel has been an iconic landmark since 1902. It combines Victorian charm with modern amenities, offering comfortable rooms, multiple dining options, and a rich history.',
    },
    {
      'name': 'Diani Reef Beach Resort & Spa',
      'image': 'assets/images/diani_reef.jpg',
      'description':
          'Situated on the beautiful Diani Beach, this resort offers a perfect blend of luxury, relaxation, and adventure. It features well-appointed rooms, a spa, multiple restaurants, and water sports activities.',
    },
    {
      'name': 'Tribe Hotel',
      'image': 'assets/images/tribe_hotel.jpg',
      'description':
          'A chic and contemporary hotel with stylish rooms and world-class facilities. Tribe Hotel is known for its unique African-inspired design, exceptional service, and culinary experiences.',
    },
    {
      'name': 'Maasai Mara Serena Safari Lodge',
      'image': 'assets/images/serena_safari_lodge.jpg',
      'description':
          'Nestled in the heart of the Maasai Mara, this lodge offers stunning views of the savannah and easy access to wildlife sightings. It provides comfortable accommodation in traditional Maasai-inspired style.',
    },
    {
      'name': 'Ol Tukai Lodge',
      'image': 'assets/images/ol_tukai_lodge.jpg',
      'description':
          'Located in Amboseli, this lodge offers panoramic views of Mount Kilimanjaro and abundant wildlife. It features spacious rooms, a swimming pool, and guided game drives.',
    },
    {
      'name': 'Villa Rosa Kempinski',
      'image': 'assets/images/villa_rosa_kempinski.jpg',
      'description':
          'A luxury hotel with elegant rooms, fine dining options, and a rooftop pool. It provides a blend of European luxury and Kenyan hospitality.',
    },
    {
      'name': 'Swahili Beach Resort',
      'image': 'assets/images/swahili_beach_resort.jpg',
      'description':
          'Situated on the white sands of Diani Beach, this resort offers a tropical paradise with luxurious rooms, a spa, multiple restaurants, and direct beach access.',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hotels'),
      ),
      body: ListView.builder(
        itemCount: hotels.length,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Text(
                  hotels[index]['name'],
                  style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10),
                Image.asset(
                  hotels[index]['image'],
                  width: 300,
                  height: 200,
                ),
                SizedBox(height: 10),
                Text(
                  hotels[index]['description'],
                  textAlign: TextAlign.center,
                  style: const TextStyle(fontSize: 16),
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
