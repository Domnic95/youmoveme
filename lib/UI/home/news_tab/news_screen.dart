import 'package:flutter/material.dart';
import 'package:you_move_me/UI/home/news_tab/comment_tab.dart';
import 'package:you_move_me/UI/theme/apptheme.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const String profilePath = "assets/images/image2.jpg";

class Post {
  final String name;
  final List<String> image;
  final String user;
  final String message;
  final String profile;
  final String time;
  final String like;
  final String comment;
  Post(
      {this.image = const [],
      this.name = "you move me Ops",
      this.message = "",
      this.user = "",
      this.time = "",
      this.like = "",
      this.comment = "",
      this.profile = "assets/images/logo.png"});
}

List<Post> posts = [
  Post(
    name: "You move me Ops ",
    message:
        "Happy birthday to these You move meers this week and congrats to those celebrating their anniversary!",
    user: "Domnic_lakra",
    time: "10 h",
    like: "14",
    comment: "2",
    image: ["assets/images/celebrations.jpeg"],
  ),
  Post(
    name: "You move me Ops ",
    message:
        "To wrap up performers week, we have our business of the month which was Indianapolis! Congrats on an amazing month, tea!",
    user: "Domnic_lakra",
    time: "a day",
    like: "37",
    comment: "13",
    image: ["assets/images/businesofthemonth.png"],
  ),
  Post(
    name: "You move me Ops ",
    message:
        "Huge shoutout to Salt Lake City for being the most engaged franchise on the You move mes App for the month of November! Bryce and his team liked and commented on all post from last month, amazing work! Thank you for continued support of the app!",
    user: "Domnic_lakra",
    time: "a day",
    like: "41",
    comment: "14",
    image: ["assets/images/saltlake.png"],
  ),
  Post(
    name: "You move me Ops ",
    message:
        "The top truckers from every Junk franchise for the month of November! Great work all aroung, You move me!",
    user: "Domnic_lakra",
    time: "3 day",
    like: "50",
    comment: "18",
    image: ["assets/images/totruckers.png"],
  ),
  Post(
    name: "You move me Ops ",
    message:
        "More great career path advancements to recognize today! Shoutput to Raymond and DaQuan on being the newest CSLs in You move me!",
    user: "Domnic_lakra",
    time: "4 day",
    like: "41",
    comment: "14",
    image: ["assets/images/daquanmartin.png"],
  ),
  Post(
    name: "You move me Ops ",
    message:
        "Shoutout to Beau in SLC on also being the newest CSL in You move me!",
    user: "Domnic_lakra",
    time: "4 day",
    like: "38",
    comment: "15",
    image: ["assets/images/beauflygare.png"],
  ),
  Post(
    name: "You move me Ops ",
    message:
        "Today is all about career path recognition! Starting out with KC, shoutout toRichard, River, and Zach on being the newest CSIs in You move me!",
    user: "Domnic_lakra",
    time: "4 day",
    like: "38",
    comment: "12",
    image: ["assets/images/richardfisher.png"],
  ),
  Post(
    name: "You move me Ops",
    message:
        "Shoutout to Chris Scott on being named MVPs tech of the month for November! Way to be excellent, Chris!",
    user: "________________",
    time: "11h",
    like: "23",
    comment: "7",
    image: [
      "assets/images/chris_scott.jpeg",
      "assets/images/tre_daniels.jpeg",
      "assets/images/john_bonebrank.jpeg",
      "assets/images/rhonda_van.jpeg",
      "assets/images/johnique_cherry.jpeg",
    ],
  ),
  Post(
    name: "You move me Ops",
    message:
        "Shoutout to tre Daniels on being named Move of the Month for thr month of November! Keep up the great work, Tre!",
    user: "Domnic_lakra",
    time: "15h",
    like: "31",
    comment: "8",
    image: ["assets/images/tre_daniels.jpeg"],
  ),
  Post(
    name: "You move me Ops ",
    message:
        "Big shoutout to John Bonebrake for beign named the top Commercial Service Advisor for the month of November! Way to set the standard, Bonebrake!",
    user: "Domnic_lakra",
    time: "a day",
    like: "40",
    comment: "19",
    image: ["assets/images/john_bonebrank.jpeg"],
  ),
  Post(
    name: "You move me Ops ",
    message:
        "Enrollment for the enterpreneurship has officially closed! Thank you to all who applied! New inductees will be announced on the 20th!",
    user: "Domnic_lakra",
    time: "a day",
    like: "35",
    comment: "5",
    image: ["assets/images/enrollment.jpeg"],
  ),
  Post(
    name: "You move me Ops ",
    message:
        "Shoutout to Rhonda at MVP for Having another monster month last month! Check out her stats below. Keep up the amazing work, RVA!",
    user: "Domnic_lakra",
    time: "2 day",
    like: "41",
    comment: "12",
    image: ["assets/images/rhonda_van.jpeg"],
  ),
  Post(
    name: "You move me Ops ",
    message:
        "This week we will be highlighting the top performers from different areas of You move me! We're staring it off with the You Move Me Call Center, where Johnique wastop in class last month! Keep up the great work, Johnique!",
    user: "Domnic_lakra",
    time: "3 day",
    like: "42",
    comment: "14",
    image: ["assets/images/johnique_cherry.jpeg"],
  ),
  Post(
    name: "You move me Ops ",
    message:
        "Happy birthday to these You move meers this week and congrats to those celebrating their anniversary!",
    user: "Domnic_lakra",
    time: "3 day",
    like: "41",
    comment: "6",
    image: ["assets/images/celebrations.jpeg"],
  ),
  Post(
    name: "You move me Ops ",
    message:
        "On his way into work earlie this week, Gabe saw a billboard for a missing person in the Sallt Lake / Park City area. Using the description of the man and the vehicle, him and Marcus drove out to Park City and they spotted the man that fit the description. They immediately called highway patrol to let them know and a few hours later they called them back to let them know that it was indeed the missing person! \n\n Way to go literally above and beyond to help serve your community, Gabe & Marcus!",
    user: "Domnic_lakra",
    time: "5 day",
    like: "57",
    comment: "13",
    image: [
      "assets/images/got_junk.jpeg",
      "assets/images/tim_liciaga.jpeg",
      "assets/images/rankings.jpeg",
    ],
  ),
  Post(
    name: "You move me Ops ",
    message:
        "Shoutout Tim & Lieth in Connecticut for being the newest CSL in You move me!",
    user: "Domnic_lakra",
    time: "7 day",
    like: "49",
    comment: "11",
    image: ["assets/images/tim_liciaga.jpeg"],
  ),
  Post(
    name: "You move me Ops ",
    message:
        "More great improvement on Google Reviews this past week! Keep pushing this last month, You move me!",
    user: "Domnic_lakra",
    time: "7 day",
    like: "40",
    comment: "5",
    image: ["assets/images/rankings.jpeg"],
  ),
];

class NewsScreen extends StatefulWidget {
  const NewsScreen({Key? key}) : super(key: key);

  @override
  _NewsScreenState createState() => _NewsScreenState();
}

class _NewsScreenState extends State<NewsScreen> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    // return SingleChildScrollView(child: FeedPost());
    return Scaffold(
      body: ListView.builder(
        padding: EdgeInsets.only(top: 3),
        itemBuilder: (context, index) {
          return FeedPost(
            post: posts[index],
          );
        },
        itemCount: posts.length,
      ),
      // bottomNavigationBar: FFNavigationBar(
      //   theme: FFNavigationBarTheme(
      //     barBackgroundColor: Colors.white,
      //     selectedItemBackgroundColor: primarySwatch[50]!,
      //     selectedItemIconColor: Colors.black,
      //     selectedItemLabelColor: Colors.black,
      //   ),
      //   selectedIndex: selectedIndex,
      //   onSelectTab: (index) {
      //     setState(() {
      //       selectedIndex = index;
      //     });
      //   },
      //   items: [
      //     FFNavigationBarItem(
      //       iconData: Icons.feed_outlined,
      //       label: 'News',
      //     ),
      //     FFNavigationBarItem(
      //       iconData: Icons.schedule_outlined,
      //       label: 'Schedule',
      //     ),
      //     FFNavigationBarItem(
      //       iconData: Icons.school_outlined,
      //       label: 'Career',
      //     ),
      //     FFNavigationBarItem(
      //       iconData: Icons.groups_outlined,
      //       label: 'Team',
      //     ),
      //     FFNavigationBarItem(
      //       iconData: Icons.account_circle_outlined,
      //       label: 'Settings',
      //     ),
      //   ],
      // ),
    );
  }
}

class FeedPost extends StatefulWidget {
  final Post post;

  const FeedPost({required this.post, Key? key}) : super(key: key);

  @override
  _FeedPostState createState() => _FeedPostState();
}

class _FeedPostState extends State<FeedPost> {
  int currentIndex = 0;
  PageController controller = PageController();

  void setScrollController(int) {}

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 00),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage(
                      widget.post.profile,
                    ),
                    backgroundColor: Colors.white,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.post.name,
                        style: Theme.of(context).textTheme.bodyText1!.copyWith(
                            fontSize: 16, fontWeight: FontWeight.w600),
                      ),
                      Text(
                        "${widget.post.time} ago",
                        style: Theme.of(context).textTheme.bodyText1!.copyWith(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Colors.black38),
                      ),
                    ],
                  ),
                  Spacer(),
                  Icon(Icons.more_vert),
                  // IconButton(onPressed: () {}, icon: )
                ],
              ),
            ),
            Container(
              width: size.width,
              constraints: BoxConstraints(maxHeight: size.height * .60),
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: MultipleImageView(
                    images: widget.post.image,
                    Pagecontroller: controller,
                    onIndexChanged: (a) {
                      currentIndex = a;
                      setScrollController(a);
                      setState(() {});
                    },
                  )),
            ),
            Padding(
              padding: const EdgeInsets.all(6.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(Icons.favorite_border),
                      SizedBox(
                        width: 5,
                      ),
                      Text("${widget.post.like}"),
                      // SizedBox(
                      //   width: 10,
                      // ),
                      IconButton(
                        icon: Icon(FontAwesomeIcons.comment),
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => CommentTab()));
                        },
                      ),
                      // SizedBox(
                      //   width: 5,
                      // ),
                      Text("${widget.post.comment}"),
                      SizedBox(
                        width: 5,
                      ),
                    ],
                  ),
                  Expanded(
                    child: ImageIndicator(
                        pageController: controller,
                        totalIndex: widget.post.image.length),
                  ),
                  Expanded(child: Container()),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Row(
                children: [
                  Expanded(
                    child: RichText(
                        text: TextSpan(
                      children: [
                        TextSpan(
                            text: "${widget.post.name}  ",
                            style: Theme.of(context)
                                .textTheme
                                .bodyText1!
                                .copyWith(
                                    fontWeight: FontWeight.w600, fontSize: 14)),
                        TextSpan(
                          text: widget.post.message,
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 14,
                            color: Colors.black.withOpacity(.8),
                          ),
                        ),
                      ],
                    )),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}

class ImageIndicator extends StatefulWidget {
  final int totalIndex;
  final PageController pageController;
  ImageIndicator(
      {required this.pageController, required this.totalIndex, Key? key})
      : super(key: key);

  @override
  _ImageIndicatorState createState() => _ImageIndicatorState();
}

class _ImageIndicatorState extends State<ImageIndicator> {
  int currentIndex = 0;
  double width = 40;
  final ScrollController controller = ScrollController();
  @override
  void initState() {
    widget.pageController.addListener(() {
      if (mounted) {
        setState(() {
          currentIndex = widget.pageController.page!.round();
        });
      }
      setScoll();
    });
    super.initState();
  }

  setScoll() {
    controller.animateTo(((6 - 2) * currentIndex).toDouble(),
        duration: Duration(milliseconds: 80), curve: Curves.linear);
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: !(widget.totalIndex > 1)
          ? Container()
          : Container(
              height: 50,
              width: width,
              child: SingleChildScrollView(
                controller: controller,
                // physics: NeverScrollableScrollPhysics(),
                scrollDirection: Axis.horizontal,
                child: Container(
                    child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    for (int a = 0; a < widget.totalIndex; a++)
                      Container(
                        width: 6.0,
                        height: 6.0,
                        margin: EdgeInsets.symmetric(horizontal: 2),
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color:
                                (Theme.of(context).brightness == Brightness.dark
                                        ? Colors.white
                                        : primaryColor)
                                    .withOpacity(a == currentIndex ? .9 : 0.4)),
                      )
                  ],
                )),
              ),
            ),
    );
  }
}

class MultipleImageView extends StatelessWidget {
  final List<String> images;
  final Function(int) onIndexChanged;
  final PageController Pagecontroller;
  const MultipleImageView(
      {required this.images,
      required this.Pagecontroller,
      required this.onIndexChanged,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (images.length == 1) {
      return Image.asset(
        images.first,
        fit: BoxFit.scaleDown,
      );
    }
    return Container(
      child: PageView(
        controller: Pagecontroller,
        onPageChanged: onIndexChanged,
        children: [
          ...images
              .map((e) => Image.asset(
                    e,
                    fit: BoxFit.scaleDown,
                  ))
              .toList(),
        ],
      ),
    );
    // return CarouselSlider.builder(
    //     itemCount: images.length,
    //     itemBuilder: (con, a, b) {
    //       return Image.network(
    //         images[a],
    //         fit: BoxFit.cover,
    //       );
    //     },
    //     options: CarouselOptions(
    //       viewportFraction: 1,
    //       enlargeCenterPage: false,
    //     ));
  }
}
