import 'package:flutter/material.dart';

class Landscapes extends StatefulWidget {
  const Landscapes({Key? key});

  @override
  State<Landscapes> createState() => _LandscapesState();
}

class _LandscapesState extends State<Landscapes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Landscapes'),
      ),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          Column(
            children: [
              Image.network(
                'image_url_1',
                height: 200,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
              const SizedBox(height: 16.0),
              Text(
                'Masai Mara National Reserve',
                style: TextStyle(fontSize: 20),
              ),
              const SizedBox(height: 8.0),
              Text(
                'Masai Mara National Reserve, located in southwestern Kenya, is renowned for its vast savannahs, iconic acacia trees, and an abundance of wildlife. It is particularly famous for the annual wildebeest migration.',
              ),
            ],
          ),
          const SizedBox(height: 24.0),
          Column(
            children: [
              Image.network(
                'image_url_2',
                height: 200,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
              const SizedBox(height: 16.0),
              Text(
                'Mount Kenya',
                style: TextStyle(fontSize: 20),
              ),
              const SizedBox(height: 8.0),
              Text(
                'Mount Kenya is the highest mountain in Kenya and the second-highest in Africa. It features beautiful peaks, glaciers, and a variety of flora and fauna. It is a UNESCO World Heritage Site.',
              ),
            ],
          ),
          const SizedBox(height: 24.0),
          Column(
            children: [
              Image.network(
                'image_url_3',
                height: 200,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
              const SizedBox(height: 16.0),
              Text(
                'Amboseli National Park',
                style: TextStyle(fontSize: 20),
              ),
              const SizedBox(height: 8.0),
              Text(
                'Amboseli National Park, situated in southern Kenya, offers stunning views of Mount Kilimanjaro, located across the border in Tanzania. It is known for its large herds of elephants and other wildlife.',
              ),
            ],
          ),
          const SizedBox(height: 24.0),
          Column(
            children: [
              Image.network(
                'image_url_4',
                height: 200,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
              const SizedBox(height: 16.0),
              Text(
                'Lake Nakuru',
                style: TextStyle(fontSize: 20),
              ),
              const SizedBox(height: 8.0),
              Text(
                'Lake Nakuru is a shallow soda lake located in the Great Rift Valley. It is famous for its vibrant pink flamingos, as well as being a sanctuary for rhinos and other wildlife.',
              ),
            ],
          ),
          const SizedBox(height: 24.0),
          Column(
            children: [
              Image.network(
                'image_url_5',
                height: 200,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
              const SizedBox(height: 16.0),
              Text(
                'Samburu National Reserve',
                style: TextStyle(fontSize: 20),
              ),
              const SizedBox(height: 8.0),
              Text(
                'Samburu National Reserve is located in northern Kenya and offers a unique and rugged landscape. It is home to several rare and endemic species, including the Grevy\'s zebra, Somali ostrich, and reticulated giraffe.',
              ),
            ],
          ),
          const SizedBox(height: 24.0),
          Column(
            children: [
              Image.network(
                'image_url_6',
                height: 200,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
              const SizedBox(height: 16.0),
              Text(
                'Tsavo National Park',
                style: TextStyle(fontSize: 20),
              ),
              const SizedBox(height: 8.0),
              Text(
                'Tsavo National Park is one of the largest national parks in Kenya, divided into Tsavo East and Tsavo West. It is known for its vast landscapes, diverse wildlife, and iconic landmarks like the red elephants of Tsavo.',
              ),
            ],
          ),
          const SizedBox(height: 24.0),
          Column(
            children: [
              Image.network(
                'image_url_7',
                height: 200,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
              const SizedBox(height: 16.0),
              Text(
                'Lamu Island',
                style: TextStyle(fontSize: 20),
              ),
              const SizedBox(height: 8.0),
              Text(
                'Lamu Island is a small island located in the Indian Ocean and is part of the Lamu Archipelago. It is known for its pristine beaches, ancient Swahili architecture, and rich cultural heritage.',
              ),
            ],
          ),
          const SizedBox(height: 24.0),
          Column(
            children: [
              Image.network(
                'image_url_8',
                height: 200,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
              const SizedBox(height: 16.0),
              Text(
                'Hell\'s Gate National Park',
                style: TextStyle(fontSize: 20),
              ),
              const SizedBox(height: 8.0),
              Text(
                'Hell\'s Gate National Park, located in the Great Rift Valley, is known for its dramatic cliffs, gorges, and geothermal activity. Visitors can explore the park on foot or by cycling through its stunning landscapes.',
              ),
            ],
          ),
          const SizedBox(height: 24.0),
          Column(
            children: [
              Image.network(
                'image_url_9',
                height: 200,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
              const SizedBox(height: 16.0),
              Text(
                'Mount Longonot',
                style: TextStyle(fontSize: 20),
              ),
              const SizedBox(height: 8.0),
              Text(
                'Mount Longonot is a dormant stratovolcano located in the Great Rift Valley. It offers adventurous hiking trails with panoramic views of the surrounding landscapes and the nearby Lake Naivasha.',
              ),
            ],
          ),
          const SizedBox(height: 24.0),
          Column(
            children: [
              Image.network(
                'image_url_10',
                height: 200,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
              const SizedBox(height: 16.0),
              Text(
                'Nairobi National Park',
                style: TextStyle(fontSize: 20),
              ),
              const SizedBox(height: 8.0),
              Text(
                'Nairobi National Park is unique as it is located just outside the bustling city of Nairobi. It offers a chance to see wildlife such as lions, giraffes, and zebras against the backdrop of Nairobi\'s skyline.',
              ),
            ],
          ),
        ],
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
