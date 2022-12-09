// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:custom_clippers/custom_clippers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:google_fonts/google_fonts.dart';

class MiniTicket extends StatelessWidget {
  Color colorTeicktType;
  Color colorTeictprice;
  String price;
  String ticketType;
  Color color;
  MiniTicket({
    Key? key,
    required this.colorTeicktType,
    required this.colorTeictprice,
    required this.price,
    required this.ticketType,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: 110,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            ticketType,
            style: GoogleFonts.montserrat(
              color: colorTeicktType,
                fontSize: 14, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            price,
            style: GoogleFonts.montserrat(
              color: colorTeictprice,
              fontSize: 16,
            ),
          )
        ],
      ),
    );
  }
}
