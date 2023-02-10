import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:travel_ui/widgets/hotel_carousel.dart';

import '../widgets/destination_carousel.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  int _currentTab = 0;

  List<IconData> _icons = [
    FontAwesomeIcons.plane,
    FontAwesomeIcons.bed,
    FontAwesomeIcons.personWalking,
    FontAwesomeIcons.personBiking
  ];

  Widget _buildIcon(int index) {
    return GestureDetector(
        onTap: () {
          setState(() {
            _selectedIndex = index;
          });
        },
        child: Container(
            height: 60.0,
            width: 60.0,
            decoration: BoxDecoration(
                color: _selectedIndex == index
                    ? Theme.of(context).accentColor
                    : Color(0xFFE7EBEE),
                borderRadius: BorderRadius.circular(30.0)),
            child: Icon(
              _icons[index],
              size: 25.0,
              color: _selectedIndex == index
                  ? Theme.of(context).primaryColor
                  : Color(0xFFB4C1C4),
            )));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: ListView(
        padding: EdgeInsets.symmetric(vertical: 30.0),
        children: <Widget>[
          const Padding(
              padding: EdgeInsets.only(left: 20.0, right: 120.0),
              child: Text(
                'What would you like to find ?',
                style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
              )),
          SizedBox(height: 20.0),
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: _icons
                  .asMap()
                  .entries
                  .map((MapEntry map) => _buildIcon(map.key))
                  .toList()),
          SizedBox(height: 20.0),
          DestinationCarousel(),
          SizedBox(height: 20.0),
          HotelCarousel(),
        ],
      )),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (int value) {
          setState(() {
            _currentTab = value;
            if (_currentTab == 0) {
              print('Seach');
            } else if (_currentTab == 1) {
              print('Pizza');
            } else {
              print('Account');
            }
          });
        },
        currentIndex: _currentTab,
        items: [
          BottomNavigationBarItem(
            label: '',
            icon: Icon(
              Icons.search,
              size: 30.0,
            ),
          ),
          BottomNavigationBarItem(
              label: '',
              icon: Icon(
                Icons.local_pizza,
                size: 30.0,
              )),
          BottomNavigationBarItem(
              label: '',
              icon: CircleAvatar(
                  radius: 15.0,
                  backgroundImage: NetworkImage(
                      'https://i.pinimg.com/564x/b6/79/43/b67943bca7d37de71babac8238be60d4.jpg')))
        ],
      ),
    );
  }
}
