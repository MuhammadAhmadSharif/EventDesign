// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:design/widgets/mini_ticket.dart';

import '../buyscreen.dart';

class AppbarScreen extends StatefulWidget {

  AppbarScreen({
    Key? key,
   
  }) : super(key: key);

  @override
  State<AppbarScreen> createState() => _AppbarScreenState();
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

class _AppbarScreenState extends State<AppbarScreen> {
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
                shadowColor: Colors.transparent,
                backgroundColor: Colors.white,
                floating: false,
                collapsedHeight: 80,
                // Make the initial height of the SliverAppBar larger than normal
                expandedHeight: 280,
                // bottom: PreferredSize(
                //   preferredSize: Size.fromHeight(20),
                //   child: Container(
                //     margin: EdgeInsets.only(top: 20),
                //     decoration: BoxDecoration(
                //       color: backgroundColor,
                //       borderRadius: BorderRadius.only(
                //           topLeft: Radius.circular(40),
                //           topRight: Radius.circular(40)),
                //     ),
                //     alignment: Alignment.center,
                //     width: size.width,
                //     height: 20,
                //     // child: Container(
                //     //   width: 42,
                //     //   height: 4,
                //     //   decoration: BoxDecoration(
                //     //       color: Colors.grey[300],
                //     //       borderRadius: BorderRadius.circular(20)),
                //     // ),
                //   ),
                // ),
                automaticallyImplyLeading: false,
                pinned: true,
                flexibleSpace: FlexibleSpaceBar(
                    titlePadding: EdgeInsets.all(0),
                    title: Container(
                      padding: EdgeInsets.symmetric(horizontal: 0),
                      child: Column(
                        children: [
                          PreferredSize(
                            preferredSize: Size.fromHeight(100),
                            child: Container(
                              width: MediaQuery.of(context).size.width,
                              height: 100,
                              padding: EdgeInsets.only(
                                  bottom: 20,
                                  left: 20,
                                  right: 20),
                              alignment: Alignment.bottomCenter,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  GestureDetector(
                                      onTap: () {
                                        Navigator.pop(context);
                                      },
                                      child: Image.asset(
                                        'assest/logo.png',
                                        scale: 4,
                                        color: Colors.white,
                                      )),
                                  FittedBox(
                                    child: Container(
                                      width: MediaQuery.of(context).size.width * 0.54,
                                      // height: 30,
                                      // color: Colors.red,
                                      
                                      // alignment: Alignment.center,
                                      child: Text(
                                        // AppLocalizations.of(context).translate('notifications'),
                                        ""),
                                    
                                      ),
                                    ),
                                ],
                              ),
                              decoration: BoxDecoration(
                                  // color: Colors.red,
                                  image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image:
                                          AssetImage('assest/Base.png'))),
                            ),
                          ),
                        ],
                      ),
                    ),
                    background: Stack(
                      children: [
                    //     PageView(
                       
                          
                    //       children: List.generate(widget.eventDetail['images'].length, (i) => 
                    //       Container(
                    //        // padding: EdgeInsets.only(top: 10),
                    //        width: MediaQuery.of(context).size.width,
                    //        height: 260,
                    //        decoration: BoxDecoration(
                    //            // color: Colors.yellow,
                    //            borderRadius: BorderRadius.only(
                    //              bottomLeft: Radius.circular(30),
                    //              bottomRight: Radius.circular(30),
                    //            ),
                    //            // image: DecorationImage(
                    //            //     image: CachedNetworkImageProvider(
                    //            //       Configuration.url+'/'+ widget.eventDetail['images'][i],
                    //            //       maxHeight: 300,
                    //            //       maxWidth:300
                    //            //       ),
                    //            //     fit: BoxFit.cover)
                    //                ),
                    //                child: ClipRRect(
                    //   borderRadius: BorderRadius.only(
                    //              bottomLeft: Radius.circular(30),
                    //              bottomRight: Radius.circular(30),
                    //            ),
                      
                    //   child: FadeInImage(
                    //                                    fit: BoxFit.cover,
                    //                                    placeholder: AssetImage(
                    //                                      'assets/loading.gif',
                    //                                    ),
                    //                                    image: CachedNetworkImageProvider(
                    //                                      Configuration.url+'/'+ widget.eventDetail['images'][i],
                    //                                      maxHeight: 1000,
                    //                                      maxWidth: 1000
                    //                                      // fit: BoxFit.fill,
                    //                                    ),
                    //                                  ),
                    // ),
                           
                    //                           )
                    //       )
                    //     ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                             padding: EdgeInsets.fromLTRB(16, 50, 16, 0),
                             alignment: Alignment.topLeft,
                             child: GestureDetector(
                               onTap: () {
                                 Navigator.pop(context);
                               },
                               child: Container(
                                   padding: EdgeInsets.all(5),
                                   height: 40,
                                   width: 40,
                                   decoration: BoxDecoration(
                                     borderRadius: BorderRadius.circular(50),
                                     color: Colors.white,
                                   ),
                                   child: Image.asset(
                                     'assest/Base.png',
                                     scale: 4,
                                   )),
                             ),
                           ),
                         Container(
                            padding: EdgeInsets.fromLTRB(16, 50, 16, 0),
                             alignment: Alignment.topRight,
                           child: GestureDetector(
                                    //  onTap: (){
                                    //   checkFavorite();
                                    //  },
                                     child: Container(
                                         height: 40,
                                         width: 40,
                                         decoration: BoxDecoration(
                                           // color: Colors.red,s
                                           color:   Colors.white,
                                           boxShadow: [
                                             BoxShadow(
                                                 blurRadius: 3,
                                                 spreadRadius: 1,
                                                 color: Colors.grey
                                                     .withOpacity(0.3))
                                           ],
                                           borderRadius:
                                               BorderRadius.circular(40),
                                         ),
                                         child:  Icon(Icons.favorite , color: Colors.pink,)),
                                   ),
                         ),
                        ],
                      )
                      ],
                    ))),
              
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
