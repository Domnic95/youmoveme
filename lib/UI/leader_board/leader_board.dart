import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:you_move_me/UI/components/common_appbar.dart';
import 'package:you_move_me/UI/theme/apptheme.dart';

class LeaderBoard extends StatefulWidget {
  @override
  _LeaderBoardState createState() => _LeaderBoardState();
}

class _LeaderBoardState extends State<LeaderBoard> {
  int value = 0;

  String dropdownValue = 'One';
  bool isDropdownOpened = false;
  bool showsecondpop = false;
  List<String> tabs = ['Revenue', 'AJS', 'R.Hour', 'NPS'];
  int selectedIndex = 0;
  dynamic currentValue = "1";

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
        child: Scaffold(
      // appBar: AppBar(
      //   title: Text(
      //     "LEADERBOARD",
      //     style: TextStyle(fontWeight: FontWeight.bold, letterSpacing: 1),
      //   ),
      //   actions: [
      //     Container(margin: EdgeInsets.only(right: 15), child: Icon(Icons.menu))
      //   ],
      // ),
      body: Column(
        children: [
          // Padding(
          //   padding: const EdgeInsets.all(10),
          //   child: GestureDetector(
          //     onTap: () {
          //       setState(() {
          //         isDropdownOpened = !isDropdownOpened;
          //       });
          //     },
          //     child: Container(
          //       decoration: BoxDecoration(
          //           borderRadius: BorderRadius.circular(8),
          //           color: primarySwatch[900]),
          //       padding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
          //       child: Row(
          //         children: [
          //           Text(
          //             "Revenue".toUpperCase(),
          //             style: TextStyle(
          //                 fontSize: 22,
          //                 color: Colors.white,
          //                 fontWeight: FontWeight.bold,
          //                 letterSpacing: 1),
          //           ),
          //           Spacer(),
          //           Icon(
          //            isDropdownOpened ?  Icons.arrow_drop_down: Icons.arrow_drop_up,
          //             color: Colors.white,
          //           ),
          //         ],
          //       ),
          //     ),
          //   ),
          // )
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 18),
            child: Container(
              decoration: BoxDecoration(
                  border: Border.all(color: primarySwatch[900]!),
                  borderRadius: BorderRadius.circular(10)),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 2),
                child: DropdownButton(
                  isExpanded: true,
                  underline: Container(),
                  items: [
                    DropdownMenuItem(
                      child: Text("SouthWind"),
                      value: "1",
                    ),
                    DropdownMenuItem(
                      child: Text("SouthWind 2"),
                      value: "2",
                    ),
                  ],
                  value: currentValue,
                  onChanged: (v) {
                    currentValue = v;
                    setState(() {});
                  },
                ),
              ),
            ),
          ),
          // ExpansionTile(
          //   onExpansionChanged: (v) {
          //     setState(() {});
          //   },
          //   title: Text(
          //     "revenue".toUpperCase(),
          //     style: TextStyle(
          //       fontWeight: FontWeight.bold,
          //       letterSpacing: 1,
          //     ),
          //   ),
          //   children: [
          //     RadioListTile(
          //       value: 1,
          //       groupValue: value,
          //       onChanged: (val) {
          //         setState(
          //           () {
          //             value != val;
          //           },
          //         );
          //       },
          //       title: Text("Male"),
          //     ),
          //     RadioListTile(
          //       value: 2,
          //       groupValue: value,
          //       onChanged: (val) {
          //         setState(
          //           () {
          //             value != val;
          //           },
          //         );
          //       },
          //       title: Text("Female"),
          //     ),
          //   ],
          // ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                children: [
                  Row(
                    children: [
                      for (int i = 0; i < tabs.length; i++)
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 4, vertical: 10),
                            child: InkWell(
                              borderRadius: BorderRadius.circular(1000),
                              onTap: () {
                                setState(() {
                                  selectedIndex = i;
                                  showsecondpop = !showsecondpop;
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
                                          color: primarySwatch[900]!,
                                          width: .5)),
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
                  ),
                  // if (selectedIndex == 0)
                  Expanded(
                    child: ListView.builder(
                        itemCount: Revenuelist.length,
                        itemBuilder: (context, index) {
                          if (selectedIndex == 0) {
                            return Card(
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 8, vertical: 14),
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      "${index + 1}",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "${Revenuelist[index].title}",
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              fontSize: 14,
                                              color: Colors.black),
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Text(
                                          "${Revenuelist[index].subtitle}",
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(
                                              color: Colors.grey,
                                              height: 1,
                                              fontSize: 14),
                                        )
                                      ],
                                    ),
                                    Spacer(),
                                    Row(
                                      children: [
                                        // Icon(
                                        //   Icons.attach_money,
                                        //   size: 16,
                                        // ),
                                        Text(
                                          "\$${Revenuelist[index].income}",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 14,
                                          ),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              // child: ListTile(
                              //   horizontalTitleGap: 0,
                              //   leading: Text("${index + 1}"),
                              // title: Text(
                              //   "${Revenuelist[index].title}",
                              //   style: TextStyle(
                              //       fontWeight: FontWeight.w600, fontSize: 14),
                              // ),
                              //   subtitle: Text("${Revenuelist[index].subtitle}"),
                              //   trailing: Container(
                              //     width: 100,
                              // child: Row(
                              //   children: [
                              //     Icon(Icons.attach_money),
                              //     Text(
                              //       "${Revenuelist[index].income}",
                              //       style: TextStyle(
                              //           fontWeight: FontWeight.bold),
                              //     )
                              //   ],
                              // ),
                              //   ),
                              // ),
                            );
                          }
                          if (selectedIndex == 1) {
                            return Card(
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 8, vertical: 14),
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      "${index + 1}",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "${AJSlist[index].title}",
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              fontSize: 14,
                                              color: Colors.black),
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Text(
                                          "${AJSlist[index].subtitle}",
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(
                                              color: Colors.grey,
                                              height: 1,
                                              fontSize: 14),
                                        )
                                      ],
                                    ),
                                    Spacer(),
                                    Row(
                                      children: [
                                        // Icon(
                                        //   Icons.attach_money,
                                        //   size: 16,
                                        // ),
                                        Text(
                                          "\$${AJSlist[index].income}",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 14,
                                          ),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              // child: ListTile(
                              //   horizontalTitleGap: 0,
                              //   leading: Text("${index + 1}"),
                              // title: Text(
                              //   "${Revenuelist[index].title}",
                              //   style: TextStyle(
                              //       fontWeight: FontWeight.w600, fontSize: 14),
                              // ),
                              //   subtitle: Text("${Revenuelist[index].subtitle}"),
                              //   trailing: Container(
                              //     width: 100,
                              // child: Row(
                              //   children: [
                              //     Icon(Icons.attach_money),
                              //     Text(
                              //       "${Revenuelist[index].income}",
                              //       style: TextStyle(
                              //           fontWeight: FontWeight.bold),
                              //     )
                              //   ],
                              // ),
                              //   ),
                              // ),
                            );
                          }
                          if (selectedIndex == 2) {
                            return Card(
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 8, vertical: 14),
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      "${index + 1}",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "${Rhourlist[index].title}",
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              fontSize: 14,
                                              color: Colors.black),
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Text(
                                          "${Rhourlist[index].subtitle}",
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(
                                              color: Colors.grey,
                                              height: 1,
                                              fontSize: 14),
                                        )
                                      ],
                                    ),
                                    Spacer(),
                                    Row(
                                      children: [
                                        // Icon(
                                        //   Icons.attach_money,
                                        //   size: 16,
                                        // ),
                                        Text(
                                          "\$${Rhourlist[index].income}",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 14,
                                          ),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              // child: ListTile(
                              //   horizontalTitleGap: 0,
                              //   leading: Text("${index + 1}"),
                              // title: Text(
                              //   "${Revenuelist[index].title}",
                              //   style: TextStyle(
                              //       fontWeight: FontWeight.w600, fontSize: 14),
                              // ),
                              //   subtitle: Text("${Revenuelist[index].subtitle}"),
                              //   trailing: Container(
                              //     width: 100,
                              // child: Row(
                              //   children: [
                              //     Icon(Icons.attach_money),
                              //     Text(
                              //       "${Revenuelist[index].income}",
                              //       style: TextStyle(
                              //           fontWeight: FontWeight.bold),
                              //     )
                              //   ],
                              // ),
                              //   ),
                              // ),
                            );
                          }
                          if (selectedIndex == 3) {
                            return Card(
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 8, vertical: 14),
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      "${index + 1}",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "${NPSlist[index].title}",
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              fontSize: 14,
                                              color: Colors.black),
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Text(
                                          "${NPSlist[index].subtitle}",
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(
                                              color: Colors.grey,
                                              height: 1,
                                              fontSize: 14),
                                        )
                                      ],
                                    ),
                                    Spacer(),
                                    Row(
                                      children: [
                                        // Icon(
                                        //   Icons.attach_money,
                                        //   size: 16,
                                        // ),
                                        Text(
                                          "\$${NPSlist[index].income}",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 14,
                                          ),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              // child: ListTile(
                              //   horizontalTitleGap: 0,
                              //   leading: Text("${index + 1}"),
                              // title: Text(
                              //   "${Revenuelist[index].title}",
                              //   style: TextStyle(
                              //       fontWeight: FontWeight.w600, fontSize: 14),
                              // ),
                              //   subtitle: Text("${Revenuelist[index].subtitle}"),
                              //   trailing: Container(
                              //     width: 100,
                              // child: Row(
                              //   children: [
                              //     Icon(Icons.attach_money),
                              //     Text(
                              //       "${Revenuelist[index].income}",
                              //       style: TextStyle(
                              //           fontWeight: FontWeight.bold),
                              //     )
                              //   ],
                              // ),
                              //   ),
                              // ),
                            );
                          }
                          return Container();
                        }),
                  ),
                  // if (selectedIndex == 1)
                  //   Container(
                  //     height: size.height * 0.5,
                  //     child: ListView.builder(
                  //         itemCount: Revenuelist.length,
                  //         itemBuilder: (context, index) {
                  //           return Column(
                  //             children: [
                  //               ListTile(
                  //                 leading: Text("${index + 1}"),
                  //                 title: Text("${Revenuelist[index].title}"),
                  //                 subtitle:
                  //                     Text("${Revenuelist[index].subtitle}"),
                  //                 trailing: Container(
                  //                   width: 100,
                  //                   child: Row(
                  //                     children: [
                  //                       Icon(Icons.attach_money),
                  //                       Text("${Revenuelist[index].income}")
                  //                     ],
                  //                   ),
                  //                 ),
                  //               ),
                  //               Divider(
                  //                 endIndent: 20,
                  //                 indent: 20,
                  //                 height: 0,
                  //               ),
                  //             ],
                  //           );
                  //         }),
                  //   ),
                  // if (selectedIndex == 2)
                  //   Container(
                  //     height: size.height * 0.5,
                  //     child: ListView.builder(
                  //         itemCount: Revenuelist.length,
                  //         itemBuilder: (context, index) {
                  //           return Column(
                  //             children: [
                  //               ListTile(
                  //                 leading: Text("${index + 1}"),
                  //                 title: Text("${Revenuelist[index].title}"),
                  //                 subtitle:
                  //                     Text("${Revenuelist[index].subtitle}"),
                  //                 trailing: Container(
                  //                   width: 100,
                  //                   child: Row(
                  //                     children: [
                  //                       Icon(Icons.attach_money),
                  //                       Text("${Revenuelist[index].income}")
                  //                     ],
                  //                   ),
                  //                 ),
                  //               ),
                  //               Divider(
                  //                 endIndent: 20,
                  //                 indent: 20,
                  //                 height: 0,
                  //               ),
                  //             ],
                  //           );
                  //         }),
                  //   ),
                  // if (selectedIndex == 3)
                  //   Container(
                  //     height: size.height * 0.5,
                  //     child: ListView.builder(
                  //         itemCount: Revenuelist.length,
                  //         itemBuilder: (context, index) {
                  //           return Column(
                  //             children: [
                  //               ListTile(
                  //                 leading: Text("${index + 1}"),
                  //                 title: Text("${Revenuelist[index].title}"),
                  //                 subtitle:
                  //                     Text("${Revenuelist[index].subtitle}"),
                  //                 trailing: Container(
                  //                   width: 100,
                  //                   child: Row(
                  //                     children: [
                  //                       Icon(Icons.attach_money),
                  //                       Text("${Revenuelist[index].income}")
                  //                     ],
                  //                   ),
                  //                 ),
                  //               ),
                  //               Divider(
                  //                 endIndent: 20,
                  //                 indent: 20,
                  //                 height: 0,
                  //               ),
                  //             ],
                  //           );
                  //         }),
                  //   ),
                ],
              ),
            ),
          ),
        ],
      ),
    ));
  }
}

class Revenuelistclass {
  String title;
  String subtitle;
  String income;
  Revenuelistclass(
      {required this.title, required this.subtitle, required this.income});
}

List<Revenuelistclass> Revenuelist = [
  Revenuelistclass(
      title: "Chumley, Layke", subtitle: "Indy", income: "35,096.31"),
  Revenuelistclass(
      title: "Gracia Gonzalez,joel", subtitle: "Indy", income: "33,263.44"),
  Revenuelistclass(
      title: "Morris, john", subtitle: "Indy", income: "32,246.80"),
  Revenuelistclass(
      title: "Pla, Anthony", subtitle: "ATLNW", income: "29,140.61"),
  Revenuelistclass(
      title: "Nadir, Mohammad", subtitle: "Omaha", income: "28,624.35"),
  Revenuelistclass(
      title: "Kehr, Dylan", subtitle: "ATLNW", income: "28,485.18"),
  Revenuelistclass(
      title: "McClary, Malik", subtitle: "ATLNW", income: "28,089.13"),
  Revenuelistclass(
      title: "Wheeldon, Rex", subtitle: "Indy", income: "27,890.77"),
  Revenuelistclass(
      title: "Cameron, Andrew", subtitle: "Indy", income: "26,840.93"),
  Revenuelistclass(
      title: "aprel, mark", subtitle: "ATLNW", income: "25,737.45"),
];

List<Revenuelistclass> AJSlist = [
  Revenuelistclass(title: "kushlan, luke", subtitle: "SLC", income: "2,507.67"),
  Revenuelistclass(
      title: "Fields, Jermaine", subtitle: "GR", income: "2,147.00"),
  Revenuelistclass(
      title: "Mickenes, Montai", subtitle: "KC", income: "1,884.00"),
  Revenuelistclass(title: "Copron, Travis", subtitle: "GR", income: "1,521.29"),
  Revenuelistclass(
      title: "Stevenson, Terrel", subtitle: "ATLNW", income: "924.18"),
  Revenuelistclass(
      title: "McClary, Malik", subtitle: "ATLNW", income: "794.72"),
  Revenuelistclass(title: "Harris, Omar", subtitle: "Naples", income: "718.37"),
  Revenuelistclass(
      title: "Blevins, Angela", subtitle: "Reno", income: "717.00"),
  Revenuelistclass(title: "Wheeldon, Rex", subtitle: "Indy", income: "699.51"),
  Revenuelistclass(title: "Harris, KT", subtitle: "KC", income: "692.00"),
];

List<Revenuelistclass> Rhourlist = [
  Revenuelistclass(title: "Fields, Jermaine", subtitle: "GR", income: "644.10"),
  Revenuelistclass(title: "Copron, Travis", subtitle: "GR", income: "473.29"),
  Revenuelistclass(title: "Huss, Kegan", subtitle: "GR", income: "429.00"),
  Revenuelistclass(title: "kushlan, luke", subtitle: "SLC", income: "313.46"),
  Revenuelistclass(title: "Botello, Julian", subtitle: "GR", income: "302.84"),
  Revenuelistclass(title: "Morris, John", subtitle: "Indy", income: "294.98"),
  Revenuelistclass(title: "Wheeldon, Rex", subtitle: "Indy", income: "265.15"),
  Revenuelistclass(
      title: "Nadir, Mohammad", subtitle: "Omaha", income: "265.02"),
  Revenuelistclass(title: "Chumley, Layke", subtitle: "Indy", income: "259.59"),
  Revenuelistclass(title: "Weil, Keegan", subtitle: "Omaha", income: "252.16"),
];

List<Revenuelistclass> NPSlist = [
  Revenuelistclass(title: "Perez, Victor", subtitle: "Naples", income: "100"),
  Revenuelistclass(title: "Mends, Joel", subtitle: "ATLNW", income: "100"),
  Revenuelistclass(title: "Vargas, Adrian", subtitle: "KC", income: "100"),
  Revenuelistclass(title: "Dozier, Anthony", subtitle: "Indy", income: "100"),
  Revenuelistclass(title: "Brown, Jared", subtitle: "Indy", income: "100"),
  Revenuelistclass(title: "aprel, mark", subtitle: "ATLNW", income: "100"),
  Revenuelistclass(title: "Snelling, Antwan", subtitle: "ATLNW", income: "100"),
  Revenuelistclass(title: "Chumley, Layke", subtitle: "Indy", income: "100"),
  Revenuelistclass(title: "Morris, John", subtitle: "Indy", income: "100"),
  Revenuelistclass(title: "Pla, Anthony", subtitle: "ATLNW", income: "100"),
];
