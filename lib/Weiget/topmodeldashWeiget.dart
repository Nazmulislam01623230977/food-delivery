// ignore: file_names
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../model/topmodelDashboad.dart';

class TopModelDashWeiget extends StatelessWidget {
  final TopmodelDashList topmodeldash;
  const TopModelDashWeiget({Key? key, required this.topmodeldash})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
              color: const Color(0xffF1F2F6),
              borderRadius: BorderRadius.circular(15),
              // ignore: prefer_const_literals_to_create_immutables
              boxShadow: [
                const BoxShadow(
                  color: Colors.black12,
                  blurRadius: 6,
                  offset: Offset(0, 2),
                )
              ]),
          child: Image.asset(topmodeldash.imageurl),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          topmodeldash.name,
          style: GoogleFonts.aBeeZee(
            fontSize: 17.0,
            color: const Color(0xff6B3A5B),
            fontWeight: FontWeight.w400,
          ),
        )
      ],
    );
  }
}
