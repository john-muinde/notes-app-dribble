import 'package:daystar_login/models/constants.dart';

import 'package:daystar_login/views/components/to_do_list_tile.dart';
import 'package:flutter/material.dart';

class ToggleUpDrawer extends StatefulWidget {
  final icon;
  final title;
  final backgroundColor;
  const ToggleUpDrawer({
    super.key,
    required this.icon,
    required this.title,
    required this.backgroundColor,
  });

  @override
  State<ToggleUpDrawer> createState() => _ToggleUpDrawerState();
}

class _ToggleUpDrawerState extends State<ToggleUpDrawer> {
  bool visible = true;
  Divider buildDivider() {
    return Divider(
      thickness: visible ? 4.0 : 0.0,
      height: visible ? 30.0 : 0.0,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * .95,
      padding: const EdgeInsets.only(right: 7),
      height: visible ? 300 : 180,
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        color: Constants.cardBackground,
        child: Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          color: widget.backgroundColor,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Icon(
                          widget.icon,
                          color: Theme.of(context).textTheme.bodyLarge!.color,
                          size: 30,
                        ),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Text(
                        widget.title,
                        style: Theme.of(context).textTheme.bodyLarge,
                      )
                    ],
                  ),
                  InkWell(
                    splashColor: widget.backgroundColor,
                    borderRadius: BorderRadius.circular(10),
                    onTap: () {
                      visible = !visible;
                      print(visible);
                      setState(() {});
                    },
                    child: Icon(
                      visible
                          ? Icons.keyboard_arrow_up
                          : Icons.keyboard_arrow_down_outlined,
                      size: 40,
                    ),
                  )
                ],
              ),
              buildDivider(),
              Visibility(
                visible: visible,
                child: Column(
                  children: [
                    ToDoListTile(borderColor: widget.backgroundColor),
                    const SizedBox(
                      height: 15,
                    ),
                    ToDoListTile(borderColor: widget.backgroundColor),
                  ],
                ),
              ),
              buildDivider(),
              Expanded(
                child: Directionality(
                  textDirection: TextDirection.rtl,
                  child: TextButton.icon(
                    onPressed: () {},
                    label: Text(
                      'Go To Collection',
                      textAlign: TextAlign.end,
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                    icon: Icon(
                      Icons.arrow_back_outlined,
                      color: Theme.of(context).iconTheme.color,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
