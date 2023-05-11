import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:tourism/Art%20Gallaries.dart';
import 'package:tourism/Hot%20Springs.dart';
import 'package:tourism/Hotels.dart';
import 'package:tourism/Lakes.dart';
import 'package:tourism/Landscapes.dart';
import 'package:tourism/Museums.dart';
import 'package:tourism/National%20Parks.dart';
import 'package:tourism/Sports%20Grounds.dart';

void main() {
  runApp(TourismApp());
}

class TourismApp extends StatefulWidget {
  @override
  State<TourismApp> createState() => _TourismAppState();
}

class _TourismAppState extends State<TourismApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tourism App',
      theme: ThemeData(primarySwatch: Colors.green),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  final List<String> slideMessages = [
    'Explore the beauty of our national parks',
    'Discover the serenity of our lakes',
    'Relax in rejuvenating hot springs',
    'Immerse yourself in our rich cultural museums',
    'Experience the thrill of our sports grounds'
  ];

  final List<CategoryWidget> categories = [
    CategoryWidget(
        title: 'National Parks', color: Colors.red, route: NationalPark()),
    CategoryWidget(title: 'Lakes', color: Colors.green, route: Lakes()),
    CategoryWidget(
        title: 'Hot Springs', color: Colors.yellow, route: HotSprings()),
    CategoryWidget(title: 'Museums', color: Colors.blue, route: Museums()),
    CategoryWidget(
        title: 'Sports Grounds', color: Colors.pink, route: SportsGrounds()),
    CategoryWidget(
        title: 'Art Gallaries', color: Colors.orange, route: ArtGallaries()),
    CategoryWidget(title: 'Hotels', color: Colors.blue, route: Hotels()),
    CategoryWidget(
        title: 'Landscapes', color: Colors.purple, route: Landscapes()),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Tourism App')),
      drawer: Drawer(
        child: Container(
          color: Colors.green[800],
          child: ListView(
            padding: EdgeInsets.zero,
            children: categories.map((category) {
              return ListTile(
                title: Text(
                  category.title,
                  style: TextStyle(color: Colors.white),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => category.route),
                  );
                },
              );
            }).toList(),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CarouselSlider(
              options: CarouselOptions(
                height: 200,
                autoPlay: true,
                enlargeCenterPage: true,
                viewportFraction: 0.9,
              ),
              items: slideMessages.map((message) {
                return Container(
                  margin: EdgeInsets.all(5),
                  child: Center(
                    child: Text(
                      message,
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                );
              }).toList(),
            ),
            SizedBox(height: 16),
            Wrap(
              alignment: WrapAlignment.spaceEvenly,
              spacing: 16.0, // gap between adjacent chips
              runSpacing: 16.0, // gap between lines
              children: categories.map((category) {
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => category.route),
                    );
                  },
                  child: category,
                );
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }
}

class CategoryWidget extends StatelessWidget {
  final String title;
  final Color color;
  final Widget route;

  const CategoryWidget(
      {required this.title, required this.color, required this.route});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 150,
      color: color,
      child: Center(
        child: Text(
          title,
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}