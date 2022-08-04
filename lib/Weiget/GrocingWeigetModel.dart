import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../model/groecisingmodel.dart';

class GroceingWeigetModel extends StatelessWidget {
  final GrocingModelList grocientmodellist;
  const GroceingWeigetModel({Key? key, required this.grocientmodellist})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: const Color(0xffFFFFFF),
          borderRadius: BorderRadius.circular(22),
          // ignore: prefer_const_literals_to_create_immutables
          boxShadow: [
            const BoxShadow(
              color: Colors.black12,
              blurRadius: 6,
              offset: Offset(0, 2),
            )
          ]),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  grocientmodellist.imageurl,
                  height: MediaQuery.of(context).size.height * 0.13,
                  width: MediaQuery.of(context).size.width * 0.15,
                  fit: BoxFit.cover,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 5,bottom: 50),
                  child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        grocientmodellist.icon,
                        color: Colors.red,
                        size: 18,
                      )),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Text(grocientmodellist.name,
                style: GoogleFonts.aBeeZee(
                  fontSize: 16.0,
                  color: const Color(0xff09051C),
                  fontWeight: FontWeight.w500,
                )),
          ),
          Center(
            child: Text(grocientmodellist.pices,
                style: GoogleFonts.aBeeZee(
                  fontSize: 13.0,
                  color: const Color(0xffE5E5E5),
                  fontWeight: FontWeight.w700,
                )),
          ),
          const SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 15, bottom: 10),
            child: Container(
                height: MediaQuery.of(context).size.height * 0.05,
                decoration: BoxDecoration(
                    color: const Color(0xffFEFEFF), //E9F2F2
                    borderRadius: BorderRadius.circular(10),
                    // ignore: prefer_const_literals_to_create_immutables
                    boxShadow: [
                      const BoxShadow(
                        color: Colors.black12,
                        blurRadius: 6,
                        offset: Offset(0, 2),
                      )
                    ]),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.width * 0.05,
                      width: MediaQuery.of(context).size.width * 0.05,
                      decoration: BoxDecoration(
                          color: const Color(0xffBAEED5),
                          borderRadius: BorderRadius.circular(30),
                          // ignore: prefer_const_literals_to_create_immutables
                          boxShadow: [
                            const BoxShadow(
                              color: Colors.black12,
                              blurRadius: 6,
                              offset: Offset(0, 2),
                            )
                          ]),
                      child: const Icon(
                        Icons.add,
                        size: 12,
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      grocientmodellist.countButoon,
                      style: GoogleFonts.poppins(
                        fontSize: 14.0,
                        color: const Color(0xff212121),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                )),
          ),
        ],
      ),
    );
  }
}
