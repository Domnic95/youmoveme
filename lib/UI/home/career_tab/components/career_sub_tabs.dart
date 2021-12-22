import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:you_move_me/UI/theme/apptheme.dart';

class CareerSubTab extends StatefulWidget {
  const CareerSubTab({Key? key}) : super(key: key);

  @override
  _CareerSubTabState createState() => _CareerSubTabState();
}

class _CareerSubTabState extends State<CareerSubTab> {
  List<String> tabs = ['Career', 'Submitted', 'Completed'];
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        for (int i = 0; i < tabs.length; i++)
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 10),
              child: InkWell(
                borderRadius: BorderRadius.circular(1000),
                onTap: () {
                  setState(() {
                    selectedIndex = i;
                  });
                },
                child: Material(
                  color: Colors.transparent,
                  elevation: selectedIndex == i ? 10 : 0,
                  borderRadius: BorderRadius.circular(1000),
                  child: Container(
                    decoration: BoxDecoration(
                        color: selectedIndex == i
                            ? primarySwatch[700]
                            : Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        border:
                            Border.all(color: primarySwatch[900]!, width: .5)),
                    child: Center(
                        child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 10),
                      child: Text(
                        tabs[i],
                        maxLines: 1,
                        overflow: TextOverflow.visible,
                        style: selectedIndex != i
                            ? TextStyle(
                                color: primarySwatch[900],
                                fontWeight: FontWeight.bold)
                            : TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                      ),
                    )),
                  ),
                ),
              ),
            ),
          ),
      ],
    );
  }
}
