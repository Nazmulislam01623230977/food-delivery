import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../CalenderPage/calenderpage.dart';
import '../Dashboad/dashboad.dart';
import '../Weiget/mornigweiget.dart';
import '../model/mornigordermodel.dart';

class OrderPage extends StatefulWidget {
  const OrderPage({Key? key}) : super(key: key);

  @override
  State<OrderPage> createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/bc.jpeg'),
                fit: BoxFit.fill,
              ),
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 30, left: 25),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const HomePage()),
                          );
                        },
                        child: Center(
                            child: Image.asset('assets/images/Path.png')),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 30, top: 30),
                      child: Text(
                        'Morning Orders',
                        style: GoogleFonts.aBeeZee(
                          fontSize: 25.0,
                          color: const Color(0xff09051C),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                ListView.builder(
                  itemCount: mornigmeallist.length,
                  scrollDirection: Axis.vertical,
                  physics: const ScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    var wallet = mornigmeallist[index];
                    return MornigWeiget(mornigList: wallet);
                  },
                ),
                const SizedBox(
                  height: 40,
                ),
                Container(
                  height: 200,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/pricebc.png"),
                      fit: BoxFit.fill,
                    ),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 40, vertical: 50),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Total',
                              style: GoogleFonts.aBeeZee(
                                fontSize: 18.0,
                                color: const Color(0xffffffff),
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Text(
                              '15 B.D',
                              style: GoogleFonts.aBeeZee(
                                fontSize: 18.0,
                                color: const Color(0xffffffff),
                                fontWeight: FontWeight.w600,
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Calenderpage()),
                            );
                          },
                          child: Container(
                            height: 50,
                            decoration: BoxDecoration(
                                color: const Color(0xffffffff),
                                // gradient: const LinearGradient(colors: [
                                //   Color.fromARGB(255, 166, 247, 197),
                                //   Color.fromARGB(255, 140, 211, 181),
                                // ]),
                                borderRadius: BorderRadius.circular(15),
                                // ignore: prefer_const_literals_to_create_immutables
                                boxShadow: [
                                  const BoxShadow(
                                    color: Colors.black12,
                                    blurRadius: 6,
                                    offset: Offset(0, 2),
                                  )
                                ]),
                            child: Align(
                                alignment: Alignment.center,
                                child: Text(
                                  'Export List ',
                                  style: GoogleFonts.aBeeZee(
                                    fontSize: 15.0,
                                    color: const Color(0xff2BCD7E),
                                    fontWeight: FontWeight.w500,
                                  ),
                                )),
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
