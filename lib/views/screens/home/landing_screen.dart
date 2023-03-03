import 'package:daystar_login/models/constants.dart';
import 'package:daystar_login/views/screens/home/pages/collections.dart';
import 'package:daystar_login/views/screens/home/pages/dashboard.dart';
import 'package:daystar_login/views/screens/home/pages/new_collection.dart';
import 'package:daystar_login/views/screens/home/pages/profile.dart';
import 'package:daystar_login/views/screens/home/pages/to_do.dart';
import 'package:flutter/material.dart';

class LandingScreen extends StatefulWidget {
  const LandingScreen({Key? key}) : super(key: key);

  @override
  _LandingScreenState createState() => _LandingScreenState();
}

class _LandingScreenState extends State<LandingScreen> {
  int _currentIndex = 1;
  static final List<Widget> _pages = [
    const DashboardPage(),
    const CollectionsPage(),
    const NewCollectionPage(),
    const ProfilePage(),
    const ToDoPage(),
  ];
  //  List<Map<String, Object>>? _pages;

  // @override
  // void initState() {
  //   _pages = [
  //     {
  //       'page': CategoriesScreen(),
  //       'title': 'Categories',
  //     },
  //     {
  //       'page': FavoritesScreen(widget.favoriteMeals),
  //       'title': 'Your Favorites',
  //     }
  //   ];
  //   super.initState();
  // }

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
      child: Scaffold(
        appBar: AppBar(
          title: const Text(''),
          backgroundColor: Constants.backgroundBlack.withOpacity(1),
        ),
        body: _pages![_selectedPageIndex],
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          onTap: _selectPage,
          backgroundColor: Constants.backgroundBlack,
          unselectedItemColor: Constants.boxGreyLighter,
          selectedItemColor: Constants.primaryWhite,
          currentIndex: _selectedPageIndex,
          // type: BottomNavigationBarType.shifting,
          items: [
            ..._pages
                .map(
                  (bottom) => const BottomNavigationBarItem(
                    // backgroundColor: Theme.of(context).colorScheme.primary,
                    icon: Icon(Icons.category_outlined),
                    label: '',
                  ),
                )
                .toList()
          ],
        ),
      ),
    );
  }
}
