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
      body: ListView(
        children: <Widget>[
          _buildSportsGround(
            'Moi International Sports Centre, Kasarani',
            'Multipurpose stadium and the largest sports complex in Kenya.',
            'https://example.com/image1.jpg',
          ),
          _buildSportsGround(
            'Nyayo National Stadium',
            'Major sports facility located in Nairobi.',
            'https://example.com/image2.jpg',
          ),
          _buildSportsGround(
            'Safaricom Stadium, Kasarani',
            'Football stadium within the Moi International Sports Centre complex.',
            'https://example.com/image3.jpg',
          ),
          _buildSportsGround(
            'Kasarani Training Grounds',
            'Adjacent to the Moi International Sports Centre, it serves as a practice facility for various sports.',
            'https://example.com/image3.jpg',
          ),
          _buildSportsGround(
            'Kasarani Aquatic Stadium',
            'Part of the Moi International Sports Centre, it hosts swimming and diving events.',
            'https://example.com/image3.jpg',
          ),
          _buildSportsGround(
            'Mombasa Sports Club Ground ',
            'A cricket ground in Mombasa, hosting local and international cricket matches.',
            'https://example.com/image3.jpg',
          ),
          _buildSportsGround(
            'Nairobi Railway Club',
            'Known for its rugby pitches and frequently used for rugby tournaments and matches.',
            'https://example.com/image3.jpg',
          ),
          _buildSportsGround(
            'Nakuru Athletic Club',
            'A popular sports facility in Nakuru, hosting rugby and athletics events.',
            'https://example.com/image3.jpg',
          ),
          _buildSportsGround(
            'Eldoret Sports Club ',
            ' Located in Eldoret, it hosts various sports activities, including rugby, cricket, and tennis.',
            'https://example.com/image3.jpg',
          ),
           _buildSportsGround(
            'Kakamega Showground',
            'Situated in Kakamega, it serves as a venue for football and athletics events.',
            'https://example.com/image3.jpg',
          ),
          // Add more sports grounds here...
        ],
      ),
    );
  }

  Widget _buildSportsGround(String name, String description, String imageUrl) {
    return Card(
      child: Column(
        children: [
          Image.network(
            imageUrl,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              name,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(description),
          ),
        ],
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: SportsGrounds(),
  ));
}
