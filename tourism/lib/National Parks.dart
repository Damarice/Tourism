import 'package:flutter/material.dart';

class NationalPark extends StatelessWidget {
  const NationalPark({Key? key}) : super(key: key);

  final List<Map<String, dynamic>> nationalParks = const [
    // List of national parks (rearranged order)
    {
      'name': 'Nairobi National Park',
      'image': 'assets/Nairobi.jpg',
      'description':
          'Nairobi National Park is unique as it is located just outside the bustling city of Nairobi. It is one of the few national parks in the world with such proximity to a capital city. The park is known for its abundant wildlife, including lions, giraffes, zebras, and rhinos. Visitors can enjoy game drives, nature walks, and the Nairobi Safari Walk, which provides an educational experience.'
    },
    {
      'name': 'Amboseli National Park',
      'image': 'assets/images/Amboseli.jpg',
      'description':
          'Amboseli National Park is located in southern Kenya and is known for its breathtaking views of Mount Kilimanjaro.The park is home to a variety of wildlife, including elephants, lions, cheetahs, giraffes, and over 400 bird species. Visitors can enjoy game drives, guided nature walks, and cultural interactions with the Maasai people.'
    },
    {
      'name': 'Aberdare National Park',
      'image': 'assets/images/Aberdare.jpg',
      'description':
          'Aberdare National Park is situated in central Kenya, within the Aberdare Mountain Range.'
    },
    {
      'name': 'Arabuko Sokoke National Park',
      'image': 'assets/images/Arabuko.jpg',
      'description':
          'Arabuko Sokoke National Park is a unique coastal forest reserve located in the Kilifi County. It is the largest remaining section of coastal forest in East Africa and is renowned for its rich biodiversity. The park is a haven for birdwatchers, with over 260 bird species, and it is also home to the endangered Aders\' duiker and Sokoke scops owl.'
    },
     {
      'name': 'Central Island National Park',
      'image': 'assets/Central.jpg',
      'description':
          'Central Island National Park is situated in Lake Turkana, the largest desert lake in the world. The park consists of three active volcanic crater lakes and offers stunning landscapes and geological formations. It is a vital breeding ground for Nile crocodiles and serves as a sanctuary for a variety of bird species, including flamingos, pelicans, and cormorants.'
    },{
      'name': 'Chyulu Hills National Park',
      'image': 'assets/images/Chyulu.jpg',
      'description':
          'Chyulu Hills National Park is located between Amboseli and Tsavo National Parks. It is characterized by a range of ancient volcanic hills and extensive lava flows. The park is known for its diverse flora and fauna, including a wide variety of bird species, elephants, buffalos, and other wildlife. Visitors can enjoy scenic views, hiking trails, and cave exploration.'
    },
    {
      'name': 'Hell\'s Gate National Park',
      'image': 'assets/images/Hell.jpg',
      'description':
          'Hell\'s Gate National Park is a unique park known for its dramatic scenery, including towering cliffs, deep gorges, and geothermal features. Located in the Great Rift Valley, it offers opportunities for hiking, rock climbing, and cycling amidst wildlife such as zebras, gazelles, and baboons. The park also provides access to natural hot springs and the Olkaria Geothermal Power Station.'
    },
    {
      'name': 'Kakamega Forest National Reserve',
      'image': 'assets/images/Kakamega.jpg',
      'description':
          'Kakamega Forest National Reserve is the only tropical rainforest in Kenya and is situated in the western region of the country. It is home to a diverse array of flora and fauna, including over 400 bird species, primates, butterflies, and unique plant species. The forest offers nature trails, birdwatching, primate walks, and cultural experiences with the local Luhya community.'
    },
    {
      'name': 'Kisite-Mpunguti Marine National Park',
      'image': 'assets/images/Kisite.jpg',
      'description':
          'Kisite-Mpunguti Marine National Park is located in the coastal region near Shimoni. It comprises a series of coral islands, pristine beaches, and coral reefs teeming with marine life. The park is a popular spot for snorkeling, scuba diving, and boat excursions to observe dolphins, turtles, colorful fish, and the vibrant coral formations in the crystal-clear waters.'
    },
{
      'name': 'Lake Bogoria National Reserve',
      'image': 'assets/images/Bogoria.jpg',
      'description':
          'Lake Bogoria National Reserve is situated in the Great Rift Valley and is famous for its hot springs, geysers, and the large population of lesser flamingos that gather along the lake shores. The reserve offers beautiful landscapes, including the scenic views of the alkaline lake and the surrounding acacia woodlands. Visitors can also spot other wildlife such as zebras, gazelles, and buffalos.'
    },{
      'name': 'Lake Kanyaboli National Reserve',
      'image': 'assets/images/Kanyaboli.jpg',
      'description':
          'Lake Kanyaboli National Reserve is a small reserve located on the northeastern shore of Lake Victoria. It is known for its wetland ecosystems, which provide habitat for various bird species, including the rare and endangered papyrus gonolek. The reserve offers birdwatching, boat rides, and opportunities to observe local fishing activities and traditional Luo culture.'
    },{
      'name': 'Lake Nakuru National Park',
      'image': 'assets/images/Nakuru.jpg',
      'description':
          'Lake Nakuru National Park is located in the Great Rift Valley and is renowned for its vast population of pink flamingos that cover the lake. The park is also home to various wildlife species, including rhinos, lions, giraffes, and baboons. Visitors can enjoy game drives, birdwatching, and panoramic views from Baboon Cliff and Lion Hill.'
    },
    {
      'name': 'Meru National Park',
      'image': 'assets/images/Meru.jpg',
      'description':
          'Meru National Park is located in the eastern part of Kenya and offers a diverse range of landscapes, including grasslands, forests, and swamps. The park is famous for its rich wildlife, including elephants, lions, leopards, cheetahs, and over 400 bird species. Visitors can explore the park through game drives, guided walks, and enjoy views of the majestic Mount Kenya.'
    },
    {
      'name': 'Mount Elgon National Park',
      'image': 'assets/images/Elgon.jpg',
      'description':
          'Mount Elgon National Park is situated on the eastern side of the country, near the border with Uganda. It is home to Mount Elgon, an extinct volcano with the largest surface area of any extinct volcano in the world. The park offers opportunities for hiking, birdwatching, and cave exploration. Visitors can also enjoy stunning waterfalls and panoramic views from the peaks.'
    },{
      'name': 'Mount Kenya National Park',
      'image': 'assets/images/Kenya.jpg',
      'description':
          'Mount Kenya National Park is located around Mount Kenya, the highest mountain in Kenya and the second-highest in Africa. The park features diverse ecosystems, from bamboo forests to alpine meadows. It is a UNESCO World Heritage Site and offers opportunities for mountain climbing, trekking, wildlife spotting, and experiencing unique high-altitude flora and fauna.'
    },
    {
      'name': 'Ol Donyo Sabuk National Park',
      'image': 'assets/images/Sabuk.jpg',
      'description':
          'Ol Donyo Sabuk National Park is a stunning natural reserve located in central Kenya. It is known for its magnificent landscape, featuring a prominent mountain, diverse wildlife, and breathtaking views of the surrounding plains and Nairobi city.'
    },
    {
      'name': 'Ruma National Park',
      'image': 'assets/images/Ruma.jpg',
      'description':
          'Ruma National Park is situated in the western part of Kenya, near Lake Victoria. It is the only protected area in the country where the rare Roan antelope can be found. The park also hosts other wildlife species such as Rothschild giraffes, elephants, buffalos, and various bird species. Visitors can enjoy game drives, birdwatching, and nature walks.'
    },
    {
      'name': 'Saiwa Swamp National Park',
      'image': 'assets/images/Saiwa.jpg',
      'description':
          'Saiwa Swamp National Park is located in the western part of Kenya, near Kitale. It is known for being the smallest national park in Kenya and is home to the endangered Sitatunga antelope, which is adapted to the wetland habitat. The park offers guided walks along boardwalks, birdwatching, and the chance to see other animals such as monkeys and otters.'
    },
    {
      'name': 'Sibiloi National Park',
      'image': 'assets/images/Sibiloi.jpg',
      'description':
          'Sibiloi National Park is situated on the northeastern shore of Lake Turkana and is a UNESCO World Heritage Site. It is known for its significant paleontological discoveries, including fossils of early hominids. The park also features diverse wildlife, including zebras, giraffes, crocodiles, and a variety of bird species. Visitors can explore the park and learn about human evolution and cultural heritage.'
    },
     {
      'name': 'South Island National Park',
      'image': 'assets/images/South.jpg',
      'description':
          'South Island National Park is located in Lake Turkana, and it comprises four islands: North Island, Central Island, South Island, and Snake Island. The park is known for its breeding colonies of Nile crocodiles, as well as other reptiles, bird species, and the unique desert vegetation. Visitors can explore the islands by boat, observe wildlife, and enjoy the serene lake environment.'
    },
     {
      'name': 'Tsavo East National Park',
      'image': 'assets/images/East.jpg',
      'description':
          'Tsavo East National Park is one of the largest national parks in Kenya and is part of the greater Tsavo Conservation Area. It is characterized by vast savannah plains, the Yatta Plateau, and the Galana River. The park is home to diverse wildlife, including elephants, lions, giraffes, zebras, and over 500 bird species. Visitors can enjoy game drives, bush walks, and the Lugard Falls.'
    },
     {
      'name': 'Tsavo West National Park',
      'image': 'assets/images/West.jpg',
      'description':
          'Tsavo West National Park is located in the coastal province of Kenya and is part of the greater Tsavo Conservation Area. It is known for its diverse landscapes, including volcanic hills, lava flows, and the Mzima Springs. The park is home to a variety of wildlife, including elephants, rhinos, lions, hippos, and diverse bird species. Visitors can enjoy game drives, nature walks, and cave exploration.'
    },
    {
      'name': 'Maasai Mara National Park',
      'image': 'assets/images/Maasai.jpg',
      'description':
          'Maasai Mara National Park is a renowned wildlife reserve in southwestern Kenya. It is famous for its vast savannah plains, teeming with diverse wildlife, including the iconic Big Five (elephant, lion, leopard, rhinoceros, and buffalo), and hosting the annual wildebeest migration, a spectacular natural phenomenon.'
    },
    // Rest of the national parks...
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
                // Update the page.
              },
            ),
            ListTile(
              title: const Text('Item 2'),
              onTap: () {
                // Update the page.
              },
            ),
            ListTile(
              title: const Text('Item 3'),
              onTap: () {
                // Update the page.
              },
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(const MaterialApp(
    home: NationalPark(),
  ));
}
