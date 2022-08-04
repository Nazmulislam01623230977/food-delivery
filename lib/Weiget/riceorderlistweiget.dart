import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../model/riceorderlistmodel.dart';

class RiceOrderList extends StatefulWidget {
  final RicemealList ricemeallist;
  const RiceOrderList({Key? key, required this.ricemeallist}) : super(key: key);

  @override
  State<RiceOrderList> createState() => _RiceOrderListState();
}

class _RiceOrderListState extends State<RiceOrderList> {
  int _counter = 0;
  var _tittleValue;

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
                  Image.asset(widget.ricemeallist.imageurl),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.ricemeallist.name,
                        style: GoogleFonts.aBeeZee(
                          fontSize: 15,
                          color: const Color(0xff09051C),
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        widget.ricemeallist.pieces,
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
                        widget.ricemeallist.lunch,
                        style: GoogleFonts.aBeeZee(
                          fontSize: 14,
                          color: const Color(0xffF36F28),
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Row(
                        children: [
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
                                    color: const Color(0xffD7F6E6),
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
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height:
                                    MediaQuery.of(context).size.height * 0.06,
                                width: 60,
                                decoration: BoxDecoration(
                                    color: const Color(0xffEBFBF2), //E9F2F2
                                    borderRadius: BorderRadius.circular(10),
                                    // ignore: prefer_const_literals_to_create_immutables
                                    boxShadow: [
                                      const BoxShadow(
                                        color: Colors.black12,
                                        blurRadius: 6,
                                        offset: Offset(0, 2),
                                      )
                                    ]),
                                child: DropdownButtonHideUnderline(
                                  child: DropdownButton(
                                    hint: _tittleValue == null
                                        ? Padding(
                                            padding: const EdgeInsets.only(
                                              left: 8,
                                            ),
                                            child: Text(
                                              '',
                                              style: GoogleFonts.roboto(
                                                fontSize: 12,
                                                color: const Color(0xffDFDFDF),
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                          )
                                        : Padding(
                                            padding: const EdgeInsets.only(
                                                left: 8, right: 8),
                                            child: Text(
                                              _tittleValue,
                                              style: GoogleFonts.roboto(
                                                fontSize: 12,
                                                color: const Color(0xff000000),
                                                fontWeight: FontWeight.w600,
                                              ), //background: #3BE4C6;
                                            ),
                                          ),
                                    isExpanded: true,
                                    iconSize: 15.0,
                                    style: const TextStyle(color: Colors.black),
                                    items: ['1/2', '1/3', '1/4'].map(
                                      (val) {
                                        return DropdownMenuItem<String>(
                                          value: val,
                                          child: Text(val),
                                        );
                                      },
                                    ).toList(),
                                    onChanged: (val) {
                                      setState(
                                        () {
                                          _tittleValue = val!;
                                        },
                                      );
                                    },
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ]),
          ),
        ));
  }
}
