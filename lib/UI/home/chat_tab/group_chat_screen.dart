import 'package:flutter/material.dart';
import 'package:you_move_me/Models/MessageModel.dart';
import 'package:you_move_me/UI/home/chat_tab/single_chat_screen.dart';
import 'package:you_move_me/UI/theme/apptheme.dart';
import 'package:you_move_me/routes/routes.dart';

class GroupChatScreen extends StatefulWidget {
  GroupChatScreen({Key? key}) : super(key: key);

  @override
  _GroupChatScreenState createState() => _GroupChatScreenState();
}

class _GroupChatScreenState extends State<GroupChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 50,
        titleSpacing: 0,
        iconTheme: IconThemeData(color: primarySwatch[900]),
        backgroundColor: Colors.white,
        title: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // color: Co,
              width: 50,
              child: Padding(
                padding: const EdgeInsets.all(4.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(1000),
                  child: Image.network(
                    "https://images.unsplash.com/photo-1570295999919-56ceb5ecca61?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=880&q=80",
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 5,
            ),
            Center(
              child: Text(
                "Group Name",
                style: TextStyle(fontSize: 18, color: primarySwatch[900]),
              ),
            ),
            // Column(
            //   mainAxisSize: MainAxisSize.max,
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   children: [
            //     const SizedBox(
            //       height: 5,
            //     ),
            //   ],
            // )
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: InkWell(
                onTap: () {
                  Navigator.pushNamed(context, Routes.groupInfo);
                },
                child: Icon(Icons.more_vert_outlined)),
          )
        ],
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                reverse: true,
                itemBuilder: (context, index) {
                  bool isLeft = index.isEven;
                  return SingleMessage(
                    isGroup: true,
                    index: index,
                    messageModel: messages[index],
                  );
                },
                itemCount: messages.length,
              ),
            ),
            // Expanded(child: ListView.builder(itemBuilder: (context, index) {
            //   return Container();
            // })),
            Container(
              // height: 60,
              // constraints: BoxConstraints(maxHeight: 100),
              // decoration: BoxDecoration(
              //   color: primarySwatch[100],
              //   borderRadius: BorderRadius.only(
              //       topLeft: Radius.circular(20),
              //       topRight: Radius.circular(20)),
              // ),
              child: Padding(
                padding: const EdgeInsets.only(
                    left: 10, right: 10, bottom: 10, top: 18),
                child: Center(
                  child: Row(
                    children: [
                      Expanded(
                        child: TextFormField(
                          maxLines: 4,
                          minLines: 1,
                          decoration: InputDecoration(
                              filled: true,
                              suffixIcon: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  // Icon(Icons.file_copy),
                                  Image.asset(
                                    "assets/images/attachments.png",
                                    color: primarySwatch[900],
                                    width: 25,
                                  ),
                                  SizedBox(
                                    width: 15,
                                  ),
                                  // Icon(Icons.send_outlined),
                                  Image.asset(
                                    "assets/images/send.png",
                                    color: primarySwatch[900],
                                    width: 25,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                ],
                              ),
                              fillColor: Colors.white,
                              hintText: "Send Message",
                              hintStyle: TextStyle(color: Colors.grey),
                              contentPadding: EdgeInsets.symmetric(
                                  horizontal: 8, vertical: 10),
                              isCollapsed: true,
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5),
                                  borderSide: BorderSide(
                                      width: .5, color: primarySwatch[900]!)),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5),
                                  borderSide: BorderSide(
                                      width: .5, color: primarySwatch[900]!)),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5),
                                  borderSide: BorderSide(
                                      width: 1, color: primaryColor))),
                        ),
                      ),
                      // SizedBox(
                      //   width: 10,
                      // ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
