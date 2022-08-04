// ignore: file_names
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../model/newcalendermodel.dart';

class NewCalenderWeiget extends StatelessWidget {
  final NewcalenderList newcalender;
  const NewCalenderWeiget({Key? key, required this.newcalender})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8),
      decoration: BoxDecoration(
          color: const Color(0xff1FC181),
          borderRadius: BorderRadius.circular(20),
          // ignore: prefer_const_literals_to_create_immutables
          boxShadow: [
            const BoxShadow(
              color: Colors.black12,
              blurRadius: 6,
              offset: Offset(0, 2),
            )
          ]),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              newcalender.dayname,
              style: GoogleFonts.aBeeZee(
                decoration: TextDecoration.none,
                fontSize: 25,
                color: const Color(0xffffffff),
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Image.asset(
                  newcalender.imageurl,
                  height: 40,
                  width: 40,
                ),
                const SizedBox(
                  width: 10,
                ),

                Expanded(
                  child: SizedBox(
                      height: MediaQuery.of(context).size.height * 0.10,
                      width: MediaQuery.of(context).size.width,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 5,
                        itemBuilder: (context, index) => buildcard(context),
                      )),
                ),
                // Container(
                //   height: 30,
                //   width: 300,
                //   decoration: BoxDecoration(
                //       color: const Color(0xffF1F2F6),
                //       borderRadius: BorderRadius.circular(8),
                //       // ignore: prefer_const_literals_to_create_immutables
                //       boxShadow: [
                //         const BoxShadow(
                //           color: Colors.black12,
                //           blurRadius: 6,
                //           offset: Offset(0, 2),
                //         )
                //       ]),
                //   child: Center(
                //     child: Text(
                //       'Dinner',
                //       style: GoogleFonts.aBeeZee(
                //         fontSize: 16,
                //         color: Colors.grey,
                //         fontWeight: FontWeight.w600,
                //       ),
                //     ),
                //   ),
                // ),
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            Row(
              children: [
                Image.asset(
                  newcalender.imageurl1,
                  height: 40,
                  width: 40,
                ),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: SizedBox(
                      height: MediaQuery.of(context).size.height * 0.10,
                      width: MediaQuery.of(context).size.width,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 5,
                        itemBuilder: (context, index) => buildcard(context),
                      )),
                ),
                
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            Row(
              children: [
                Image.asset(
                  newcalender.imageurl2,
                  height: 40,
                  width: 40,
                ),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: SizedBox(
                      height: MediaQuery.of(context).size.height * 0.10,
                      width: MediaQuery.of(context).size.width,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 5,
                        itemBuilder: (context, index) => buildcard(context),
                      )),
                ),
               
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            Row(
              children: [
                Image.asset(
                  newcalender.imageurl3,
                  height: 40,
                  width: 40,
                ),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: SizedBox(
                      height: MediaQuery.of(context).size.height * 0.10,
                      width: MediaQuery.of(context).size.width,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 5,
                        itemBuilder: (context, index) => buildcard(context),
                      )),
                ),
              
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            // Center(
            //   child: TextButton(
            //       onPressed: () {},
            //       child: Text(
            //         newcalender.textbutton,
            //         style: GoogleFonts.aBeeZee(
            //           decoration: TextDecoration.none,
            //           fontSize: 20,
            //           color: const Color(0xffffffff),
            //           fontWeight: FontWeight.w600,
            //         ),
            //       )),
            // )
          ],
        ),
      ),
    );
  }

  Widget buildcard(context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Container(
        // height: MediaQuery.of(context).size.height * 0.9,
        width: MediaQuery.of(context).size.width * .45,
        decoration: BoxDecoration(
            color: const Color(0xfffffffff),
            borderRadius: BorderRadius.circular(15),
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 8),
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.1,
                    width: MediaQuery.of(context).size.width * .13,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          'assets/images/rice.png',
                        ),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Meal name',
                        style: GoogleFonts.aBeeZee(
                          decoration: TextDecoration.none,
                          fontSize: 14,
                          color: const Color(0xff09051C),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        'food type',
                        style: GoogleFonts.aBeeZee(
                          decoration: TextDecoration.none,
                          fontSize: 14,
                          color: const Color(0xffC4C4C4),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        'Keyword',
                        style: GoogleFonts.aBeeZee(
                          decoration: TextDecoration.none,
                          fontSize: 15,
                          color: const Color(0xff28CB7D),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
