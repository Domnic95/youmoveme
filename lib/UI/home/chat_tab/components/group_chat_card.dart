import 'package:flutter/material.dart';
import 'package:you_move_me/UI/theme/apptheme.dart';
import 'package:you_move_me/routes/routes.dart';

class GroupChatCard extends StatelessWidget {
  int index;
  GroupChatCard({required this.index});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.pushNamed(context, Routes.groupChatScreen),
      child: Container(
        // height: 50,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // CircleAvatar(
              //   radius: 25,
              //   backgroundImage: NetworkImage(
              //       "https://images.unsplash.com/photo-1570295999919-56ceb5ecca61?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=880&q=80"),
              // ),
              Container(
                height: 50,
                width: 50,
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(100000),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Image.network(
                              "https://images.unsplash.com/photo-1570295999919-56ceb5ecca61?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=880&q=80",
                              height: 25,
                              width: 25,
                              fit: BoxFit.cover,
                            ),
                            Image.network(
                              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRhrlH9QlMjus9pQY0IPfd97FE7RdNVga3MY-lMqsaltgspxx3q_-Bg6wcOJDYGnPy1gIU&usqp=CAU",
                              height: 25,
                              width: 25,
                              fit: BoxFit.cover,
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(10),
                                  bottomRight: Radius.circular(10)),
                              child: Image.network(
                                "https://images.unsplash.com/photo-1570295999919-56ceb5ecca61?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=880&q=80",
                                height: 25,
                                width: 50,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ],
                        ),
                      ],
                    )),
              ),
              const SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Southwinders",
                    style: TextStyle(
                        fontSize: 18,
                        color: primarySwatch[900],
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Hi",
                    style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 14,
                        color: index.isEven ? Colors.grey : primarySwatch[600]),
                  ),
                ],
              ),
              Spacer(),
              Padding(
                padding: const EdgeInsets.only(top: 4),
                child: Text(
                  "10:30 am",
                  style: TextStyle(fontWeight: FontWeight.normal, fontSize: 12),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
