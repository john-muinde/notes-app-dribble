import 'package:daystar_login/views/components/custom_app_bar.dart';

import '../../../models/constants.dart';
import 'pages/collections.dart';
import 'pages/dashboard.dart';
import 'pages/new_collection.dart';
import 'pages/profile.dart';
import 'pages/to_do.dart';
import 'package:flutter/material.dart';

class LandingScreen extends StatefulWidget {
  const LandingScreen({Key? key}) : super(key: key);

  @override
  _LandingScreenState createState() => _LandingScreenState();
}

class _LandingScreenState extends State<LandingScreen> {
  final List<Map<String, Object>> _pages = const [
    {
      'page': DashboardPage(),
      'title': 'Dashboard',
    },
    {
      'page': CollectionsPage(),
      'title': 'Collections',
    },
    {
      'page': NewCollectionPage(),
      'title': 'New Collection',
    },
    {
      'page': ToDoPage(),
      'title': 'To Do',
    },
    {
      'page': ProfilePage(),
      'title': 'My Profile',
    },
  ];

  int _selectedPageIndex = 0;

  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: _pages.length,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Theme.of(context).primaryColor,
          body: Padding(
            padding: const EdgeInsets.only(left: 12.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomAppBar(
                  title: _pages[_selectedPageIndex]['title'] as String,
                  
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.75,
                  color: Theme.of(context).primaryColor,
                  child: _pages[_selectedPageIndex]['page'] as Widget,
                ),
              ],
            ),
          ),
          bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            onTap: _selectPage,
            backgroundColor: Theme.of(context).primaryColor,
            unselectedItemColor: Constants.boxGreyLighter,
            selectedItemColor: Constants.primaryWhite,
            currentIndex: _selectedPageIndex,
            // type: BottomNavigationBarType.shifting,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.category_outlined),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.category_outlined),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.category_outlined),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.category_outlined),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.category_outlined),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.category_outlined),
                label: '',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
