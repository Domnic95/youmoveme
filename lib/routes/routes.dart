import 'package:flutter/material.dart';
import 'package:you_move_me/UI/auth_wrapper.dart';
import 'package:you_move_me/UI/home/career_tab/page/questions_page.dart';
import 'package:you_move_me/UI/home/chat_tab/group_Info.dart';
import 'package:you_move_me/UI/home/chat_tab/group_chat_screen.dart';
import 'package:you_move_me/UI/home/chat_tab/single_chat_screen.dart';
import 'package:you_move_me/UI/home/clock_in_out/work_history.dart';
import 'package:you_move_me/UI/home/custom_drawer.dart';
import 'package:you_move_me/UI/home/home_screen.dart';
import 'package:you_move_me/UI/incentives/incentives.dart';
import 'package:you_move_me/UI/incentives/page/history.dart';
import 'package:you_move_me/UI/login/log_in.dart';
import 'package:you_move_me/UI/surveys_tab/Page/congratspage.dart';
import 'package:you_move_me/UI/surveys_tab/Page/congratspage.dart';
import 'package:you_move_me/UI/surveys_tab/Page/question_tab.dart';
import 'package:you_move_me/UI/surveys_tab/Page/summarypage.dart';

class Routes {
  static const String homePage = "/homePage";
  static const String QuestionPage = "/homePage/QuestionPage";
  static const String singleChatScreen = "/SingleChatScreen";
  static const String groupChatScreen = "/GroupChatScreen";
  static const String groupInfo = "/GroupInfo";
  static const String clockInOutScreen = "/clockInOutScreen";
  static const String question_tab = "/Question_tab";
  static const String question_summary = "/Question_summary";
  static const String congrat_Tab = "/CongratTab";
  static const String customDrawer = "/customerDrawer";
  static const String login = "log_in";
  static const String authWrapper = "auth_wrapper";
  static const String history = "history";

  static Route<dynamic> onRouteGenerate(RouteSettings settings) {
    return MaterialPageRoute(builder: (context) {
      Widget page;
      switch (settings.name) {
        // case Routes.homePage:
        //   page = HomeScreen();
        //   break;
        case Routes.clockInOutScreen:
          page = WorkHistory();
          break;
        case Routes.QuestionPage:
          page = QuestionsPage();
          break;
        case Routes.singleChatScreen:
          page = SingleChatScreen();
          break;
        case Routes.groupInfo:
          page = GroupInfo();
          break;
        case Routes.groupChatScreen:
          page = GroupChatScreen();
          break;
        case Routes.question_tab:
          page = Questions_Tab();
          break;
        case Routes.congrat_Tab:
          page = CongratTab();
          break;
        case Routes.question_summary:
          page = SummaryTab(
            totalquestion: 6,
          );
          break;
        case Routes.customDrawer:
          page = CustomDrawer();
          break;
        case Routes.login:
          page = Log_In();
          break;
        case Routes.history:
          page = History();
          break;
        case Routes.authWrapper:
          page = AuthWrapper();
          break;
        default:
          page = Container(
            child: Text('no route'),
          );
      }
      return page;
    });
  }
}
