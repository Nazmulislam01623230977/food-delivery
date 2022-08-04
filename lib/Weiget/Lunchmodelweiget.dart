// ignore: file_names
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../model/lunchmodellist.dart';

class LunchModelWeiget extends StatelessWidget {
  final LunchModelList lunchmodellist;
  const LunchModelWeiget({Key? key, required this.lunchmodellist})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.3,
      width: MediaQuery.of(context).size.width * 0.7,
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
            padding: const EdgeInsets.only(left: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(lunchmodellist.imageurl),
                Padding(
                  padding: const EdgeInsets.only(bottom: 50),
                  child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        lunchmodellist.icon,
                        color: Colors.red,
                        size: 14,
                      )),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Text(lunchmodellist.name,
                style: GoogleFonts.aBeeZee(
                  fontSize: 16.0,
                  color: const Color(0xff09051C),
                  fontWeight: FontWeight.w500,
                )),
          ),
          Center(
            child: Text(lunchmodellist.pices,
                style: GoogleFonts.aBeeZee(
                  fontSize: 13.0,
                  color: const Color(0xffE5E5E5),
                  fontWeight: FontWeight.w700,
                )),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Container(
                height: MediaQuery.of(context).size.height * 0.04,
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
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 20,
                      width: 20,
                      decoration: BoxDecoration(
                          color: const Color(0xff1DC37A),
                          borderRadius: BorderRadius.circular(15),
                          // ignore: prefer_const_literals_to_create_immutables
                          boxShadow: [
                            const BoxShadow(
                              color: Colors.black12,
                              blurRadius: 6,
                              offset: Offset(0, 2),
                            )
                          ]),
                      child:
                          Center(child: Image.asset('assets/images/ndj.png')),
                    ),
                    Text(lunchmodellist.countButoon),
                    const Icon(Icons.arrow_drop_down),
                  ],
                )),
          ),

          // Container(
          //   decoration: BoxDecoration(
          //       color: const Color(0xffFFFFFF), //E9F2F2
          //       borderRadius: BorderRadius.circular(10),
          //       // ignore: prefer_const_literals_to_create_immutables
          //       boxShadow: [
          //         const BoxShadow(
          //           color: Colors.black12,
          //           blurRadius: 6,
          //           offset: Offset(0, 2),
          //         )
          //       ]),
          //   child: Text(
          //     lunchmodellist.countButoon,
          //     style: const TextStyle(fontSize: 12),
          //   ),
          // )
          // Padding(
          //   padding: const EdgeInsets.only(left: 18,top: 5),
          //   child: Row(
          //     children: [
          //       Container(
          //         height: 30,
          //         width: 60,
          //         decoration: BoxDecoration(
          //             gradient: const LinearGradient(
          //                 begin: Alignment.centerLeft,
          //                 end: Alignment.centerRight,
          //                 stops: [01, 0.5],
          //                 colors: [Color(0xff53E88B), Color(0xff15BE77)]),
          //             // color: const Color(0xff53E88B),
          //             borderRadius: BorderRadius.circular(17),
          //             // ignore: prefer_const_literals_to_create_immutables
          //             boxShadow: [
          //               const BoxShadow(
          //                 color: Colors.black12,
          //                 blurRadius: 6,
          //                 offset: Offset(0, 2),
          //               )
          //             ]),
          //         child: Padding(
          //           padding: const EdgeInsets.all(4.0),
          //           child: Center(child: Text(lunchmodellist.countButoon)),
          //         ),
          //       ),
          //       const SizedBox(
          //         width: 10,
          //       ),
          //     ],
          //   ),
          // ),
        ],
      ),
    );
  }
}
