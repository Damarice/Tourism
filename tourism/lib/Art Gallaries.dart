import 'package:flutter/material.dart';

class ArtGallaries extends StatefulWidget {
  const ArtGallaries({Key? key});

  @override
  State<ArtGallaries> createState() => _ArtGalleriesState();
}

class _ArtGalleriesState extends State<ArtGallaries> {
  // Define a list of art galleries with their details
  final List<Map<String, String>> artGalleries = [
    {
      'title': 'Nairobi Gallery',
      'image': 'assets/nairobi_gallery.jpg',
      'description':
          'Nairobi Gallery showcases contemporary and traditional Kenyan art.'
    },
    {
      'title': 'Circle Art Gallery',
      'image': 'assets/circle_art_gallery.jpg',
      'description':
          'Circle Art Gallery exhibits modern and contemporary African art.'
    },
    {
      'title': 'Banana Hill Art Gallery',
      'image': 'assets/banana_hill_art_gallery.jpg',
      'description':
          'Banana Hill Art Gallery exhibits a diverse range of contemporary African art.'
    },
    {
      'title': 'One Off Contemporary Art Gallery',
      'image': 'assets/one_off_contemporary_gallery.jpg',
      'description':
          'One Off Contemporary Art Gallery promotes contemporary African art.'
    },
    {
      'title': 'Red Hill Art Gallery',
      'image': 'assets/red_hill_art_gallery.jpg',
      'description':
          'Red Hill Art Gallery showcases a wide range of African art.'
    },
    {
      'title': 'Kuona Trust',
      'image': 'assets/kuona_trust.jpg',
      'description':
          'Kuona Trust is a center for contemporary art in East Africa.'
    },
    {
      'title': 'Polka Dot Art Gallery',
      'image': 'assets/polka_dot_art_gallery.jpg',
      'description':
          'Polka Dot Art Gallery displays contemporary African art.'
    },
    {
      'title': 'Shifteye Gallery',
      'image': 'assets/shifteye_gallery.jpg',
      'description':
          'Shifteye Gallery exhibits contemporary photography and digital art.'
    },
    {
      'title': 'Nairobi National Museum',
      'image': 'assets/nairobi_national_museum.jpg',
      'description':
          'Nairobi National Museum showcases traditional and contemporary Kenyan art.'
    },
    {
      'title': 'Paa Ya Paa Art Centre',
      'image': 'assets/paa_ya_paa_art_centre.jpg',
      'description':
          'Paa Ya Paa Art Centre is one of the oldest art institutions in Kenya.'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Art Galleries'),
      ),
      body: ListView.builder(
        itemCount: artGalleries.length,
        itemBuilder: (context, index) {
          final gallery = artGalleries[index];
          return GestureDetector(
            onTap: () {
              // Handle gallery selection
            },
            child: Card(
              child: Column(
                children: [
                  Image.asset(
                    gallery['image']!,
                    fit: BoxFit.cover,
                  ),
                  const SizedBox(height: 8),
                  Text(
                    gallery['title']!,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Text(
                      gallery['description']!,
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const SizedBox(height: 16),
                ],
              ),
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
