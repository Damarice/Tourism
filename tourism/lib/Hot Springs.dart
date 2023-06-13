import 'package:flutter/material.dart';

class HotSprings extends StatefulWidget {
  const HotSprings({Key? key});

  @override
  State<HotSprings> createState() => _HotSpringsState();
}

class _HotSpringsState extends State<HotSprings> {
  List<HotSpring> hotSprings = [
    HotSpring(
      title: 'Lake Bogoria Hot Springs',
      image: 'assets/lake_bogoria.jpg',
      description:
          'Located within Lake Bogoria National Reserve, these hot springs are famous for their geysers and hot water geothermal springs.',
    ),
    HotSpring(
      title: 'Olkaria Hot Springs',
      image: 'assets/olkaria.jpg',
      description:
          'Situated in the Olkaria Geothermal Spa area near Lake Naivasha, Olkaria Hot Springs offer natural hot water springs and steam jets.',
    ),
    HotSpring(
      title: 'Chania Falls Hot Springs',
      image: 'assets/chania_falls.jpg',
      description:
          'Located near Thika town in central Kenya, Chania Falls has natural hot springs and cascading waterfalls.',
    ),
    HotSpring(
      title: 'Mzima Springs',
      image: 'assets/mzima_springs.jpg',
      description:
          'Located in Tsavo West National Park, Mzima Springs is a series of natural springs with crystal-clear water that provides a habitat for hippos and crocodiles.',
    ),
    HotSpring(
      title: 'Fourteen Falls Hot Springs',
      image: 'assets/fourteen_falls.jpg',
      description:
          'Situated near Thika town, Fourteen Falls offers hot springs with beautiful waterfalls, making it a popular tourist attraction.',
    ),
    HotSpring(
      title: 'Chepkiit Waterfall Hot Springs',
      image: 'assets/chepkiit_waterfall.jpg',
      description:
          'Found near Nakuru town, Chepkiit Waterfall features hot springs that flow into a picturesque waterfall.',
    ),
    HotSpring(
      title: 'Lake Magadi Hot Springs',
      image: 'assets/lake_magadi.jpg',
      description:
          'Located in the southern part of Kenya, Lake Magadi is known for its hot springs and mineral-rich waters.',
    ),
    HotSpring(
      title: 'Korubo Hot Springs',
      image: 'assets/korubo.jpg',
      description:
          'Situated in Turkana County, Korubo Hot Springs offers natural hot springs along the shores of Lake Turkana.',
    ),
    HotSpring(
      title: 'Kitumbeine Hot Springs',
      image: 'assets/kitumbeine.jpg',
      description:
          'Located near Lake Natron (which borders Kenya and Tanzania), Kitumbeine Hot Springs are known for their therapeutic properties.',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hot Springs'),
      ),
      body: ListView.builder(
        itemCount: hotSprings.length,
        itemBuilder: (context, index) {
          return HotSpringCard(hotSpring: hotSprings[index]);
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

class HotSpring {
  final String title;
  final String image;
  final String description;

  HotSpring({
    required this.title,
    required this.image,
    required this.description,
  });
}

class HotSpringCard extends StatelessWidget {
  final HotSpring hotSpring;

  const HotSpringCard({required this.hotSpring});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Text(
            hotSpring.title,
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          Image.asset(
            hotSpring.image,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(hotSpring.description),
          ),
        ],
      ),
    );
  }
}
