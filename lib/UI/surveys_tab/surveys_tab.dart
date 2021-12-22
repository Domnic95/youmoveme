import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:you_move_me/UI/home/career_tab/page/questions_page.dart';
import 'package:you_move_me/UI/theme/apptheme.dart';
import 'package:you_move_me/routes/routes.dart';

import 'Page/question_tab.dart';

class Surveys_Tab extends StatefulWidget {
  @override
  _Surveys_TabState createState() => _Surveys_TabState();
}

class _Surveys_TabState extends State<Surveys_Tab> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          margin: EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 30,
              ),
              Text(
                "Interesting Surveys",
                style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 0.5),
              ),
              Text(
                "6 Surveys",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 30,
              ),
              Expanded(
                child: ListView.builder(
                  padding: EdgeInsets.only(top: 0, bottom: 60),
                  itemBuilder: (context, index) {
                    // if (index == 0) {
                    //   return Column(
                    //     mainAxisSize: MainAxisSize.min,
                    //     children: [
                    //       Container(
                    //         decoration: BoxDecoration(
                    //             color: Color(0xFF53ac54),
                    //
                    //             // color: Color(0xFF25AA25),
                    //             borderRadius: BorderRadius.circular(10)),
                    //         child: Padding(
                    //           padding: const EdgeInsets.symmetric(vertical: 10),
                    //           child: Row(
                    //             mainAxisAlignment: MainAxisAlignment.start,
                    //             children: [
                    //               SizedBox(
                    //                 width: 20,
                    //               ),
                    //               Image.asset(
                    //                 "assets/images/premiumquality.png",
                    //                 height: 50,
                    //               ),
                    //               SizedBox(
                    //                 width: 20,
                    //               ),
                    //               SizedBox(
                    //                 width: .5,
                    //                 height: 55,
                    //                 child: Container(
                    //                   color: Colors.white,
                    //                 ),
                    //               ),
                    //               SizedBox(
                    //                 width: 10,
                    //               ),
                    //               Column(
                    //                 crossAxisAlignment: CrossAxisAlignment.start,
                    //                 children: [
                    //                   Text(
                    //                     "21 STEPS LEFT",
                    //                     style: TextStyle(
                    //                         fontSize: 18,
                    //                         color: Colors.white,
                    //                         fontWeight: FontWeight.bold),
                    //                     textAlign: TextAlign.center,
                    //                   ),
                    //                   Row(
                    //                     children: [
                    //                       Text(
                    //                         "Certified Sales Leader",
                    //                         style: TextStyle(color: Colors.white),
                    //                       ),
                    //                       Icon(
                    //                         Icons.arrow_drop_down,
                    //                         color: Colors.white,
                    //                       )
                    //                     ],
                    //                   ),
                    //                 ],
                    //               ),
                    //             ],
                    //           ),
                    //         ),
                    //       ),
                    //       SizedBox(
                    //         height: 10,
                    //       ),
                    //       SingleCollection(collections[index]),
                    //     ],
                    //   );
                    // }
                    return SingleCollection(collections[index]);
                  },
                  itemCount: collections.length,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SingleCollection extends StatelessWidget {
  final QuestionCollection collection;

  const SingleCollection(this.collection, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double radius = 12;
    return Container(
      // margin: EdgeInsets.symmetric(horizontal: 10),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 4),
        child: InkWell(
          onTap: () {
            // Navigator.push(context, MaterialPageRoute(builder: (_)=>Questions_Tab()));
            Navigator.pushNamed(context, Routes.question_tab);
          },
          child: Material(
            elevation: 3,
            borderRadius: BorderRadius.circular(radius),
            child: Container(
              decoration: BoxDecoration(
                  // color: primarySwatch[100],
                  borderRadius: BorderRadius.circular(radius),
                  border: Border.all(color: primaryColor, width: .5)),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 0),
                child: ListTile(
                  leading: Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.pink[200],
                    ),
                    child: Icon(Icons.settings),
                  ),
                  title: Text(
                    collection.title,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: 13,
                      color: primarySwatch[900],
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    color: primarySwatch[900],
                  ),
                  subtitle: Text(
                    "${collection.totalQuestion} Question",
                    style: TextStyle(color: primarySwatch[500], fontSize: 12),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class QuestionCollection {
  final String title;
  final int totalQuestion;

  QuestionCollection({this.title = "", this.totalQuestion = 0});
}

final List<QuestionCollection> collections = [
  QuestionCollection(
      title: "Being Exceptional at Accountabilty", totalQuestion: 6),
  QuestionCollection(title: "Cautious Driving", totalQuestion: 11),
  QuestionCollection(title: "Closing an On Site Estimate", totalQuestion: 4),
  QuestionCollection(
      title: "Coaching Relational vs. Transactional", totalQuestion: 20),
  QuestionCollection(
      title: "Being Exceptional at Accountabilty", totalQuestion: 12),
  QuestionCollection(title: "Cautious Driving", totalQuestion: 10),
];
