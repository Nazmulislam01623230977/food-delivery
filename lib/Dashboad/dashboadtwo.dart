import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import '../CreateMealPage/createmealpage.dart';

class DashBoadTwoPage extends StatefulWidget {
  const DashBoadTwoPage({Key? key}) : super(key: key);

  @override
  State<DashBoadTwoPage> createState() => _DashBoadTwoPageState();
}

class _DashBoadTwoPageState extends State<DashBoadTwoPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
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
            child: const GNav(
                tabBorderRadius: 8,
                padding: EdgeInsets.only(top: 5, bottom: 5, left: 8, right: 8),
                gap: 0,
                activeColor: Colors.white,
                iconSize: 24,
                duration: Duration(milliseconds: 800),
                tabBackgroundColor: Color(0xff15BE77),
                // padding: EdgeInsets.only(top: 5, bottom: 5),
                // gap: 0,
                // tabBackgroundColor: Color(0xff53E88B),
                // activeColor: Color(0xff15BE77),
                tabs: [
                  GButton(
                    margin:
                        EdgeInsets.only(top: 3, bottom: 3, left: 3, right: 3),
                    icon: Icons.home,
                    iconColor: Color(0xff15BE77),
                    iconSize: 24,
                    gap: 2,
                    text: 'Home',
                    textColor: Color(0xfffffffff),
                    textSize: 5,
                  ),
                  // GButton(
                  //   margin:
                  //       EdgeInsets.only(top: 3, bottom: 3, left: 3, right: 3),
                  //   icon: Icons.add_box_rounded,
                  //   iconColor: Color(0xff15BE77),
                  //   iconSize: 15,
                  //   gap: 2,
                  //   text: 'سية',
                  //   textColor: Color(0xff09051C),
                  //   textSize: 5,
                  // ),
                  GButton(
                    margin:
                        EdgeInsets.only(top: 3, bottom: 3, left: 3, right: 3),
                    // active: ,
                    icon: Icons.person,
                    iconColor: Color(0xff15BE77),
                    iconSize: 24,
                    gap: 2,
                    text: 'Profile',
                    textColor: Color(0xfffffffff),
                    textSize: 5,
                  ),
                  GButton(
                    margin:
                        EdgeInsets.only(top: 3, bottom: 3, left: 3, right: 3),
                    icon: Icons.shopping_cart,
                    iconSize: 24,
                    iconColor: Color(0xff15BE77),
                    gap: 2,
                    text: 'Shop',
                    textColor: Color(0xfffffffff),
                    textSize: 5,
                  ),
                  // GButton(
                  //   margin:
                  //       EdgeInsets.only(top: 3, bottom: 3, left: 3, right: 3),
                  //   icon: Icons.messenger_outlined,
                  //   iconSize: 15,
                  //   iconColor: Color(0xff15BE77),
                  //   text: 'الرئيسية',
                  //   textSize: 5,
                  //   textColor: Color(0xff09051C),
                  // ),
                ]),
          ),
        ),
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
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 30, right: 31, left: 31),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Pick & organize\nyour Meals',
                          style: GoogleFonts.aBeeZee(
                            fontSize: 30,
                            color: const Color(0xff000000),
                            fontWeight: FontWeight.w400,
                          )),
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                              color: const Color(0xffFFFFFF),
                              borderRadius: BorderRadius.circular(15),
                              // ignore: prefer_const_literals_to_create_immutables
                              boxShadow: [
                                const BoxShadow(
                                  color: Colors.black12,
                                  blurRadius: 6,
                                  offset: Offset(0, 2),
                                )
                              ]),
                          child: IconButton(
                            icon: Stack(
                              children: const [
                                Icon(
                                  Icons.notifications_none,
                                  color: Colors.green,
                                ),
                                Positioned(
                                  left: 15.0,
                                  child: Icon(
                                    Icons.brightness_1,
                                    color: Colors.red,
                                    size: 9,
                                  ),
                                )
                              ],
                            ),
                            onPressed: () {
                              // do something
                            },
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30, right: 30, top: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.7,
                        decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 253, 244, 233),
                            borderRadius: BorderRadius.circular(15),
                            // ignore: prefer_const_literals_to_create_immutables
                            boxShadow: [
                              const BoxShadow(
                                color: Colors.black12,
                                blurRadius: 6,
                                offset: Offset(0, 2),
                              )
                            ]),
                        child: TextField(
                          cursorColor: const Color.fromARGB(255, 17, 17, 17),
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "What do you want to order?",
                            hintStyle: GoogleFonts.roboto(
                              fontSize: 12.0,
                              color: const Color(0xffDA6317),
                              fontWeight: FontWeight.w400,
                            ),
                            prefixIcon: IconButton(
                              icon: const Icon(Icons.search, size: 30.0),
                              color: const Color(0xffDA6317),
                              onPressed: () {},
                            ),
                          ),
                          style: const TextStyle(
                              color: Color.fromARGB(255, 19, 18, 18),
                              fontSize: 15.0),
                        ),
                      ),
                      Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 253, 244, 233),
                              borderRadius: BorderRadius.circular(15),
                              // ignore: prefer_const_literals_to_create_immutables
                              boxShadow: [
                                const BoxShadow(
                                  color: Colors.black12,
                                  blurRadius: 6,
                                  offset: Offset(0, 2),
                                )
                              ]),
                          child: Image.asset('assets/images/Filter.png')),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 18,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 30,
                  ),
                  child: Container(
                    height: MediaQuery.of(context).size.height * .16,
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/Voucher1.png'),
                        fit: BoxFit.fill,
                      ),
                      // shape: BoxShape.circle,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 90),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Center(
                              child: Text('Breakfast\nMeals',
                                  style: GoogleFonts.aBeeZee(
                                    fontSize: 17,
                                    color: const Color(0xffFFFFFF),
                                    fontWeight: FontWeight.w400,
                                  ))),
                          const SizedBox(
                            height: 14,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Container(
                              height: 40,
                              width: 100,
                              decoration: BoxDecoration(
                                  color: const Color(0xffFFFFFF),
                                  borderRadius: BorderRadius.circular(8),
                                  // ignore: prefer_const_literals_to_create_immutables
                                  boxShadow: [
                                    const BoxShadow(
                                      color: Colors.black12,
                                      blurRadius: 6,
                                      offset: Offset(0, 2),
                                    )
                                  ]),
                              child: Center(
                                child: Text('Order Now',
                                    style: GoogleFonts.aBeeZee(
                                      fontSize: 10,
                                      color: const Color(0xff009C51),
                                      fontWeight: FontWeight.w600,
                                    )),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Container(
                    height: MediaQuery.of(context).size.height * .16,
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/Frame.png'),
                        fit: BoxFit.fill,
                      ),
                      // shape: BoxShape.circle,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 70),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Center(
                              child: Text('Lunch\nMeals',
                                  style: GoogleFonts.aBeeZee(
                                    fontSize: 17,
                                    color: const Color(0xff6B3A5B),
                                    fontWeight: FontWeight.w400,
                                  ))),
                          const SizedBox(
                            height: 14,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 35),
                            child: InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const CreateMealPage()),
                                );
                              },
                              child: Container(
                                height: 40,
                                width: 100,
                                decoration: BoxDecoration(
                                    color: const Color(0xffFFFFFF),
                                    borderRadius: BorderRadius.circular(8),
                                    // ignore: prefer_const_literals_to_create_immutables
                                    boxShadow: [
                                      const BoxShadow(
                                        color: Colors.black12,
                                        blurRadius: 6,
                                        offset: Offset(0, 2),
                                      )
                                    ]),
                                child: Center(
                                  child: Text('Order Now',
                                      style: GoogleFonts.aBeeZee(
                                        fontSize: 10,
                                        color: const Color(0xff009C51),
                                        fontWeight: FontWeight.w600,
                                      )),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Container(
                    height: MediaQuery.of(context).size.height * .16,
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/Voucher3.png'),
                        fit: BoxFit.fill,
                      ),
                      // shape: BoxShape.circle,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 80),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Center(
                              child: Text('Dinner\nMeals',
                                  style: GoogleFonts.aBeeZee(
                                    fontSize: 17,
                                    color: const Color(0xffFFFFFF),
                                    fontWeight: FontWeight.w400,
                                  ))),
                          const SizedBox(
                            height: 14,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 35),
                            child: Container(
                              height: 40,
                              width: 100,
                              decoration: BoxDecoration(
                                  color: const Color(0xffFFFFFF),
                                  borderRadius: BorderRadius.circular(8),
                                  // ignore: prefer_const_literals_to_create_immutables
                                  boxShadow: [
                                    const BoxShadow(
                                      color: Colors.black12,
                                      blurRadius: 6,
                                      offset: Offset(0, 2),
                                    )
                                  ]),
                              child: Center(
                                child: Text('Order Now',
                                    style: GoogleFonts.aBeeZee(
                                      fontSize: 10,
                                      color: const Color(0xff009C51),
                                      fontWeight: FontWeight.w600,
                                    )),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Container(
                    height: MediaQuery.of(context).size.height * .16,
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/Frame.png'),
                        fit: BoxFit.fill,
                      ),
                      // shape: BoxShape.circle,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 90),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Center(
                              child: Text('Groceries\nList',
                                  style: GoogleFonts.aBeeZee(
                                    fontSize: 17,
                                    color: const Color(0xff6B3A5B),
                                    fontWeight: FontWeight.w400,
                                  ))),
                          const SizedBox(
                            height: 14,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Container(
                              height: 40,
                              width: 100,
                              decoration: BoxDecoration(
                                  color: const Color(0xffFFFFFF),
                                  borderRadius: BorderRadius.circular(8),
                                  // ignore: prefer_const_literals_to_create_immutables
                                  boxShadow: [
                                    const BoxShadow(
                                      color: Colors.black12,
                                      blurRadius: 6,
                                      offset: Offset(0, 2),
                                    )
                                  ]),
                              child: Center(
                                child: Text('Order Now',
                                    style: GoogleFonts.aBeeZee(
                                      fontSize: 10,
                                      color: const Color(0xff009C51),
                                      fontWeight: FontWeight.w600,
                                    )),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
