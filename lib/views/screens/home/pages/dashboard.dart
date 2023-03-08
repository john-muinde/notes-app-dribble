import 'package:daystar_login/views/components/toggle_up_drawer.dart';
import 'package:flutter/material.dart';
import '../../../../models/constants.dart';
import '../../../components/slider_select.dart';
import 'package:get/get.dart';

class DashboardController extends GetxController {
  var activeItem = 1.obs;

  void changeItem(int item) {
    activeItem.value = item;
  }
}

class DashboardPage extends GetView<DashboardController> {
  const DashboardPage({super.key});

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
              defaultSelectedIndex: (controller.activeItem.value - 1).obs,
              items: <SlideSelectorItem>[
                SlideSelectorItem(
                  text: 'Daily OverView',
                  onTap: () {
                    controller.changeItem(1);
                  },
                ),
                SlideSelectorItem(
                  text: 'Statistics',
                  onTap: () {
                    controller.changeItem(2);
                  },
                )
              ],
            ),
          ],
        ),
        SizedBox(height: 4),
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
