import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:you_move_me/UI/components/common_button.dart';
import 'package:you_move_me/UI/home/schedule_tab/request_leave.dart';
import 'package:you_move_me/UI/theme/apptheme.dart';
import 'package:table_calendar/table_calendar.dart';

final List<int> scheduleDays = [15];
final List<int> leaveDays = [26];

class Schedule extends StatefulWidget {
  const Schedule({Key? key}) : super(key: key);

  @override
  _ScheduleState createState() => _ScheduleState();
}

class _ScheduleState extends State<Schedule> {
  // CalendarFormat style = CalendarFormat.twoWeeks;
  DateTime currentTime = DateTime.now();

  @override
  Widget build(BuildContext context) {
    TextStyle defaultTextStyle =
        TextStyle(color: primarySwatch[400]!, fontSize: 14);
    final double dotWidth = 8;
    final double rowHeight = 35;
    return SingleChildScrollView(
      child: Container(
        height: MediaQuery.of(context).size.height * .78,
        child: Column(
          children: [
            Card(
              elevation: 5,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                child: Container(
                  // height: MediaQuery.of(context).size.width,
                  child: TableCalendar(
                      currentDay: currentTime,
                      onDaySelected: (d, da) {
                        setState(() {
                          currentTime = da;
                        });
                      },
                      eventLoader: (data) {
                        if (scheduleDays.contains(data.day)) {
                          return <int>[1];  
                        }
                        if (leaveDays.contains(data.day)) {
                          if (data.isAfter(DateTime.now())) {
                            return [];
                          }
                          return <int>[0];
                        }
                        return [];
                      },
                      rangeSelectionMode: RangeSelectionMode.toggledOn,
                      // pageAnimationEnabled: false,
                      // pageJumpingEnabled: false,
                      dayHitTestBehavior: HitTestBehavior.deferToChild,
                      calendarBuilders: CalendarBuilders(
                        defaultBuilder: (con, d, data) {
                          return Container(
                            color: Colors.white,
                            child: Center(
                                child: Text(
                              "${d.day}",
                              style: defaultTextStyle.copyWith(
                                  color: d.isAfter(DateTime.now())
                                      ? primarySwatch[600]
                                      : primarySwatch[300]),
                            )),
                          );
                        },
                        // dowBuilder: (context, d) {
                        //   return Container(
                        //       decoration:
                        //           BoxDecoration(color: primarySwatch[100]),
                        //       child: Center(
                        //           child: Text(
                        //         weekDays[d.weekday]!,
                        //         style: TextStyle(
                        //           color: primarySwatch[900],
                        //           fontSize: 14,
                        //         ),
                        //       )));
                        // },
                        outsideBuilder: (context, d, data) {
                          return Center(
                              child: Text(
                            "${d.day}",
                            style: defaultTextStyle.copyWith(
                                color: Colors.grey.withOpacity(.5)),
                          ));
                        },

                        markerBuilder: (context, d, data) {
                          if (data.isEmpty) return SizedBox();
                          // return Text(d.day.toString());
                          return Center(
                            child: Container(
                                height: rowHeight - 4,
                                width: rowHeight - 4,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                      color: data[0] == 0
                                          ? Colors.red
                                          : Colors.green,
                                      width: 1.8),
                                )
                                // height: dotWidth,
                                // width: dotWidth,
                                ),
                          );
                          return Align(
                            alignment: Alignment.bottomCenter,
                            child: Card(
                              margin: EdgeInsets.all(0),
                              elevation: 0,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10000),
                                // side: BorderSide(color: Colors.red),
                              ),
                              child: Container(
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color:
                                      data[0] == 0 ? Colors.red : Colors.green,
                                ),
                                height: dotWidth,
                                width: dotWidth,
                              ),
                            ),
                          );
                        },
                        selectedBuilder: (context, d, date) {
                          return Container(
                            color: Colors.pink,
                            height: 10,
                            width: 10,
                          );
                        },
                        todayBuilder: (context, d, data) {
                          return Center(
                            child: Container(
                              decoration: BoxDecoration(
                                  border:
                                      Border.all(color: primarySwatch[900]!),
                                  shape: BoxShape.circle),
                              child: Padding(
                                padding: const EdgeInsets.all(2.0),
                                child: Container(
                                  height: rowHeight - 8,
                                  width: rowHeight - 8,
                                  decoration: BoxDecoration(
                                      // borderRadius: BorderRadius.circular(4),
                                      shape: BoxShape.circle,
                                      color: primarySwatch[100]),
                                  child: Center(
                                    child: Text(
                                      d.day.toString(),
                                      style: defaultTextStyle.copyWith(
                                        color: primarySwatch[900],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                      headerStyle: HeaderStyle(
                        headerPadding: EdgeInsets.zero,
                        titleTextStyle: Theme.of(context).textTheme.bodyText1!,
                        formatButtonVisible: false,
                        titleCentered: true,
                        // leftChevronVisible: false,
                        // rightChevronVisible: false,
                        rightChevronMargin: EdgeInsets.zero,
                        leftChevronMargin: EdgeInsets.zero,
                        leftChevronPadding: EdgeInsets.zero,
                        leftChevronIcon: Icon(
                          Icons.chevron_left,
                          size: 30,
                          color: primarySwatch[900],
                        ),
                        rightChevronIcon: Icon(
                          Icons.chevron_right,
                          size: 30,
                          color: primarySwatch[900],
                        ),
                        rightChevronPadding: EdgeInsets.zero,
                        headerMargin: EdgeInsets.only(bottom: 10),
                      ),
                      calendarStyle: CalendarStyle(
                        markerDecoration: BoxDecoration(color: Colors.red),
                        markerSize: 4,
                        cellPadding: EdgeInsets.zero,
                        markersAutoAligned: true,
                        // weekendTextStyle:
                        //     defaultTextStyle.copyWith(color: Colors.black),
                        // weekendDecoration: BoxDecoration(color: Colors.black),
                        holidayDecoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color: primarySwatch[700]!)),
                        holidayTextStyle: TextStyle(color: primarySwatch[400]),
                        cellMargin: EdgeInsets.zero,
                      ),
                      rowHeight: rowHeight,
                      daysOfWeekHeight: 40,
                      // daysOfWeekHeight: 50,
                      daysOfWeekStyle: DaysOfWeekStyle(
                        weekdayStyle: TextStyle(
                          color: primarySwatch[900],
                          fontWeight: FontWeight.w300,
                        ),
                        weekendStyle: TextStyle(
                          color: primarySwatch[900],
                          fontWeight: FontWeight.w300,
                        ),
                        decoration: BoxDecoration(
                          color: primarySwatch[100],
                          border: Border.all(
                            color: primarySwatch[900]!,
                            width: .2,
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      daysOfWeekVisible: true,
                      // holidayPredicate: (d) {
                      //   return d.day == (DateTime.now().day + 1);
                      // },
                      startingDayOfWeek: StartingDayOfWeek.sunday,
                      focusedDay: currentTime,
                      firstDay: DateTime.utc(2015),
                      lastDay: DateTime.utc(2024)),
                ),
              ),
            ),
            Expanded(child: getDayCard),
          ],
        ),
      ),
    );
  }

  Widget get getDayCard {
    return Column(
      children: [
        if (scheduleDays.contains(currentTime.day))
          Expanded(
            child: Column(
              children: [
                Card(
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        const SizedBox(
                          width: 8,
                        ),
                        Card(
                          elevation: 5,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5)),
                          child: Container(
                            height: 60,
                            width: 60,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  weekDays[currentTime.weekday]!,
                                  style: Theme.of(context).textTheme.bodyText1,
                                ),
                                Text(
                                  (currentTime.day).toString(),
                                  style: TextStyle(
                                      height: 1, fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Perform Dance at concert",
                              maxLines: 2,
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16,
                                  color: primarySwatch[900]),
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.schedule,
                                  size: 14,
                                  color: primarySwatch[400],
                                ),
                                SizedBox(
                                  width: 4,
                                ),
                                Text(
                                  "9:00am - 11:30am",
                                  style: TextStyle(
                                      color: primarySwatch[400], fontSize: 14),
                                )
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
        if (leaveDays.contains(currentTime.day))
          Expanded(
            child: Column(
              children: [
                Card(
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        const SizedBox(
                          width: 8,
                        ),
                        Card(
                          elevation: 5,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5)),
                          child: Container(
                            height: 60,
                            width: 60,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  weekDays[currentTime.weekday]!,
                                  style: Theme.of(context).textTheme.bodyText1,
                                ),
                                Text(
                                  (currentTime.day).toString(),
                                  style: TextStyle(height: 1),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Leave Reason",
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 12,
                                    color: primarySwatch[900]),
                              ),
                              Text(
                                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
                                maxLines: 3,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                    color: primarySwatch[300], fontSize: 12),
                              ),
                              // Row(
                              //   children: [
                              //     Icon(
                              //       Icons.schedule,
                              //       size: 14,
                              //       color: primarySwatch[200],
                              //     ),
                              //     SizedBox(
                              //       width: 4,
                              //     ),
                              //     Text(
                              //       "9:00am - 11:30am",
                              //       style: TextStyle(
                              //           color: primarySwatch[200], fontSize: 12),
                              //     )
                              //   ],
                              // )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        if (!leaveDays.contains(currentTime.day) &&
            !scheduleDays.contains(currentTime.day))
          Expanded(child: NoScheduleWidget()),
        if (currentTime.isAfter(DateTime.now()))
          Center(
              child: CommonButton(
            lable: "Request Leave",
            ontap: () {
              showReuestDialog(context);
            },
          )),
        const SizedBox(
          height: 10,
        ),
      ],
    );
  }
}

class NoScheduleWidget extends StatelessWidget {
  const NoScheduleWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("No Shift or Leave Found"),
    );
  }
}

Map<int, String> weekDays = {
  1: "Mon",
  2: "Tue",
  3: "Wed",
  4: "Thu",
  5: "Fri",
  6: "Sat",
  7: "Sun"
};
