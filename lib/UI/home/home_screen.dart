import 'package:flutter/material.dart';
import 'package:you_move_me/UI/home/career_tab/career_tab.dart';
import 'package:you_move_me/UI/home/chat_tab/all_chat_list.dart';
import 'package:you_move_me/UI/home/clock_in_out/clock_in_out.dart';
import 'package:you_move_me/UI/home/clock_in_out/work_history.dart';
import 'package:you_move_me/UI/home/news_tab/news_screen.dart';
import 'package:you_move_me/UI/home/schedule_tab/schedule.dart';
import 'package:you_move_me/UI/profile/profile_tab.dart';
import 'package:you_move_me/UI/theme/apptheme.dart';
import 'package:you_move_me/component/bottom_navigation.dart';
import 'package:you_move_me/component/navigationtheme.dart';

class HomeScreen extends StatefulWidget {
  final Function(int) onindexChange;
  const HomeScreen({required this.onindexChange, Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 60),
            child: getBody,
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: FFNavigationBar(
              theme: FFNavigationBarTheme(
                barBackgroundColor: Colors.white,
                selectedItemBackgroundColor: primarySwatch[200]!,
                selectedItemIconColor: Colors.black,
                selectedItemLabelColor: Colors.black,
              ),
              selectedIndex: selectedIndex,
              onSelectTab: (index) {
                setState(() {
                  selectedIndex = index;
                });
                widget.onindexChange(index);
              },
              items: [
                FFNavigationBarItem(
                  iconData: Icons.feed_outlined,
                  label: 'News',
                ),
                FFNavigationBarItem(
                  iconData: Icons.schedule_outlined,
                  label: 'Schedule',
                ),
                FFNavigationBarItem(
                  iconData: Icons.school_outlined,
                  label: 'Career',
                ),
                FFNavigationBarItem(
                  iconData: Icons.groups_outlined,
                  label: 'Team',
                ),
                FFNavigationBarItem(
                  iconData: Icons.account_circle_outlined,
                  label: 'Settings',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget get getBody {
    switch (selectedIndex) {
      case 0:
        return NewsScreen();
      case 1:
        return Schedule();
      case 2:
        return CareerTab();
      case 3:
        return AllChatList();
      case 4:
        return Profile();
    }
    return Container();
  }
}
