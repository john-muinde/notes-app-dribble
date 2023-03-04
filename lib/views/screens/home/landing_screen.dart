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
      'icon': Icons.dashboard,
    },
    {
      'page': CollectionsPage(),
      'title': 'Collections',
      'icon': Icons.folder_copy
    },
    {
      'page': NewCollectionPage(),
      'title': 'New Collection',
      'icon': Icons.add,
      'color': Constants.buttonGradientLeft
    },
    {
      'page': ToDoPage(),
      'title': 'To Do',
      'icon': Icons.notifications_none_rounded,
    },
    {
      'page': ProfilePage(),
      'title': 'My Profile',
      'icon': Icons.person,
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
          bottomNavigationBar: Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(10),
                topLeft: Radius.circular(10),
              ),
              boxShadow: [
                BoxShadow(
                  color: Constants.boxGreyLight,
                  spreadRadius: 0,
                  blurRadius: 5,
                ),
              ],
            ),
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(10.0),
                topRight: Radius.circular(10.0),
              ),
              child: BottomNavigationBar(
                type: BottomNavigationBarType.fixed,
                onTap: _selectPage,
                backgroundColor: Theme.of(context).primaryColor,
                unselectedItemColor: Constants.boxGreyLighter,
                selectedItemColor: Constants.primaryWhite,
                currentIndex: _selectedPageIndex,
                items: [
                  ..._pages
                      .map(
                        (e) => BottomNavigationBarItem(
                          icon: e['color'] == null
                              ? Icon(e['icon'] as IconData, size: 30)
                              : InkWell(
                                  splashColor: Constants.iconBackground,
                                  onTap: () {},
                                  child: Container(
                                    padding: const EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                      gradient: const LinearGradient(
                                        colors: [
                                          Constants.buttonGradientLeft,
                                          Constants.buttonGradientRight
                                        ],
                                        begin: Alignment.centerLeft,
                                        end: Alignment.centerRight,
                                      ),
                                      borderRadius: BorderRadius.circular(14),
                                    ),
                                    child: Icon(
                                      e['icon'] as IconData,
                                      size: 30,
                                      color: Constants.primaryWhite,
                                    ),
                                  ),
                                ),
                          label: '',
                        ),
                      )
                      .toList()
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
