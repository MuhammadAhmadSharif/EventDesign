// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:design/ticket.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'eventcard.dart';

class ConsertDetailScreen extends StatefulWidget {
  String ImageUI;
  String tagnumber;
  final List = [
    0,
    1,
    2,
    3,
  ];
  ConsertDetailScreen({
    Key? key,
    required this.ImageUI,
    required this.tagnumber,
  }) : super(key: key);

  @override
  State<ConsertDetailScreen> createState() => _ConsertDetailScreenState();
}

class _ConsertDetailScreenState extends State<ConsertDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: NotificationListener<OverscrollIndicatorNotification>(
          onNotification: (OverscrollIndicatorNotification overscroll) {
            overscroll.disallowIndicator();
            return false;
          },
          child: CustomScrollView(
            slivers: [
              //appbar
              SliverAppBar(
                automaticallyImplyLeading: false,
                // title: Text(
                //   "data",
                //   style: TextStyle(fontSize: 26),
                // ),
                toolbarHeight: 60,
                leading: Padding(
                  padding: EdgeInsets.only(left: 16),
                  child: InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(),
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        child: Padding(
                          padding: EdgeInsets.only(left: 0),
                          child: Icon(
                            Icons.arrow_back_outlined,
                            size: 20,
                            color: Color(0xff701ec2),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                elevation: 0,

                backgroundColor: Colors.white,
                expandedHeight: 350.0,
                floating: false,
                collapsedHeight: 70,
                pinned: true,
                bottom: PreferredSize(
                    preferredSize: Size.fromHeight(20),
                    child: Container(
                      height: 25,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(30),
                              topRight: Radius.circular(30))),
                    )),

                flexibleSpace: FlexibleSpaceBar(
                  titlePadding: EdgeInsets.only(top: 0),
                  title: Container(
                    padding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                    child: Column(
                      children: [
                        PreferredSize(
                          preferredSize: Size.fromHeight(110),
                          child: Container(
                            height: 115,
                            // width: 500,
                            decoration: BoxDecoration(
                                // border: Border.all(),
                                color: Colors.white,
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(16),
                                    topRight: Radius.circular(16))),
                            child: Center(
                              child: Padding(
                                padding: const EdgeInsets.only(top: 40),
                                child: Text("JUICE WORLD CONCERT",
                                    style: GoogleFonts.montserrat(
                                        color: Color(0XFF707070),
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18)),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  centerTitle: true,
                  background: Stack(
                    children: [
                      PageView(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(
                                      widget.ImageUI,
                                    ),
                                    fit: BoxFit.cover)),
                          ),
                        ],
                      ),
                      //
                    ],
                  ),

                  // Hero(
                  //   tag: "image${widget.tagnumber}",
                  //   child: Image.asset(
                  //     widget.ImageUI,
                  //     fit: BoxFit.cover,
                  //   ),
                  // ),
                ),
                // bottom: PreferredSize(
                //     preferredSize: Size.fromHeight(20),
                //     child: Container(
                //       height: 80,
                //       decoration: BoxDecoration(
                //           color: Colors.white,
                //           borderRadius: BorderRadius.only(
                //               topLeft: Radius.circular(16),
                //               topRight: Radius.circular(16))),
                //       child: Center(
                //         child: Text("JUICE WORLD CONCERT",
                //             style: GoogleFonts.montserrat(
                //                 color: Color(0XFF707070),
                //                 fontWeight: FontWeight.bold,
                //                 fontSize: 18)),
                //       ),
                //     )),
              ),

              SliverToBoxAdapter(
                child: Container(
                  // decoration: BoxDecoration(border: Border.all()),
                  // color: Colors.transparent,
                  // height: 20,
                  child: Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(34),
                                topRight: Radius.circular(34))),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                left: 36,
                                top: 16,
                              ),
                              //1st row
                              child: Row(
                                // mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    height: 50,
                                    width: 50,
                                    decoration: BoxDecoration(
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.grey.withOpacity(0.2),
                                            spreadRadius: 2,
                                            blurRadius: 7,
                                            offset: Offset(0,
                                                3), // changes position of shadow
                                          ),
                                        ],
                                        borderRadius:
                                            BorderRadius.circular(100),
                                        color: Colors.white),
                                    child: Icon(
                                      Icons.calendar_month_outlined,
                                      size: 30,
                                      color: Color(0xff701ec2),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 50,
                                  ),
                                  Container(
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text("30 AUGUST 2020",
                                            style: GoogleFonts.montserrat(
                                                color: Color(0XFF707070),
                                                fontWeight: FontWeight.bold,
                                                fontSize: 14)),
                                        SizedBox(
                                          height: 8,
                                        ),
                                        Text("3.00 PM - 12.00 AM",
                                            style: GoogleFonts.montserrat(
                                                color: Color(0XFF707070),
                                                fontSize: 14))
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                            //2nd Row
                            Padding(
                              padding: const EdgeInsets.only(
                                left: 36,
                                top: 16,
                              ),
                              child: Row(
                                // mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    height: 50,
                                    width: 50,
                                    decoration: BoxDecoration(
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.grey.withOpacity(0.2),
                                            spreadRadius: 2,
                                            blurRadius: 7,
                                            offset: Offset(0,
                                                3), // changes position of shadow
                                          ),
                                        ],
                                        borderRadius:
                                            BorderRadius.circular(100),
                                        color: Colors.white),
                                    child: Icon(
                                      Icons.location_pin,
                                      size: 30,
                                      color: Color(0xff701ec2),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 50,
                                  ),
                                  Container(
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text("CLUB SPACE",
                                            style: GoogleFonts.montserrat(
                                                color: Color(0XFF707070),
                                                fontWeight: FontWeight.bold,
                                                fontSize: 14)),
                                        SizedBox(
                                          height: 8,
                                        ),
                                        Text("Miami, US",
                                            style: GoogleFonts.montserrat(
                                                color: Color(0XFF707070),
                                                fontSize: 14))
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                            //3rd row
                            Padding(
                              padding: const EdgeInsets.only(
                                left: 36,
                                top: 16,
                              ),
                              child: Row(
                                // mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    height: 50,
                                    width: 50,
                                    decoration: BoxDecoration(
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.grey.withOpacity(0.2),
                                            spreadRadius: 2,
                                            blurRadius: 7,
                                            offset: Offset(0,
                                                3), // changes position of shadow
                                          ),
                                        ],
                                        borderRadius:
                                            BorderRadius.circular(100),
                                        color: Colors.white),
                                    child: Icon(
                                      Icons.bookmark_outline_outlined,
                                      size: 30,
                                      color: Color(0xff701ec2),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 50,
                                  ),
                                  Container(
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text("\$ 80.00",
                                            style: GoogleFonts.montserrat(
                                                color: Color(0XFF707070),
                                                fontWeight: FontWeight.bold,
                                                fontSize: 14)),
                                        SizedBox(
                                          height: 8,
                                        ),
                                        Text("PER 1 PERSON",
                                            style: GoogleFonts.montserrat(
                                                color: Color(0XFF707070),
                                                fontSize: 14))
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 32, horizontal: 50),
                              child: InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => TicketTypeScreen(
                                            ImageUI: widget.ImageUI),
                                      ));
                                },
                                child: Container(
                                  height: 50,
                                  width: 500,
                                  decoration: BoxDecoration(
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey.withOpacity(0.3),
                                          spreadRadius: 5,
                                          blurRadius: 7,
                                          offset: Offset(0,
                                              3), // changes position of shadow
                                        ),
                                      ],
                                      borderRadius: BorderRadius.circular(26),
                                      color: Color(0xffa043ff)),
                                  child: Center(
                                      child: Text("BUY",
                                          style: GoogleFonts.montserrat(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 18))),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 50, vertical: 16),
                              child: Container(
                                  decoration: BoxDecoration(
                                      // border: Border.all(),
                                      ),
                                  child: Column(
                                    // mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text("About Event",
                                          style: GoogleFonts.montserrat(
                                              fontSize: 18,
                                              fontWeight: FontWeight.w500)),
                                      SizedBox(
                                        height: 15,
                                      ),
                                      Text(
                                          "In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available.",
                                          style: GoogleFonts.montserrat(
                                              fontSize: 16)),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text("Nearby Events",
                                              style: GoogleFonts.montserrat(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w500)),
                                          TextButton(
                                            onPressed: () {},
                                            child: Text("View All",
                                                style: GoogleFonts.montserrat(
                                                    fontSize: 14,
                                                    color: Color(0xff701ec2))),
                                          ),
                                        ],
                                      ),
                                    ],
                                  )),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  // color: Color(0xff95989A),
                                  // border: Border.all()
                                  ),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 12, vertical: 12),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    EventCard(
                                      image: "assest/Base2.png",
                                      text1: "FREE THE WHALES",
                                      text2: "CLUB SPACE",
                                    ),
                                    EventCard(
                                      image: "assest/Base.png",
                                      text1: "SUNSETS",
                                      text2: "TREEHOUSE",
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
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
