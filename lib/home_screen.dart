import 'package:design/widgets/consert_detail.dart';
import 'package:design/widgets/card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<Icon> navbaricons = [];

  final List<String> images = [
    "assest/Base0.png",
    "assest/Base1.png",
    "assest/Base6.jpg",
  ];
  final List<String> datetext = [
    "30\nAUG",
    "01\nSEP",
    "02\nSEP",
  ];
  @override
  Widget build(BuildContext context) {
    final currentWidth = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(80),
          child: Stack(
            children: [
              Container(
                // decoration: BoxDecoration(border: Border.all()),
                color: Color(0xffa043ff),
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 15),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 120),
                        child: CircleAvatar(
                          radius: 15,
                          backgroundColor: Color(0xff6416b3),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          ClipPath(
                              clipper: HexagonalClipper(),
                              child: Container(
                                height: 34,
                                width: 36,
                                decoration: BoxDecoration(
                                    color: Color(0xffA043ff),
                                    image: DecorationImage(
                                        image: AssetImage("assest/logo.png"))),
                              )
                              // CircleAvatar(
                              //   radius: 17,
                              //   backgroundColor: Color(0xffA043ff),
                              //   backgroundImage:
                              //       AssetImage("assest/logo.png"),
                              // ),
                              ),
                          Text("ALL CITIES",
                              style: GoogleFonts.montserrat(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18)),
                          Text(""),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: -20,
                top: -45,
                child: CircleAvatar(
                  radius: 50,
                  backgroundColor: Color(0xff6416b3),
                ),
              ),
              Positioned(
                right: -20,
                top: -55,
                child: CircleAvatar(
                  radius: 50,
                  backgroundColor: Color(0xff6416b3),
                ),
              ),
            ],
          ),
        ),
        //Remove Scroll glow
        body: NotificationListener<OverscrollIndicatorNotification>(
          onNotification: (OverscrollIndicatorNotification overscroll) {
            overscroll.disallowIndicator();
            return false;
          },
          child: ListView(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 20),
              // physics: c,
              // dragStartBehavior: DragStartBehavior.down,
              shrinkWrap: true,
              children: [
                Text(
                  "Upcoming Events",
                  style: GoogleFonts.montserrat(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff707070)),
                ),
                Column(
                  children: List.generate(
                      3,
                      (index) => Padding(
                            padding: const EdgeInsets.only(top: 16),
                            child: InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    PageRouteBuilder(
                                      transitionDuration:
                                          Duration(milliseconds: 1000),
                                      reverseTransitionDuration:
                                          Duration(milliseconds: 1000),
                                      pageBuilder: (context, a, b) =>
                                          ConsertDetailScreen(
                                        ImageUI: images[index],
                                        tagnumber: index.toString(),
                                      ),
                                    ));
                              },
                              child: CardHome(
                                datetext: datetext[index],
                                images: images[index],
                                index: index,
                              ),
                            ),
                          )),
                )
              ]),
        ),
        bottomNavigationBar: BottomAppBar(
          // elevation: 0,
          child: Container(
            // color: Colors.transparent,
            height: 70,
            // width: ,
            // decoration: BoxDecoration(
            //     border: Border.all(), borderRadius: BorderRadius.circular(12)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    size: 32,
                    Icons.home_outlined,
                    color: Color(0xff701ec2),
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    size: 32,
                    Icons.search,
                    color: Color(0xff707070),
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                      size: 32,
                      Icons.calendar_month_outlined,
                      color: Color(0xff707070)),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                      size: 32,
                      Icons.favorite_border,
                      color: Color(0xff707070)),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                      size: 32,
                      Icons.person_outline_outlined,
                      color: Color(0xff707070)),
                ),
              ],
            ),
          ),
        ));
  }
}
