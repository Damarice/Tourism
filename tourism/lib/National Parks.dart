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
    {
      'name': 'Lake Nakuru National Park',
      'image': 'assets/images/lake_nakuru.jpg',
      'description':
          'Lake Nakuru National Park is situated in the Rift Valley region of Kenya and is famous for its large population of flamingos. The park is also home to numerous bird species, including pelicans and marabou storks, as well as other wildlife such as rhinos, lions, and zebras. Visitors can enjoy game drives, bird watching, and scenic views of the lake.'
    },
    {
      'name': 'Nairobi National Park',
      'image': 'assets/images/nairobi.jpg',
      'description':
          'Nairobi National Park is unique in that it is located just outside the bustling city of Nairobi. It offers a chance to see wildlife against the backdrop of a modern city skyline. The park is home to lions, giraffes, zebras, rhinos, and various bird species. Visitors can enjoy game drives, walking safaris, and a visit to the Nairobi Animal Orphanage.'
    },
    {
      'name': 'Mount Kenya National Park',
      'image': 'assets/images/mount_kenya.jpg',
      'description':
          'Mount Kenya National Park is located in central Kenya and is home to the second-highest mountain in Africa, Mount Kenya. The park offers diverse landscapes, including forests, moorlands, and glaciers. It is a paradise for hikers and climbers, with various routes available to summit the mountain. Wildlife such as elephants, buffalos, and monkeys can also be spotted in the park.'
    },
    {
      'name': 'Hell\'s Gate National Park',
      'image': 'assets/images/hells_gate.jpg',
      'description':
          'Hell\'s Gate National Park is located in the Rift Valley and is known for its unique geothermal features, including hot springs and towering cliffs. The park offers opportunities for hiking, biking, and rock climbing. It is the only national park in Kenya where visitors can explore on foot or by bicycle. Wildlife in the park includes zebras, giraffes, buffalos, and various bird species.'
    },
    {
      'name': 'Aberdare National Park',
      'image': 'assets/images/aberdare.jpg',
      'description':
          'Aberdare National Park is located in the central highlands of Kenya and is characterized by its rugged terrain and dense forests. The park is home to diverse wildlife, including elephants, buffalos, leopards, and various monkey species. Visitors can enjoy game drives, bird watching, fishing in mountain streams, and hiking to the beautiful Karuru Falls.'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('National Park'),
      ),
      body: ListView.builder(
        itemCount: nationalParks.length,
        itemBuilder: (context, index) {
          final park = nationalParks[index];
          return ListTile(
            leading: Image.asset(
              park['image'],
              width: 80,
              height: 80,
              fit: BoxFit.cover,
            ),
            title: Text(park['name']),
            subtitle: Text(park['description']),
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
