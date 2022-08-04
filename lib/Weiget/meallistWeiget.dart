// ignore: file_names
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../model/meallistmodel.dart';

class MeanListModel extends StatelessWidget {
  final ModelmealList mealmodellist;
  const MeanListModel({Key? key, required this.mealmodellist})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 70,
          width: 70,
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
          child: Image.asset(mealmodellist.imageurl),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          mealmodellist.name,
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
