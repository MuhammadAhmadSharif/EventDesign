// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EventCard extends StatelessWidget {
  final String image;
  final String text1;
  final String text2;

  const EventCard({
    Key? key,
    required this.image,
    required this.text1,
    required this.text2,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(26),
        // border: Border.all(),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            spreadRadius: 30,
            blurRadius: 3,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Container(
                height: 175,
                width: 185,
                decoration: BoxDecoration(
                    // border: Border.all(),
                    image: DecorationImage(
                        fit: BoxFit.fill, image: AssetImage(image))),
              ),
              Positioned(
                left: 20,
                top: 10,
                child: Container(
                  height: 45,
                  width: 45,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(9),
                      color: Colors.white.withOpacity(0.8)),
                  child: Center(
                    child: Text(
                      "30\nAUG",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.montserrat(fontSize: 12),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 12),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(text1,
                    textAlign: TextAlign.start,
                    style: GoogleFonts.montserrat(
                        fontSize: 12, fontWeight: FontWeight.bold)),
                Text(text2,
                    textAlign: TextAlign.start,
                    style: GoogleFonts.montserrat(
                        fontSize: 12, fontWeight: FontWeight.bold)),
                Text("Miami, US",
                    style: GoogleFonts.montserrat(
                      fontSize: 12,
                    )),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 8, top: 8, left: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.2),
                          spreadRadius: 2,
                          blurRadius: 7,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ],
                      borderRadius: BorderRadius.circular(100),
                      color: Colors.white),
                  child: Icon(
                    Icons.favorite,
                    size: 25,
                    color: Color(0xff701ec2),
                  ),
                ),
                SizedBox(
                  width: 50,
                ),
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.2),
                          spreadRadius: 2,
                          blurRadius: 7,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ],
                      borderRadius: BorderRadius.circular(100),
                      color: Colors.white),
                  child: Icon(
                    Icons.share_outlined,
                    size: 25,
                    color: Color(0xff701ec2),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
