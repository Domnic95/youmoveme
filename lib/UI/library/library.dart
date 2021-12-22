import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:you_move_me/UI/components/common_appbar.dart';
import 'package:you_move_me/UI/library/video_tab.dart';
import 'package:you_move_me/UI/theme/apptheme.dart';

class Library extends StatefulWidget {
  @override
  _LibraryState createState() => _LibraryState();
}

class _LibraryState extends State<Library> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      // appBar: AppBar(
      //   title: Text(
      //     "LIBRARY",
      //     style: TextStyle(fontWeight: FontWeight.bold, letterSpacing: 0.5),
      //   ),
      //   actions: [
      //     Icon(
      //       Icons.menu_outlined,
      //     ),
      //     SizedBox(
      //       width: 10,
      //     ),
      //   ],
      // ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                    // margin: EdgeInsets.only(left: 15),
                    height: 40,
                    width: size.width * 0.8,
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 10,
                        ),
                        Icon(
                          Icons.search_outlined,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Search",
                        ),
                      ],
                    )),
                Icon(
                  Icons.filter_list_outlined,
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: Mes.length,
                scrollDirection: Axis.vertical,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                              builder: (context) => VideoTab(
                                    title: Mes[index].mesg,
                                  )),
                        );
                      });
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 4.0, horizontal: 8),
                      child: Container(
                        // margin: EdgeInsets.symmetric(horizontal: 10),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: primaryColor, width: .5),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey,
                              blurRadius: 3,
                            )
                          ],
                        ),

                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            // SizedBox(
                            //   width: 10,
                            // ),
                            Container(
                              margin: EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 4),
                              child: Text(
                                "${Mes[index].mesg}",
                                //style: TextStyle(height: 1.5),
                              ),
                            ),
                            // SizedBox(
                            //   width: 40,
                            // ),
                            Container(
                              margin: EdgeInsets.symmetric(
                                  vertical: 15, horizontal: 5),
                              child: Icon(
                                Icons.arrow_forward_ios,
                                color: primarySwatch[900],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}

class mes {
  String mesg;
  mes({required this.mesg});
}

List<mes> Mes = [
  mes(mesg: "#NoSafetyKnowPain Episode 2"),
  mes(mesg: "CSL Training - SCENARIO 2"),
  mes(mesg: "CSL Training - SCENARIO 1"),
  mes(mesg: "Padding & Wrapping Glass"),
  mes(mesg: "1-800-GOT-JUNK? The \nImportance of Junk Patrols &\nRole Play"),
  mes(
      mesg:
          "1-800-GOT-JUNK? Grand Rapids \n- Negotiation Protocol&\nRole Play"),
  mes(mesg: "1-800-GOT-JUNK? Grand Rapids \n- Recycling Center Info"),
  mes(mesg: "YMM Training - Proper Lifting \nTechniques"),
  mes(mesg: "1-800-GOT-JUNK? -How to \nperform a Whip Around \nInspection"),
  mes(mesg: "YMM Training - How to Upload \nRelease of Liability"),
  mes(mesg: "YMM Training - Discussing \nGratuity with Customers"),
  mes(mesg: "YMM Training - Wearing Gloves \n& Masks Onsite"),
  mes(mesg: "Truck Time with Marcus - Truck \nGreasin"),
  mes(mesg: "You Move Me KC Training - \nMoving With Care"),
  mes(mesg: "You Move Me KC Training - \nContracts"),
  mes(mesg: "You Move Me KC Training - \nAdding Another Crew Onsite"),
  mes(mesg: "You Move Me KC Training - \nTraining Crew Member Onsite"),
  mes(mesg: "You Move Me KC Training - \nTelling Customer About a \nDamage"),
  mes(mesg: "You Move Me KC Training - \nMove Exceeding Estimate"),
  mes(mesg: "Southwind Scenes Episode 4 \n(March 29th,2020)"),
  mes(mesg: "Southwind Scenes Episode 3 \n(March 15th,2020)"),
  mes(mesg: "Southwind Scenes Episode 2 \n(March 8th,2020)"),
  mes(mesg: "Southwind Scenes Episode 1 \n(February 28th,2020)"),
  mes(
      mesg:
          "The Story of #FOTY2019 - from \nDream to Reality - Bryce Atagi & \nSalt Lake City"),
  mes(mesg: "How to Use Straps Onsite \n(1-800-GOT-JUNK?)"),
  mes(mesg: "How to Move a Stainless Steel \nFridge(You Move Me)"),
  mes(mesg: "Truck Time with Marcus - How \nTo Replace a Fuel Sending Unit"),
  mes(mesg: "Truck Time with Marcus - \nKingpin Knowledge"),
  mes(mesg: "Exceptional Call Ahead Training \n(1-800-GOT-JUNK?)"),
  mes(mesg: "Exceptional Call Ahead Training \n(1-800-GOT-JUNK?)"),
  mes(mesg: "Mindshift Minutes Episode 4 \n(March 28th,2020)"),
  mes(mesg: "Mindshift Minutes Episode 3 \n(March 21th,2020)"),
  mes(mesg: "Mindshift Minutes Episode 2 \n(March 14th,2020)"),
  mes(mesg: "Mindshift Minutes Episode 1 \n(March 7th,2020)"),
  mes(mesg: "Day 10 Elite New Hire Training"),
  mes(mesg: "Day 9 Elite New Hire Training"),
  mes(mesg: "Day 8 Elite New Hire Training"),
  mes(mesg: "Day 7 Elite New Hire Training"),
  mes(mesg: "Day 6 Elite New Hire Training"),
  mes(mesg: "Day 5 Elite New Hire Training"),
  mes(mesg: "Day 4 Elite New Hire Training"),
  mes(mesg: "Day 3 Elite New Hire Training"),
  mes(mesg: "Day 2 Elite New Hire Training"),
  mes(mesg: "Day 1 Elite New Hire Training"),
  mes(mesg: "Formal/Informal Coaching \nProcess"),
  mes(mesg: "Profit Share Walk Through"),
  mes(mesg: "Offload Addresses"),
  mes(mesg: "Quality Focus Area"),
  mes(mesg: "ECIRR with Jason Santifer"),
  mes(mesg: "Sample"),
  mes(mesg: "The 1-800-Got-Junk? Story"),
  mes(mesg: "AB's Step to A Google Review"),
  mes(mesg: "Safety Police"),
  mes(mesg: "How to perform an Estimate"),
];
