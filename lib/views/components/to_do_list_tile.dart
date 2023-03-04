import 'package:flutter/material.dart';

import '../../models/constants.dart';

class ToDoListTile extends StatelessWidget {
  final borderColor;
  const ToDoListTile({super.key, required this.borderColor});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        Icons.check_box_outline_blank,
        color: borderColor,
        size: 40,
        fill: 1.0,
      ),
      subtitle: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Prepare dribble shot',
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          const SizedBox(
            height: 5,
          ),
          Row(
            children: const [
              Icon(
                Icons.calendar_today,
                size: 17,
                color: Constants.dueDate,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                'Today 12:00',
                style: TextStyle(
                  color: Constants.dueDate,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
