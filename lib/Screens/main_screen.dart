import 'package:eqtidar_app/Screens/categories_page.dart';
import 'package:eqtidar_app/Screens/search_page.dart';
import 'package:eqtidar_app/Screens/home_page.dart';
import 'package:eqtidar_app/Screens/login_page.dart';
import 'package:eqtidar_app/Widgets/app_bar.dart';
import 'package:flutter/material.dart';

class MyMainScreen extends StatefulWidget {
  const MyMainScreen({Key? key}) : super(key: key);

  @override
  State<MyMainScreen> createState() => _MyMainScreenState();
}

class _MyMainScreenState extends State<MyMainScreen> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  final List<Widget> _widgetOptions = <Widget>[
    const MyHomePage(),
    const MyCategoriesPage(),
    const MySearchPage(),
    const MyLoginPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: const MyAppBar(),
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            activeIcon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.category_outlined),
            activeIcon: Icon(Icons.category),
            label: 'Categories',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.star_border),
            activeIcon: Icon(Icons.star),
            label: 'Wishes',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person_outline,
            ),
            activeIcon: Icon(
              Icons.person,
            ),
            label: 'Account',
          ),
        ],
        selectedItemColor: Theme.of(context).primaryColor,
        unselectedItemColor: Colors.black45,
        // backgroundColor: Theme.of(context).canvasColor,
        backgroundColor: Colors.transparent,
        currentIndex: _selectedIndex,
        type: BottomNavigationBarType.fixed,
        onTap: _onItemTapped,
        elevation: 0,
      ),
    );
  }
}
