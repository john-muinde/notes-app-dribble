import 'package:daystar_login/views/components/toggle_up_drawer.dart';
import 'package:daystar_login/views/screens/auth/sign_up_screen.dart';
import 'package:flutter/material.dart';

import '../../../../models/constants.dart';
import '../../../components/slider_select.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage>
    with SingleTickerProviderStateMixin {
  int activeItem = 1;

  // PageController summaryController = PageController(
  //   viewportFraction: 1,
  //   initialPage: 1,
  // );
  void changeItem(int item) {
    setState(() {
      activeItem = item;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Good morning,',
          style: Theme.of(context).textTheme.displaySmall,
        ),
        Text(
          'Jane Doe',
          style: Theme.of(context).textTheme.displaySmall,
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          children: [
            SliderSelector(
              defaultSelectedIndex: activeItem - 1,
              items: <SlideSelectorItem>[
                SlideSelectorItem(
                  text: 'Daily OverView',
                  onTap: () {
                    changeItem(1);
                  },
                ),
                SlideSelectorItem(
                  text: 'Statistics',
                  onTap: () {
                    changeItem(2);
                  },
                )
              ],
            ),
          ],
        ),
        sized(height: 4),
        Container(
          height: MediaQuery.of(context).size.height * .54,
          child: ListView(
            children: const [
              ToggleUpDrawer(
                backgroundColor: Constants.iconBackground,
                icon: Icons.brush,
                title: 'Design',
              ),
              ToggleUpDrawer(
                backgroundColor: Constants.iconBackground2,
                icon: Icons.person,
                title: 'Personal',
              ),
            ],
          ),
        )
      ],
    );
  }
}
