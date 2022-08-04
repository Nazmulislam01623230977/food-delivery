import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../model/ordermeallistmodel.dart';

class OrdermeallistWeiget extends StatefulWidget {
  final OrdermealList ordermeallist;

  const OrdermeallistWeiget({Key? key, required this.ordermeallist})
      : super(key: key);

  @override
  State<OrdermeallistWeiget> createState() => _OrdermeallistWeigetState();
}

class _OrdermeallistWeigetState extends State<OrdermeallistWeiget> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  // ignore: non_constant_identifier_names
  void _DiscrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 4),
      child: Container(
        padding: const EdgeInsets.all(8.0),
        decoration: BoxDecoration(
            color: const Color(0xffFFFFFF),
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
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(widget.ordermeallist.imageurl),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.ordermeallist.name,
                    style: GoogleFonts.aBeeZee(
                      fontSize: 15,
                      color: const Color(0xff09051C),
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Text(
                    widget.ordermeallist.pieces,
                    style: GoogleFonts.aBeeZee(
                      fontSize: 14,
                      color: const Color(0xff3B3B3B),
                      fontWeight: FontWeight.w400,
                    ),
                  )
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    widget.ordermeallist.lunch,
                    style: GoogleFonts.aBeeZee(
                      fontSize: 14,
                      color: const Color(0xffF36F28),
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        color: const Color(0xffEBFBF2),
                        borderRadius: BorderRadius.circular(8),
                        // ignore: prefer_const_literals_to_create_immutables
                        boxShadow: [
                          const BoxShadow(
                            color: Colors.black12,
                            blurRadius: 6,
                            offset: Offset(0, 2),
                          )
                        ]),
                    child: Row(
                      children: [
                        Container(
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                              color: const Color(0xffEBFBF2),
                              // gradient: const LinearGradient(
                              //   begin: Alignment.topRight,
                              //   end: Alignment.bottomLeft,
                              //   colors: [
                              //     Color(0xff53E88B),
                              //     Color(0xff15BE77),
                              //   ],
                              // ),
                              borderRadius: BorderRadius.circular(8),
                              // ignore: prefer_const_literals_to_create_immutables
                              boxShadow: [
                                const BoxShadow(
                                  color: Colors.black12,
                                  blurRadius: 6,
                                  offset: Offset(0, 2),
                                )
                              ]),
                          child: IconButton(
                              onPressed: () {
                                _DiscrementCounter();
                              },
                              icon: const Icon(
                                Icons.remove,
                                size: 12,
                              )),
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        Text(
                          '$_counter',
                          style: GoogleFonts.aBeeZee(
                            fontSize: 16,
                            color: const Color(0xff181818),
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        Container(
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                              gradient: const LinearGradient(
                                begin: Alignment.topRight,
                                end: Alignment.bottomLeft,
                                colors: [
                                  Color(0xff53E88B),
                                  Color(0xff15BE77),
                                ],
                              ),
                              borderRadius: BorderRadius.circular(8),
                              // ignore: prefer_const_literals_to_create_immutables
                              boxShadow: [
                                const BoxShadow(
                                  color: Colors.black12,
                                  blurRadius: 6,
                                  offset: Offset(0, 2),
                                )
                              ]),
                          child: IconButton(
                              onPressed: () {
                                _incrementCounter();
                              },
                              icon: const Icon(
                                Icons.add,
                                size: 12,
                              )),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
