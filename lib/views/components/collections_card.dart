import 'package:flutter/material.dart';

import '../../models/constants.dart';
import 'circular_progress.dart';

class CollectionsCard extends StatelessWidget {
  final Color backgroundColor;
  final String title;
  final IconData icon;
  final int done;
  final int total;
  const CollectionsCard(
      {super.key,
      required this.backgroundColor,
      required this.title,
      required this.icon,
      required this.done,
      required this.total});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(right: 7),
      height: 190,
      margin: const EdgeInsets.only(bottom: 12),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        color: Constants.cardBackground,
        child: Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  color: backgroundColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Icon(
                  icon,
                  color: Theme.of(context).textTheme.bodyLarge!.color,
                  size: 30,
                ),
              ),
              const Spacer(),
              Text(
                title,
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '$done/$total done',
                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                          color: Constants.boxGreyLighter,
                          fontSize: 16,
                        ),
                  ),
                  CircularProgressBar(
                    color: backgroundColor,
                    progress: done / total,
                    size: 20,
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
    ;
  }
}
