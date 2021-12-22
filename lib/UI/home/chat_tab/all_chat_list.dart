import 'package:flutter/material.dart';
import 'package:you_move_me/UI/home/chat_tab/components/group_chat_card.dart';
import 'package:you_move_me/UI/home/chat_tab/components/single_chat_card.dart';
import 'package:you_move_me/UI/home/chat_tab/group_chat_screen.dart';
import 'package:you_move_me/UI/theme/apptheme.dart';
import 'package:you_move_me/routes/routes.dart';

class AllChatList extends StatelessWidget {
  const AllChatList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
      child: ListView.builder(
        padding: EdgeInsets.symmetric(vertical: 10),
        itemBuilder: (context, index) {
          return Column(
            children: [
              index % 2 == 0
                  ? SingleChatCard(index: index)
                  : GroupChatCard(
                      index: index,
                    ),
              SizedBox(
                height: 15,
              ),
              // Divider(
              //   height: 10,
              // ),
            ],
          );
        },
        itemCount: 2,
      ),
    );
  }
}
