import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:you_move_me/UI/theme/apptheme.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                height: size.height * 0.2,
                width: size.width,
                color: secondaryColor,
              ),
              Positioned(
                bottom: -size.height * 0.075,
                right: 0,
                left: 0,
                child: Card(
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 5),
                    width: size.width,
                    // height: size.height * 0.16,
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: size.width * 0.3,
                      ),
                      child: Column(
                        children: [
                          Text(
                            "Joyce Lathrop",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                          // Text(
                          //   "UI/UX Designer",
                          //   style: TextStyle(
                          //       color: primarySwatch[600], fontSize: 15),
                          // ),
                          SizedBox(
                            height: size.height * 0.01,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Column(
                                children: [
                                  Text(
                                    "156",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18),
                                  ),
                                  Text(
                                    "Tokens",
                                    style: TextStyle(height: 1),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Text(
                                    "5",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18),
                                  ),
                                  Text(
                                    "Y. Service",
                                    style: TextStyle(height: 1),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: -size.height * 0.05,
                child: Card(
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  margin: EdgeInsets.only(left: 40),
                  child: Container(
                    height: size.height * 0.19,
                    width: size.width * 0.3,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                          image: NetworkImage(
                              'https://images.unsplash.com/photo-1638459614085-bdb69b6d3432?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80'),
                          fit: BoxFit.cover),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: size.height * 0.1,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "- My Info",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                SizedBox(
                  height: size.height * 0.01,
                ),
                Card(
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12)),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 5),
                    child: ListTile(
                      contentPadding: EdgeInsets.symmetric(horizontal: 18),
                      title: Text(
                        "Member ID",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: primarySwatch[700]),
                      ),
                      // subtitle: Text(
                      //   "27",
                      //   style: TextStyle(
                      //       // height: 1.5,
                      //       fontWeight: FontWeight.bold,
                      //       letterSpacing: 2,
                      //       wordSpacing: 1,
                      //       color: primarySwatch[400]),
                      // ),
                      trailing: Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                  blurRadius: 2,
                                  spreadRadius: 0,
                                  color: primarySwatch,
                                  offset: Offset(0, 1.5))
                            ]),
                        child: Text("27"),
                      ),
                    ),
                  ),
                ),
                // SizedBox(
                //   height: size.height * 0.005,
                // ),
                Card(
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12)),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 5),
                    child: ListTile(
                      contentPadding: EdgeInsets.symmetric(horizontal: 18),
                      title: Text(
                        "Location",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: primarySwatch[700]),
                      ),
                      subtitle: Text(
                        "Southwind",
                        style: TextStyle(
                            // height: 1.5,
                            fontWeight: FontWeight.normal,
                            letterSpacing: 2,
                            wordSpacing: 1,
                            fontSize: 14,
                            color: primarySwatch[400]),
                      ),
                    ),
                  ),
                ),
                Card(
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12)),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 5),
                    child: ListTile(
                      contentPadding: EdgeInsets.symmetric(horizontal: 18),
                      title: Text(
                        "Email",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: primarySwatch[700]),
                      ),
                      subtitle: Text(
                        "m@m.com",
                        style: TextStyle(
                            // height: 1.5,
                            fontWeight: FontWeight.normal,
                            letterSpacing: 2,
                            wordSpacing: 1,
                            fontSize: 14,
                            color: primarySwatch[400]),
                      ),
                    ),
                  ),
                ),
                Card(
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12)),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 5),
                    child: ListTile( 
                      contentPadding: EdgeInsets.symmetric(horizontal: 18),
                      title: Text(
                        "Start Date",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: primarySwatch[700]),
                      ),
                      subtitle: Text(
                        "07/12/2021",
                        style: TextStyle(
                            // height: 1.5,
                            fontWeight: FontWeight.normal,
                            letterSpacing: 2,
                            wordSpacing: 1,
                            fontSize: 14,
                            color: primarySwatch[400]),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
