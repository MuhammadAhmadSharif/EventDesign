// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_fonts/google_fonts.dart';

class CardHome extends StatelessWidget {
  final String images;
  final String datetext;
  final int index;
  // final List= [0,1,2,3,];
  CardHome({
    Key? key,
    required this.images,
    required this.datetext,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ],
          color: Color(0xffffffff),
          // border: Border.all(),
          borderRadius: BorderRadius.circular(17)),
      child: Column(
        children: [
          Hero(
            tag: "image$index",
            child: Container(
              child: Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        // border: Border.all(),
                        ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 8,
                      left: 16,
                    ),
                    child: Container(
                      height: 55,
                      width: 55,
                      decoration: BoxDecoration(
                          // border: Border.all(),
                          borderRadius: BorderRadius.circular(9),
                          color: Colors.white.withOpacity(0.8)),
                      child: Center(
                        child: Text(
                          datetext,
                          textAlign: TextAlign.center,
                          style: GoogleFonts.montserrat(fontSize: 14),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              height: 160,
              // width: 1000,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(17),
                  // border: Border.all(),
                  image: DecorationImage(
                      image: AssetImage(images), fit: BoxFit.fitWidth)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 28, bottom: 4),
            child: Row(
              children: [
                Text("JUICE WRLD CONCERT",
                    style: GoogleFonts.montserrat(
                        color: Color(0xff707070),
                        fontWeight: FontWeight.bold,
                        fontSize: 14))
              ],
            ),
          ),
          Container(
            // decoration: BoxDecoration(border: Border.all()),
            child: Padding(
              padding: const EdgeInsets.only(left: 16, right: 16),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 35,
                    backgroundColor: Colors.transparent,
                    backgroundImage: AssetImage("assest/Group.png"),
                  ),
                  Container(
                    // decoration: BoxDecoration(border: Border.all()),
                    child: Column(
                      children: [
                        Text("Club Space",
                            style: GoogleFonts.montserrat(
                                color: Color(0xff707070), fontSize: 14)),
                        SizedBox(
                          height: 2,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.location_pin,
                              color: Color(0xff707070),
                              size: 16,
                            ),
                            Text("Miami, US",
                                style: GoogleFonts.montserrat(
                                    color: Color(0xff707070), fontSize: 14))
                          ],
                        )
                      ],
                    ),
                  ),
                  Spacer(),
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.2),
                          spreadRadius: 2,
                          blurRadius: 7,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ],
                      borderRadius: BorderRadius.circular(100),
                      // border: Border.all(),
                    ),
                    child: Icon(
                      Icons.favorite_border,
                      color: Color(0xff701ec2),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.2),
                          spreadRadius: 2,
                          blurRadius: 7,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ],
                      borderRadius: BorderRadius.circular(100),
                      // border: Border.all(),
                    ),
                    child: Icon(
                      Icons.share_outlined,
                      color: Color(0xff701ec2),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
