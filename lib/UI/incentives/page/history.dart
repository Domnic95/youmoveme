import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:you_move_me/UI/components/common_appbar.dart';
import 'package:you_move_me/UI/theme/apptheme.dart';

class History extends StatefulWidget {
  @override
  _HistoryState createState() => _HistoryState();
}

class _HistoryState extends State<History> {
  int selectedIndex = 0;
  List<String> tabs = [
    'EARNED',
    'USED',
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: CommonAppbar(),
        body: Column(
          children: [
            SizedBox(
              height: 15,
            ),
            Container(
              decoration: BoxDecoration(
                  color: Color(0xFF53ac54),

                  // color: Color(0xFF25AA25),
                  borderRadius: BorderRadius.circular(10)),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 20,
                    ),
                    Icon(
                      Icons.history,
                      size: 50,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    SizedBox(
                      width: .5,
                      height: 55,
                      child: Container(
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "TOKEN HISTORY",
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Tokens Earned: 326",
                          style: TextStyle(
                            // fontSize: 18,
                            color: Colors.white,
                            // fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        Text(
                          "Tokens Used: 76",
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                for (int i = 0; i < tabs.length; i++)
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 10),
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
                                border: Border.all(
                                    color: primarySwatch[900]!, width: .5)),
                            child: Center(
                                child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 10),
                              child: Center(
                                child: Text(
                                  tabs[i],
                                  maxLines: 1,
                                  overflow: TextOverflow.visible,
                                  style: selectedIndex != i
                                      ? TextStyle(
                                          color: primarySwatch[900],
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold)
                                      : TextStyle(
                                          color: Colors.white,
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold),
                                ),
                              ),
                            )),
                          ),
                        ),
                      ),
                    ),
                  ),
              ],
            ),
            if (selectedIndex == 0)
              Expanded(
                  child: ListView.builder(
                      itemCount: Earneds.length,
                      itemBuilder: (context, index) {
                        return Card(
                          margin:
                              EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                          elevation: 3,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: ListTile(
                            contentPadding: EdgeInsets.symmetric(
                                horizontal: 15, vertical: 5),
                            title: Text(
                              "${Earneds[index].title}",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 17),
                            ),
                            subtitle: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: 8,
                                ),
                                Text(
                                  "TOKENS: ${Earneds[index].tokens} \t\t ${Earneds[index].date}",
                                  style: TextStyle(fontSize: 14),
                                ),
                              ],
                            ),
                          ),
                        );
                      })),
            if (selectedIndex == 1)
              Expanded(
                child: ListView.builder(
                  itemCount: 2,
                  itemBuilder: (context, index) {
                    return Card(
                      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                      elevation: 3,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: ListTile(
                        contentPadding:
                            EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                        title: Text(
                          "${Earneds[index + 5].title}",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 17),
                        ),
                        subtitle: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              "TOKENS: ${Earneds[index].tokens} \t\t ${Earneds[index + 5].date}",
                              style: TextStyle(fontSize: 14),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
          ],
        ),
      ),
    );
  }
}

class Earned {
  String title;
  int tokens;
  String date;

  Earned({required this.title, required this.tokens, required this.date});
}

List<Earned> Earneds = [
  Earned(
      title:
          "Basic Knowledge of city resources, offload sites and restrictions",
      tokens: 4,
      date: "21/01/2020"),
  Earned(title: "test1", tokens: 5, date: "18/12/2019"),
  Earned(title: "7 september first", tokens: 5, date: "26/11/2019"),
  Earned(title: "Exercise QFAs routinely", tokens: 2, date: "26/11/2019"),
  Earned(
      title: "Understands REEAP and executes consistently",
      tokens: 11,
      date: "26/11/2019"),
  Earned(title: "30 september", tokens: 2, date: "09/10/2019"),
  Earned(title: "11", tokens: 6, date: "09/10/2019"),
  Earned(title: "test 2510 - 1", tokens: 17, date: "09/10/2019"),
  Earned(title: "testing", tokens: 20, date: "09/10/2019"),
  Earned(title: "300", tokens: 10, date: "009/10/2019"),
  Earned(title: "Test Career path 2910", tokens: 10, date: "09/10/2019"),
  Earned(title: "Communicating with Ops", tokens: 17, date: "09/10/201"),
];
