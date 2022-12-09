// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:design/widgets/mini_ticket.dart';

class TicketTypeScreen extends StatefulWidget {
  String ImageUI;

  TicketTypeScreen({
    Key? key,
    required this.ImageUI,
  }) : super(key: key);

  @override
  State<TicketTypeScreen> createState() => _TicketTypeScreenState();
  List<Color> _color = [
    Colors.white,
    Colors.white,
    Colors.white,
    Colors.white,
    Colors.white,
    Colors.white
  ];
  List typeTicket = [
    {'name': "SILVER", "price": 49},
    {'name': "GOLD", "price": 69},
    {'name': "PLATINUM", "price": 99},
    {'name': "SILVER", "price": 49},
    {'name': "GOLD", "price": 69},
    {'name': "PLATINUM", "price": 99},
  ];
}

late int selectedIndex = -1;

class _TicketTypeScreenState extends State<TicketTypeScreen> {
  late int indexofprice = 0;
  late int qty = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: NotificationListener<OverscrollIndicatorNotification>(
          onNotification: (OverscrollIndicatorNotification overscroll) {
            overscroll.disallowIndicator();
            return false;
          },
          child: CustomScrollView(
            // physics: BouncingScrollPhysics(),
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
                                child: Text("TICKET TYPE",
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
                child: Expanded(
                  child: Container(
                    // width: 4,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(36),
                        // border: Border.all(),
                        color: Colors.transparent),
                    child: Column(
                      children: [
                        Container(
                          height: 300,
                          child:
                              // child: ListView.separated(
                              //   scrollDirection: Axis.horizontal,
                              //   itemCount: 6,
                              //   itemBuilder: (context, index) {
                              //     return Padding(
                              //       padding: const EdgeInsets.symmetric(
                              //           horizontal: 20, vertical: 16),
                              //       child: InkWell(
                              //         onTap: () {
                              //           setState(() {
                              //             indexofprice = index;
                              //           });
                              //         },
                              //         child: MiniTicket(
                              //             price: widget.typeTicket[index]["name"],
                              //             ticketType: widget.typeTicket[index]
                              //                 ["price"]),
                              //       ),
                              //     );
                              //   },
                              //   separatorBuilder: (BuildContext context, int index) {
                              //     return SizedBox(
                              //       width: 1,
                              //     );
                              //   },
                              // )
                              GridView.builder(
                            physics: ScrollPhysics(),
                            scrollDirection: Axis.vertical,
                            padding: EdgeInsets.symmetric(
                                vertical: 10, horizontal: 16),
                            itemCount: 6,
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                                    // childAspectRatio: 0.9,
                                    crossAxisCount: 3,
                                    mainAxisSpacing: 30,
                                    crossAxisSpacing: 30),
                            itemBuilder: (context, index) {
                              return InkWell(
                                  onTap: () {
                                    selectedIndex = index;
                                    setState(() {
                                      indexofprice = index;
                                    });
                                  },
                                  child: MiniTicket(
                                    price:
                                        "\$${widget.typeTicket[index]["price"]}",
                                    ticketType: widget.typeTicket[index]
                                        ["name"],
                                    color: selectedIndex == index
                                        ? Color(0xffa043ff)
                                        : Colors.white,
                                    colorTeicktType: selectedIndex == index
                                        ? Colors.white
                                        : Colors.black,
                                    colorTeictprice: selectedIndex == index
                                        ? Colors.white
                                        : Colors.black,
                                  ));
                            },
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(32.0),
                          child: Text(
                            "QUANTITY",
                            style: GoogleFonts.montserrat(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Container(
                          width: 240,
                          height: 60,
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.2),
                                spreadRadius: 1.0,
                                blurRadius: 2.0,
                                offset:
                                    Offset(1, 3), // changes position of shadow
                              ),
                            ],
                            color: Color(0xfff0f0f0),
                            borderRadius: BorderRadius.circular(12),
                            // border: Border.all()
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              TextButton(
                                onPressed: () {
                                  setState(() {
                                    if (qty > 0) {
                                      qty = qty - 1;
                                    }
                                  });
                                },
                                child: Text("-",
                                    style: GoogleFonts.montserrat(
                                        color: Colors.black,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold)),
                              ),
                              Text(qty.toString(),
                                  style: GoogleFonts.montserrat(
                                      color: Colors.black,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold)),
                              TextButton(
                                onPressed: () {
                                  setState(() {
                                    qty = qty + 1;
                                  });
                                },
                                child: Text("+",
                                    style: GoogleFonts.montserrat(
                                        color: Colors.black,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold)),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 40, bottom: 26),
                          child: Text(
                            "TOTAL PRICE",
                            style: GoogleFonts.montserrat(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 30),
                          child: Row(
                            children: const [
                              Expanded(
                                child: Divider(
                                  color: Color(0xff707070),
                                  height: 36,
                                ),
                              )
                            ],
                          ),
                        ),
                        InkWell(
                          child: Text(
                            "\$${widget.typeTicket[indexofprice]["price"] * qty}",
                            style: GoogleFonts.montserrat(
                              fontSize: 18,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 32, horizontal: 50),
                          child: Container(
                            height: 50,
                            width: 500,
                            decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.3),
                                    spreadRadius: 5,
                                    blurRadius: 7,
                                    offset: Offset(
                                        0, 3), // changes position of shadow
                                  ),
                                ],
                                borderRadius: BorderRadius.circular(26),
                                color: Color(0xffa043ff)),
                            child: Center(
                                child: Text("PAY",
                                    style: GoogleFonts.montserrat(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18))),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              )
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
