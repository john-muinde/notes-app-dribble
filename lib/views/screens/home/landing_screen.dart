import 'package:daystar_login/controllers/landing_controller.dart';
import 'package:daystar_login/views/components/custom_app_bar.dart';

import '../../../models/constants.dart';
import '../../../controllers/exports/pages_imports.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LandingScreen extends StatelessWidget {
  final LandingController controller = Get.put(LandingController());

  final List<Map<String, Object>> _pages = [
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

  @override
  Widget build(BuildContext context) {
    return GetBuilder<LandingController>(
      builder: (controller) => DefaultTabController(
        length: _pages.length,
        child: SafeArea(
          child: Scaffold(
            backgroundColor: Theme.of(context).primaryColor,
            body: Padding(
              padding: const EdgeInsets.only(left: 12.0),
              child: Obx(
                () => Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomAppBar(
                      title: _pages[controller.selectedIndex.value]['title']
                          as String,
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.752,
                      color: Theme.of(context).primaryColor,
                      child: _pages[controller.selectedIndex.value]['page']
                          as Widget,
                    ),
                  ],
                ),
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
                  onTap: controller.changeSelectedIndex,
                  backgroundColor: Theme.of(context).primaryColor,
                  unselectedItemColor: Constants.boxGreyLighter,
                  selectedItemColor: Constants.primaryWhite,
                  currentIndex: controller.selectedIndex.value,
                  items: [
                    ..._pages
                        .map(
                          (e) => BottomNavigationBarItem(
                            icon: e['color'] == null
                                ? Icon(e['icon'] as IconData, size: 30)
                                : InkWell(
                                    splashColor: Constants.iconBackground,
                                    onTap: () =>
                                        controller.changeSelectedIndex(2),
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
      ),
    );
  }
}
