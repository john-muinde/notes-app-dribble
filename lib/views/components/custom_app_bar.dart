import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  final title;
  final height;
  const CustomAppBar({super.key, required this.title, this.height});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).primaryColor,
      height: height,
      padding: const EdgeInsets.only(right: 10, top: 10, bottom: 10, left: 4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: Theme.of(context).textTheme.bodyLarge!.copyWith(fontSize: 24),
          ),
          CircleAvatar(
            radius: 27,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(55),
              child: Image.network(
                'https://picsum.photos/200',
                // height: 100,
                // width: 100,
                fit: BoxFit.cover,
              ),
            ),
          )
        ],
      ),
    );
  }
}
