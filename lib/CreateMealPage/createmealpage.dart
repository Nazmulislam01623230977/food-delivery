// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../Dashboad/dashboad.dart';


class CreateMealPage extends StatefulWidget {
  const CreateMealPage({Key? key}) : super(key: key);

  @override
  State<CreateMealPage> createState() => _CreateMealPageState();
}

class _CreateMealPageState extends State<CreateMealPage> {
  var _tittleValue;
  var _listname;
  var _foodtype;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          // physics: const NeverScrollableScrollPhysics(),
          child: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/bc.jpeg'),
                fit: BoxFit.fill,
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
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
                    child: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 243, 227, 208),
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
                          Center(child: Image.asset('assets/images/Path.png')),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25),
                  child: Text(
                    'Create your Meal',
                    style: GoogleFonts.aBeeZee(
                      fontSize: 25.0,
                      color: const Color(0xff09051C),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 14,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25),
                  child: Text(
                    'Upload your Meals and Products to\norganize your Weekly Menu ',
                    style: GoogleFonts.aBeeZee(
                      fontSize: 12.0,
                      color: const Color(0xff09051C),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 26,
                ),
                Center(child: Image.asset('assets/images/PhotoMenu.png')),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(right: 55, top: 15),
                    child: Text(
                      'Meal Description',
                      style: GoogleFonts.aBeeZee(
                        fontSize: 16.0,
                        color: const Color(0xff09051C),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(right: 120, top: 7),
                    child: Text(
                      'Meal Description',
                      style: GoogleFonts.aBeeZee(
                        fontSize: 12.0,
                        color: const Color(0xff09051C),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
                Center(
                  child: Padding(
                    padding:
                        const EdgeInsets.only(right: 63, top: 7, bottom: 15),
                    child: Text(
                      'Ex Avocado Salad with egg',
                      style: GoogleFonts.aBeeZee(
                        fontSize: 12.0,
                        color: const Color(0xff09051C),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 5, horizontal: 120),
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.06,
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
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton(
                        hint: _tittleValue == null
                            ? Padding(
                                padding:
                                    const EdgeInsets.only(left: 8, right: 8),
                                child: Row(
                                  children: [
                                    Container(
                                      height: 30,
                                      width: 30,
                                      decoration: BoxDecoration(
                                          color: const Color(0xff1DC37A),
                                          borderRadius:
                                              BorderRadius.circular(15),
                                          // ignore: prefer_const_literals_to_create_immutables
                                          boxShadow: [
                                            const BoxShadow(
                                              color: Colors.black12,
                                              blurRadius: 6,
                                              offset: Offset(0, 2),
                                            )
                                          ]),
                                      child: Center(
                                          child: Image.asset(
                                              'assets/images/ndj.png')),
                                    ),
                                    const SizedBox(
                                      width: 8,
                                    ),
                                    Text(
                                      'Lunch',
                                      style: GoogleFonts.poppins(
                                        fontSize: 12,
                                        color: const Color(0xff000000),
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            : Padding(
                                padding:
                                    const EdgeInsets.only(left: 8, right: 8),
                                child: Text(
                                  _tittleValue,
                                  style: GoogleFonts.poppins(
                                    fontSize: 12,
                                    color: const Color(0xff000000),
                                    fontWeight: FontWeight.w600,
                                  ), //background: #3BE4C6;
                                ),
                              ),
                        isExpanded: true,
                        iconSize: 25.0,
                        style: const TextStyle(color: Colors.black),
                        items: ['Lunch1', 'Lunch2', 'Lunch3'].map(
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
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 5, horizontal: 120),
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.06,
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
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton(
                        hint: _tittleValue == null
                            ? Padding(
                                padding:
                                    const EdgeInsets.only(left: 8, right: 8),
                                child: Row(
                                  children: [
                                    Container(
                                      height: 30,
                                      width: 30,
                                      decoration: BoxDecoration(
                                          color: const Color(0xff1DC37A),
                                          borderRadius:
                                              BorderRadius.circular(15),
                                          // ignore: prefer_const_literals_to_create_immutables
                                          boxShadow: [
                                            const BoxShadow(
                                              color: Colors.black12,
                                              blurRadius: 6,
                                              offset: Offset(0, 2),
                                            )
                                          ]),
                                      child: Center(
                                          child: Image.asset(
                                              'assets/images/ndj.png')),
                                    ),
                                    const SizedBox(
                                      width: 8,
                                    ),
                                    Text(
                                      'List Name',
                                      style: GoogleFonts.poppins(
                                        fontSize: 12,
                                        color: const Color(0xff000000),
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            : Padding(
                                padding:
                                    const EdgeInsets.only(left: 8, right: 8),
                                child: Text(
                                  _listname,
                                  style: GoogleFonts.poppins(
                                    fontSize: 12,
                                    color: const Color(0xff000000),
                                    fontWeight: FontWeight.w600,
                                  ), //background: #3BE4C6;
                                ),
                              ),
                        isExpanded: true,
                        iconSize: 25.0,
                        style: const TextStyle(color: Colors.black),
                        items: ['A', 'B', 'C'].map(
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
                              _listname = val!;
                            },
                          );
                        },
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 5, horizontal: 120),
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.06,
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
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton(
                        hint: _foodtype == null
                            ? Padding(
                                padding:
                                    const EdgeInsets.only(left: 8, right: 8),
                                child: Row(
                                  children: [
                                    Container(
                                      height: 30,
                                      width: 30,
                                      decoration: BoxDecoration(
                                          color: const Color(0xff1DC37A),
                                          borderRadius:
                                              BorderRadius.circular(15),
                                          // ignore: prefer_const_literals_to_create_immutables
                                          boxShadow: [
                                            const BoxShadow(
                                              color: Colors.black12,
                                              blurRadius: 6,
                                              offset: Offset(0, 2),
                                            )
                                          ]),
                                      child: Center(
                                          child: Image.asset(
                                              'assets/images/ndj.png')),
                                    ),
                                    const SizedBox(
                                      width: 8,
                                    ),
                                    Text(
                                      'Food Type',
                                      style: GoogleFonts.poppins(
                                        fontSize: 12,
                                        color: const Color(0xff000000),
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            : Padding(
                                padding:
                                    const EdgeInsets.only(left: 8, right: 8),
                                child: Text(
                                  _foodtype,
                                  style: GoogleFonts.poppins(
                                    fontSize: 12,
                                    color: const Color(0xff000000),
                                    fontWeight: FontWeight.w600,
                                  ), //background: #3BE4C6;
                                ),
                              ),
                        isExpanded: true,
                        iconSize: 25.0,
                        style: const TextStyle(color: Colors.black),
                        items: ['abc', 'def', 'hfhg'].map(
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
                              _foodtype = val!;
                            },
                          );
                        },
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 115, vertical: 20),
                  child: InkWell(
                    onTap: () {
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(
                      //       builder: (context) => const SingUpPage()),
                      // );
                    },
                    child: Container(
                      height: 50,
                      decoration: BoxDecoration(
                        gradient: const LinearGradient(colors: [
                          Color(0xff53E88B),
                          Color(0xff15BE77),
                        ]),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Center(
                        child: Text(
                          'Next',
                          style: GoogleFonts.aBeeZee(
                            fontSize: 14,
                            color: const Color(0xffFFFFFF),
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                // Padding(
                //   padding:
                //       const EdgeInsets.symmetric(horizontal: 120, vertical: 15),
                //   child: ElevatedButton(
                //       style: ElevatedButton.styleFrom(
                //         shape: RoundedRectangleBorder(
                //           borderRadius: BorderRadius.circular(15), // <-- Radius
                //         ),
                //         // primary: const Color(0xff128041), // background
                //         primary: const Color(0xff1DC37A),
                //         // shadowColor: const Color(0xff1DC37A),
                //         // tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                //         // foreground
                //       ),
                //       onPressed: () {},
                //       child: const Padding(
                //         padding: EdgeInsets.only(top: 10, bottom: 10),
                //         child: Center(
                //           child: Padding(
                //             padding: EdgeInsets.all(12.0),
                //             child: Text(
                //               'Next',
                //               style: TextStyle(
                //                 fontWeight: FontWeight.w400,
                //                 fontSize: 15.0,
                //                 color: Color(0xffFFFFFF),
                //               ),
                //             ),
                //           ),
                //         ),
                //       )),
                // ),
                const SizedBox(
                  height: 30,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
