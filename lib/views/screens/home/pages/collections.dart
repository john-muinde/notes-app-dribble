import 'package:daystar_login/views/components/collections_card.dart';
import 'package:flutter/material.dart';

import '../../../../models/constants.dart';
import '../../../components/boxContainer.dart';
import '../../../components/slider_select.dart';

class CollectionsPage extends StatefulWidget {
  const CollectionsPage({super.key});

  @override
  State<CollectionsPage> createState() => _CollectionsPageState();
}

class _CollectionsPageState extends State<CollectionsPage>
    with SingleTickerProviderStateMixin {
  int activeItem = 2;

  void changeItem(int item) {
    setState(() {
      activeItem = item;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Row(
          children: [
            SliderSelector(
              defaultSelectedIndex: activeItem - 1,
              items: <SlideSelectorItem>[
                SlideSelectorItem(
                  text: 'Favourites',
                  onTap: () {
                    changeItem(1);
                  },
                ),
                SlideSelectorItem(
                  text: 'All Collections',
                  onTap: () {
                    changeItem(2);
                  },
                )
              ],
            ),
          ],
        ),
        const SizedBox(height: 4),
        SizedBox(
          height: MediaQuery.of(context).size.height * .6,
          child: GridView(
            // padding: const EdgeInsets.all(25),
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200,
              // childAspectRatio: 3 / 2,
              // crossAxisSpacing: 20,
              // mainAxisSpacing: 20,
            ),
            children: [
              ...[
                {
                  'title': 'Design',
                  'icon': Icons.brush,
                  'color': Constants.iconBackground,
                  'done': 4,
                  'total': 8
                },
                {
                  'title': 'Personal',
                  'icon': Icons.brush,
                  'color': Constants.iconBackground2,
                  'done': 3,
                  'total': 5
                },
                {
                  'title': 'School',
                  'icon': Icons.menu_book_rounded,
                  'color': Constants.iconBackground3,
                  'done': 15,
                  'total': 15
                },
                {
                  'title': 'Groceries',
                  'icon': Icons.shopping_cart,
                  'color': Constants.iconBackground4,
                  'done': 10,
                  'total': 10
                },
              ]
                  .map(
                    (collection) => CollectionsCard(
                      backgroundColor: collection['color'] as Color,
                      icon: collection['icon'] as IconData,
                      title: collection['title'] as String,
                      done: collection['done'] as int,
                      total: collection['total'] as int,
                    ),
                  )
                  .toList(),
            ],
          ),
        ),
      ],
    );
  }
}
