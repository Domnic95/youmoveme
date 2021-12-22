import 'package:flutter/material.dart';
import 'package:you_move_me/UI/home/home_screen.dart';
import 'package:you_move_me/UI/home/news_tab/news_screen.dart';
import 'package:you_move_me/UI/incentives/incentives.dart';
import 'package:you_move_me/UI/leader_board/leader_board.dart';
import 'package:you_move_me/UI/library/library.dart';
import 'package:you_move_me/UI/surveys_tab/surveys_tab.dart';
import 'package:you_move_me/UI/theme/apptheme.dart';
import 'package:you_move_me/UI/time_card/time_card.dart';
import 'package:you_move_me/component/bottom_navigation.dart';
import 'package:you_move_me/component/drawe_controller.dart';
import 'package:you_move_me/component/menu_widget.dart';
import 'package:you_move_me/component/navigationtheme.dart';
import 'package:you_move_me/component/sidemenu.dart';

class CustomDrawer extends StatefulWidget {
  const CustomDrawer({Key? key}) : super(key: key);

  @override
  State<CustomDrawer> createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  Widget screenView = NewsScreen();
  DrawerIndex drawerIndex = DrawerIndex.Home;
  int currentBottomBarIndex = 0;
  int selectedIndex = 0;
  GlobalKey<SliderMenuContainerState> _key =
      new GlobalKey<SliderMenuContainerState>();
  var type;

  late String title;
  @override
  void initState() {
    title = "Southwind";
    super.initState();
    Duration();
  }
  // Widget screenView = HomeScreen(onindexChange: onindexChange)

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      //  appBar: AppBar(
      //   title: Text(
      //     "Southwind".toUpperCase(),
      //     style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700),
      //   ),
      //   leading: Icon(Icons.menu),
      //   centerTitle: true,
      // ),
      body: SafeArea(
        child: DrawerUserController(
          currentBottomBarIndex: currentBottomBarIndex,
          screenIndex: drawerIndex,
          drawerWidth: MediaQuery.of(context).size.width * 0.75,
          onDrawerCall: (DrawerIndex drawerIndexdata) {
            changeIndex(drawerIndexdata);
            //callback from drawer for replace screen as user need with passing DrawerIndex(Enum index)
          },
          // screenView: TimeCardScreen(),
          screenView: ScreenWidget,
          // screenView: HomeScreen(
          // onindexChange: (i) {
          //   currentBottomBarIndex = i;
          //   setState(() {});
          // },
          // ),
          drawerIsOpen: (bool) {},
          //we replace screen view as we need on navigate starting screens like MyHomePage, HelpScreen, FeedbackScreen, etc...
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  void changeIndex(DrawerIndex drawerIndexdata) {
    if (drawerIndex != drawerIndexdata) {
      drawerIndex = drawerIndexdata;
      setState(() {});
    }
  }

  Widget get ScreenWidget {
    switch (drawerIndex) {
      case DrawerIndex.Home:
        return HomeScreen(
          onindexChange: (i) {
            currentBottomBarIndex = i;
            setState(() {});
          },
        );

      case DrawerIndex.LeaderBoard:
        return LeaderBoard();
      // return HomeScreen(
      //   onindexChange: (i) {
      //     currentBottomBarIndex = i;
      //     setState(() {});
      //   },
      // );

      case DrawerIndex.Incentives:
        return Incentives();
      case DrawerIndex.Library:
        return Library();
        break;
      case DrawerIndex.Surveys:
        return Surveys_Tab();
        break;
      // case DrawerIndex.Challenges:
      //   // TODO: Handle this case.
      //   break;
      case DrawerIndex.Learning:
        // TODO: Handle this case.
        break;
      case DrawerIndex.CardTime:
        return TimeCardScreen();
      // break;
      case DrawerIndex.Goals:
        // TODO: Handle this case.
        break;
      case DrawerIndex.none:
       
        break;
    }
    return HomeScreen(
      onindexChange: (i) {
        currentBottomBarIndex = i;
        setState(() {});
      },
    );
  }
}

// class HomePage extends StatefulWidget {
//   const HomePage({Key? key}) : super(key: key);

//   @override
//   State<HomePage> createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   int selectedIndex = 0;
//   GlobalKey<SliderMenuContainerState> _key =
//       new GlobalKey<SliderMenuContainerState>();
//   var type;

//   late String title;
//   @override
//   void initState() {
//     // TODO: implement initState
//     title = "Southwind";
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       /* appBar: AppBar(
//         title: Text(
//           "Southwind".toUpperCase(),
//           style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700),
//         ),
//         leading: Icon(Icons.menu),
//         centerTitle: true,
//       ),*/
//       body: SafeArea(
//         child: SliderMenuContainer(
//           appBarColor: Colors.transparent,
//           appBarHeight: 40,
//           key: _key,
//           shadowColor: Colors.grey,
//           sliderMenuOpenSize: 250,
//           // title: Text(
//           //   title.toUpperCase(),
//           //   style: TextStyle(
//           //       color: Colors.white, fontSize: 18, fontWeight: FontWeight.w700),
//           // ),
//           // isTitleCenter: tr,
//           drawerIcon: Image.asset(
//             'assets/images/navigation.png',
//             height: 30,
//           ),
// title: Container(
//   // color: Colors.teal,
//   height: 30,
//   child: Image.asset("assets/images/southwind_logo.png"),
// ),
//           sliderMenu: MenuWidget(
//             onItemClick: (title) {
//               _key.currentState!.closeDrawer();
//               setState(() {
//                 this.title = title;
//               });
//             },
//           ),
//           sliderMain: NewsScreen(),
//         ),
//       ),
//       bottomNavigationBar: FFNavigationBar(
//         theme: FFNavigationBarTheme(
//           barBackgroundColor: Colors.white,
//           selectedItemBackgroundColor: primarySwatch[50]!,
//           selectedItemIconColor: Colors.black,
//           selectedItemLabelColor: Colors.black,
//         ),
//         selectedIndex: selectedIndex,
//         onSelectTab: (index) {
//           setState(() {
//             selectedIndex = index;
//           });
//         },
//         items: [
//           FFNavigationBarItem(
//             iconData: Icons.feed_outlined,
//             label: 'News',
//           ),
//           FFNavigationBarItem(
//             iconData: Icons.schedule_outlined,
//             label: 'Schedule',
//           ),
//           FFNavigationBarItem(
//             iconData: Icons.school_outlined,
//             label: 'Career',
//           ),
//           FFNavigationBarItem(
//             iconData: Icons.groups_outlined,
//             label: 'Team',
//           ),
//           FFNavigationBarItem(
//             iconData: Icons.account_circle_outlined,
//             label: 'Settings',
//           ),
//         ],
//       ), // This trailing comma makes auto-formatting nicer for build methods.
//     );
//   }
// }
