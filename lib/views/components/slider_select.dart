import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../models/constants.dart';
import 'boxContainer.dart';

class SliderSelector extends StatelessWidget {
  final RxInt defaultSelectedIndex;
  final List<SlideSelectorItem> items;

  const SliderSelector({
    Key? key,
    required this.defaultSelectedIndex,
    required this.items,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(() => Row(
          children: items.asMap().entries.map((e) {
            final item = e.value;
            final index = e.key;
            return InkWell(
              onTap: () {
                defaultSelectedIndex.value = index;
                item.onTap();
              },
              child: BoxContainer(
                padding: 15.0,
                borderWidth: 2.0,
                color: index == defaultSelectedIndex.value
                    ? Constants.sliderBackground
                    : Constants.backgroundBlack,
                background: 1.0,
                child: Text(
                  item.text,
                  style: Theme.of(context).textTheme.bodySmall!.copyWith(
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 1.5,
                      ),
                ),
              ),
            );
          }).toList(),
        ));
  }
}

class SlideSelectorItem {
  String text;
  VoidCallback onTap;
  SlideSelectorItem({required this.text, required this.onTap});
}
