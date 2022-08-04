import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../model/mornigordermodel.dart';

class MornigWeiget extends StatefulWidget {
  final MornigmealList mornigList;
  const MornigWeiget({Key? key, required this.mornigList}) : super(key: key);

  @override
  State<MornigWeiget> createState() => _MornigWeigetState();
}

class _MornigWeigetState extends State<MornigWeiget> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  // ignore: non_constant_identifier_names
  void _DiscrementCounter() {
    setState(() {
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
              Image.asset(
                widget.mornigList.imageurl,
                height: MediaQuery.of(context).size.height * 0.1,
                width: MediaQuery.of(context).size.height * 0.1,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.mornigList.name,
                    style: GoogleFonts.aBeeZee(
                      fontSize: 14,
                      color: const Color(0xff09051C),
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    widget.mornigList.pieces,
                    style: GoogleFonts.aBeeZee(
                      fontSize: 14,
                      color: const Color(0xffCBCBCB),
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Text(
                        '\$  ',
                        style: GoogleFonts.aBeeZee(
                          fontSize: 14,
                          color: const Color(0xff2FD080),
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Text(
                        widget.mornigList.lunch,
                        style: GoogleFonts.aBeeZee(
                          fontSize: 14,
                          color: const Color(0xff2FD080),
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
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
