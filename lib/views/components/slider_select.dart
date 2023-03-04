import 'package:flutter/material.dart';

import '../../models/constants.dart';
import 'boxContainer.dart';

class SliderSelector extends StatefulWidget {
  final defaultSelectedIndex;
  final List items;
  const SliderSelector({
    super.key,
    required this.defaultSelectedIndex,
    required this.items,
  });

  @override
  State<SliderSelector> createState() => _SliderSelectorState();
}

class _SliderSelectorState extends State<SliderSelector> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: widget.items.asMap().entries.map(
        (e) {
          final item = e.value as SlideSelectorItem;
          final index = e.key;
          return InkWell(
            onTap: item.onTap,
            child: BoxContainer(
              padding: 15.0,
              borderWidth: 2.0,
              color: index == widget.defaultSelectedIndex
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
        },
      ).toList(),
    );
  }
}

class SlideSelectorItem {
  String text;
  VoidCallback onTap;
  SlideSelectorItem({required this.text, required this.onTap});
}
