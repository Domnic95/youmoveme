import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:you_move_me/UI/components/common_appbar.dart';
import 'package:you_move_me/UI/components/common_button.dart';
import 'package:you_move_me/UI/theme/apptheme.dart';
import 'package:you_move_me/routes/routes.dart';

class Incentives extends StatefulWidget {
  const Incentives({Key? key}) : super(key: key);

  @override
  _IncentivesState createState() => _IncentivesState();
}

class _IncentivesState extends State<Incentives> {
  int selectedIndex = 0;
  List<String> tabs = [
    'New',
    'Most Popular',
    'Purchased',
  ];

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            color: primarySwatch[900],
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [primarySwatch[900]!, primarySwatch[600]!],
                  stops: [.2, .8],
                  begin: Alignment.bottomRight,
                  end: Alignment.topLeft,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              height: size.height * .3,
              // width: size.width,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "Awailable Incentives",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "250",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
        Row(
          children: [
            for (int i = 0; i < tabs.length; i++)
              Expanded(
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 4, vertical: 10),
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
        Expanded(
          child: ListView.builder(
              itemCount: incentivesList.length,
              itemBuilder: (context, index) {
                return Card(
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          width: 60,
                          height: 60,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(4),
                            child: Image.network(
                              incentivesList[index].image,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "${incentivesList[index].name}",
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16,
                                    color: Colors.black),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "${incentivesList[index].tokens} TOKENS",
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                    color: Colors.grey,
                                    height: 1,
                                    fontSize: 14),
                              )
                            ],
                          ),
                        ),
                        // Spacer(),
                        if (selectedIndex != 2)
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => BuyTab(
                                        image: incentivesList[index].image,
                                        name: incentivesList[index].name,
                                      )));
                            },
                            child: Center(
                              child: Container(
                                decoration: BoxDecoration(
                                    color: primarySwatch[100],
                                    border:
                                        Border.all(color: primarySwatch[900]!),
                                    borderRadius: BorderRadius.circular(10)),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 12, vertical: 2),
                                  child: Text(
                                    "Buy",
                                    style: TextStyle(fontSize: 14),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        SizedBox(
                          width: 10,
                        ),
                        // Row(
                        //   children: [
                        //     Icon(Icons.attach_money),
                        //     Text(
                        //       "${Revenuelist[index].income}",
                        //       style: TextStyle(fontWeight: FontWeight.bold),
                        //     )
                        //   ],
                        // ),
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
              }),
        ),
      ],
    );
  }
}

class IncentiveModel {
  String image;
  String name;
  String tokens;

  IncentiveModel({this.image = "", this.name = "", this.tokens = ""});
}

List<IncentiveModel> incentivesList = [
  IncentiveModel(
      image:
          "https://deih43ym53wif.cloudfront.net/star-beach-phu-quoc-best-beaches-in-vietnam_b2ca258b0d.jpeg",
      name: "PTO day",
      tokens: "175"),
  IncentiveModel(
      image: "https://lowcostmfg.com/images/product/photo-not-available.jpg",
      name: "Culture Coin",
      tokens: "10"),
  IncentiveModel(
      image:
          "https://sm.pcmag.com/pcmag_in/review/b/beats-by-d/beats-by-dre-pill-review_1n7j.jpg",
      name: "Beats Pill",
      tokens: "150"),
  IncentiveModel(
      image:
          "https://cdn.mos.cms.futurecdn.net/XK8ncNLKhKzL8UbEqWHHzK-480-80.jpg",
      name: "Apple Airpods",
      tokens: "200"),
  IncentiveModel(
      image:
          "https://cdn.shopify.com/s/files/1/0275/2276/0806/products/mockup-871d6c8d_large.png?v=1591310814",
      name: "Junk Life Dad Hat",
      tokens: "45"),
  IncentiveModel(
      image:
          "https://ih1.redbubble.net/image.2645602454.7642/ssrco,baseball_cap,product,000000:44f0b734a5,front,square,600x600-bg,f8f8f8.jpg",
      name: "Junk Life Snapback",
      tokens: "45"),
  IncentiveModel(
      image:
          "https://m.media-amazon.com/images/I/A13usaonutL._CLa%7C2140%2C2000%7C91dvkmRUcXL.png%7C0%2C0%2C2140%2C2000%2B0.0%2C0.0%2C2140.0%2C2000.0_AC_UL1500_.png",
      name: "Junk Life Shirt (Script Font)",
      tokens: "45"),
  IncentiveModel(
      image:
          "https://m.media-amazon.com/images/I/A14Xt5-UAPL._CLa%7C2140%2C2000%7C710GPbR79mL.png%7C0%2C0%2C2140%2C2000%2B0.0%2C0.0%2C2140.0%2C2000.0._UL1500_.png",
      name: "Junk Life (College Font)",
      tokens: "45"),
  IncentiveModel(
      image: "https://lowcostmfg.com/images/product/photo-not-available.jpg",
      name: "",
      tokens: "60"),
  IncentiveModel(
      image: "https://lowcostmfg.com/images/product/photo-not-available.jpg",
      name: "",
      tokens: "70"),
];

class Purchased {
  final String image;
  final String name;
  final String cost;
  final String date;

  Purchased({this.image = "", this.name = "", this.cost = "", this.date = ""});
}

List<Purchased> purchaseds = [
  Purchased(
      image: "",
      name: "1/4 zip 1-800-GOT-JUNK?\nsweatshirt",
      cost: "75",
      date: "08/08/2021"),
  Purchased(image: "", name: "text", cost: "1", date: "04/12/2019")
];

class BuyTab extends StatefulWidget {
  String image;
  String name;

  BuyTab({Key? key, required this.image, required this.name}) : super(key: key);

  @override
  _BuyTabState createState() => _BuyTabState();
}

class _BuyTabState extends State<BuyTab> {
  GlobalKey<FormState> _Formkey = GlobalKey<FormState>();
  TextEditingController _answerController = TextEditingController();
  String answer = "";

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
        child: Scaffold(
      appBar: CommonAppbar(),
      body: Container(
        margin: EdgeInsets.symmetric(
          horizontal: 5,
        ),
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Form(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: size.height * 0.03,
                      ),
                      Container(
                        height: size.height * 0.3,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                                image: NetworkImage(widget.image),
                                fit: BoxFit.cover)),
                      ),
                      SizedBox(
                        height: size.height * 0.03,
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(
                          horizontal: 10,
                        ),
                        child: Text(
                          "${widget.name}",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 25),
                        ),
                      ),
                      SizedBox(
                        height: size.height * 0.01,
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(
                          horizontal: 10,
                        ),
                        child: Text(
                            "THis is good for one day off work. Value is an 8/hour day PAID using hourlu rate."),
                      ),
                      SizedBox(
                        height: size.height * 0.03,
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 13),
                        child: TextFormField(
                          controller: _answerController,
                          // validator: (val){
                          //   if(val!.isEmpty){
                          //     return "Please enter comment";
                          //   }
                          // },
                          onChanged: (val) {
                            setState(() {
                              answer = val;
                            });
                          },
                          maxLines: 6,
                          style: TextStyle(
                            fontSize: 16,
                          ),
                          textInputAction: TextInputAction.done,
                          decoration: InputDecoration(
                              hintText: "Enter Your Answer",
                              hintStyle: TextStyle(color: Colors.grey),
                              contentPadding: EdgeInsets.symmetric(
                                  horizontal: 8, vertical: 4),
                              isCollapsed: true,
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5),
                                  borderSide: BorderSide(
                                      width: .5, color: primarySwatch[700]!)),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5),
                                  borderSide: BorderSide(
                                      width: .5, color: primarySwatch[700]!)),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5),
                                  borderSide: BorderSide(
                                      width: 1, color: primaryColor))),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              height: 50,
              margin: EdgeInsets.only(bottom: 10, left: 5, right: 5),
              child: CommonButton(
                lable: "BUY",
                bgColor: primarySwatch.shade900,
                borderRadius: 5,
                isExpanded: true,
                textStyle: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.white),
                ontap: () {
                  if (answer.isEmpty) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text("Please Enter comment"),
                        behavior: SnackBarBehavior.floating,
                        duration: Duration(milliseconds: 1000),
                        backgroundColor: Colors.grey[800],
                        margin:
                            EdgeInsets.only(bottom: 70, right: 20, left: 20),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(24),
                        ),
                      ),
                    );
                  }
                },
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
