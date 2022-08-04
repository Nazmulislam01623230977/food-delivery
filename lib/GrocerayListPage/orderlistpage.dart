import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import '../CalenderPage/calenderpage.dart';
import '../Dashboad/dashboad.dart';
import '../Listpage/GroceriesListingsPage.dart';
import '../OrderPage/orderpage.dart';
import '../Weiget/OrdermeallistWeiget.dart';
import '../Weiget/riceorderlistweiget.dart';
import '../model/ordermeallistmodel.dart';
import '../model/riceorderlistmodel.dart';
import 'addmeallistpage.dart';

class OrderListPage extends StatefulWidget {
  const OrderListPage({Key? key}) : super(key: key);

  @override
  State<OrderListPage> createState() => _OrderListPageState();
}

class _OrderListPageState extends State<OrderListPage> {
  var selectedIndex = 0;

  final List<Widget> children = <Widget>[
    HomePage(),
    AddMealListPage(),
    OrderPage(),
    GroceriesListPage(),
    Calenderpage(),
  ];

  indexpage(int index) {
    if (index == 0) {
      Navigator.push(context,
          MaterialPageRoute(builder: (BuildContext context) => HomePage()));
    } else if (index == 1) {
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (BuildContext context) => AddMealListPage()));
    } else if (index == 2) {
      Navigator.push(context,
          MaterialPageRoute(builder: (BuildContext context) => OrderPage()));
    } else if (index == 3) {
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (BuildContext context) => GroceriesListPage()));
    } else if (index == 4) {
      Navigator.push(context,
          MaterialPageRoute(builder: (BuildContext context) => Calenderpage()));
    }
  }

  bool isvisble = true;
  bool isvisble2 = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
          decoration: BoxDecoration(
              color: Color(0xffFFFFFF),
              borderRadius: BorderRadius.circular(22),
              // ignore: prefer_const_literals_to_create_immutables
              boxShadow: [
                const BoxShadow(
                  color: Colors.black12,
                  blurRadius: 6,
                  offset: Offset(0, 2),
                )
              ]),
          child: GNav(
            // haptic: true,
            tabBorderRadius: 8,
            padding: EdgeInsets.only(top: 5, bottom: 5, left: 8, right: 8),
            gap: 0,
            tabBackgroundColor: Color(0xffEAFAF2),
            activeColor: Color(0xffEAFAF2),
            iconSize: 24,
            duration: Duration(milliseconds: 600),
            // ignore: prefer_const_literals_to_create_immutables
            tabs: [
              GButton(
                // onPressed: () {
                //   Navigator.push(
                //       context,
                //       MaterialPageRoute(
                //           builder: (BuildContext context) => HomePage()));
                // },
                icon: Icons.home,
                iconColor: Color(0xff15BE77),
                iconActiveColor: Color(0xff33D281),
                // iconSize: 15,
                // gap: 2,
                text: 'Home',
                textColor: Color(0xff09051C),
                textSize: 5,
              ),
              GButton(
                // onPressed: () {
                //   Navigator.push(
                //       context,
                //       MaterialPageRoute(
                //           builder: (BuildContext context) =>
                //               AddMealListPage()));
                // },
                margin: EdgeInsets.only(top: 3, bottom: 3, left: 8, right: 8),
                icon: Icons.add_outlined,
                iconColor: Color(0xff15BE77),
                iconActiveColor: Color(0xff33D281),
                // iconSize: 15,
                // gap: 2,
                // AddMealListPage()
                text: 'Add',
                textColor: Color(0xff09051C),
                textSize: 5,
              ),
              GButton(
                margin: EdgeInsets.only(top: 3, bottom: 3, left: 3, right: 3),
                // active: ,
                icon: Icons.person,
                iconColor: Color(0xff15BE77),
                iconActiveColor: Color(0xff33D281),
                // iconSize: 15,
                // gap: 2,
                text: 'Profile',
                textColor: Color(0xff09051C),
                textSize: 5,
              ),
              GButton(
                // onPressed: () {
                //   Navigator.push(
                //       context,
                //       MaterialPageRoute(
                //           builder: (BuildContext context) => OrderPage()));
                // },

                margin: EdgeInsets.only(top: 3, bottom: 3, left: 3, right: 3),
                icon: Icons.shopping_cart,
                // iconSize: 15,
                iconColor: Color(0xff15BE77),

                // gap: 2,
                text: 'Shop',
                textColor: Color(0xff09051C),
                textSize: 5,
              ),
              GButton(
                // onPressed: () {
                //   Navigator.push(
                //       context,
                //       MaterialPageRoute(
                //           builder: (BuildContext context) => Calenderpage()));
                // },
                margin: EdgeInsets.only(top: 3, bottom: 3, left: 3, right: 3),
                icon: Icons.calendar_month,
                iconColor: Color(0xff15BE77),
                iconActiveColor: Color(0xff33D281),
                text: 'calendar',
                textSize: 5,
                textColor: Color(0xff09051C),
              ),
            ],

            selectedIndex: selectedIndex,
            onTabChange: (index) {
              setState(() {
                selectedIndex = index;
                // ignore: avoid_print
                print(index);
              });

              indexpage(index);
            },
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  height: 300,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                    image: AssetImage("assets/images/restaurant.png"),
                    fit: BoxFit.fill,
                  )),
                ),
                Positioned(
                    top: 200,
                    left: 4,
                    // left: 125.0,
                    child: Container(
                      // height: 1900,
                      width: MediaQuery.of(context).size.width * 0.98,
                      decoration: const BoxDecoration(
                          // image: DecorationImage(
                          //   image: AssetImage(
                          //       'assets/images/notification.png'),
                          //   // fit: BoxFit.fill,
                          // ),
                          color: Color(0xffFFFFFF),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30.0),
                            topRight: Radius.circular(30.0),
                          ),
                          // ignore: prefer_const_literals_to_create_immutables
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black12,
                              blurRadius: 6,
                              offset: Offset(0, 2),
                            )
                          ]),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 30, horizontal: 20),
                            child: Row(
                              children: [
                                Container(
                                  height:
                                      MediaQuery.of(context).size.height * 0.06,
                                  width:
                                      MediaQuery.of(context).size.width * 0.25,
                                  decoration: BoxDecoration(
                                      gradient: const LinearGradient(colors: [
                                        Color.fromARGB(255, 166, 247, 197),
                                        Color.fromARGB(255, 140, 211, 181),
                                      ]),
                                      borderRadius: BorderRadius.circular(15),
                                      // ignore: prefer_const_literals_to_create_immutables
                                      boxShadow: [
                                        const BoxShadow(
                                          color: Colors.black12,
                                          blurRadius: 6,
                                          offset: Offset(0, 2),
                                        )
                                      ]),
                                  child: Center(
                                    child: Text(
                                      'Popular',
                                      style: GoogleFonts.aBeeZee(
                                        fontSize: 12,
                                        color: const Color(0xffffffff),
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 15,
                                ),
                                Container(
                                  height:
                                      MediaQuery.of(context).size.height * 0.06,
                                  width:
                                      MediaQuery.of(context).size.width * 0.25,
                                  decoration: BoxDecoration(
                                      gradient: const LinearGradient(colors: [
                                        Color.fromARGB(255, 166, 247, 197),
                                        Color.fromARGB(255, 140, 211, 181),
                                      ]),
                                      borderRadius: BorderRadius.circular(15),
                                      // ignore: prefer_const_literals_to_create_immutables
                                      boxShadow: [
                                        const BoxShadow(
                                          color: Colors.black12,
                                          blurRadius: 6,
                                          offset: Offset(0, 2),
                                        )
                                      ]),
                                  child: Center(
                                    child: Text(
                                      'Family list',
                                      style: GoogleFonts.aBeeZee(
                                        fontSize: 12,
                                        color: const Color(0xffffffff),
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 50,
                                ),
                                Container(
                                  height:
                                      MediaQuery.of(context).size.height * 0.06,
                                  width:
                                      MediaQuery.of(context).size.width * 0.1,
                                  decoration: BoxDecoration(
                                      color: const Color(0xffEBFBF2),
                                      // gradient: const LinearGradient(colors: [
                                      //   Color.fromARGB(255, 166, 247, 197),
                                      //   Color.fromARGB(255, 140, 211, 181),
                                      // ]),
                                      borderRadius: BorderRadius.circular(25),
                                      // ignore: prefer_const_literals_to_create_immutables
                                      boxShadow: [
                                        const BoxShadow(
                                          color: Colors.black12,
                                          blurRadius: 6,
                                          offset: Offset(0, 2),
                                        )
                                      ]),
                                  child: const Icon(
                                    Icons.calendar_month,
                                    color: Colors.black,
                                  ),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Container(
                                  height:
                                      MediaQuery.of(context).size.height * 0.06,
                                  width:
                                      MediaQuery.of(context).size.width * 0.1,
                                  decoration: BoxDecoration(
                                      color: const Color(0xffFFE8E8),
                                      // gradient: const LinearGradient(colors: [
                                      //   Color.fromARGB(255, 166, 247, 197),
                                      //   Color.fromARGB(255, 140, 211, 181),
                                      // ]),
                                      borderRadius: BorderRadius.circular(25),
                                      // ignore: prefer_const_literals_to_create_immutables
                                      boxShadow: [
                                        const BoxShadow(
                                          color: Colors.black12,
                                          blurRadius: 6,
                                          offset: Offset(0, 2),
                                        )
                                      ]),
                                  child: const Icon(
                                    Icons.favorite,
                                    color: Colors.red,
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ))
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, bottom: 10),
              child: Row(
                children: [
                  Text(
                    'Machboos',
                    style: GoogleFonts.aBeeZee(
                      fontSize: 27,
                      color: const Color(0xff09051C),
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Image.asset('assets/images/vb.png')
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Row(
                children: [
                  Image.asset('assets/images/vb.png'),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Machboos',
                    style: GoogleFonts.aBeeZee(
                      fontSize: 14,
                      color: const Color(0xff3B3B3B),
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Image.asset('assets/images/vb2.png'),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Rice (Food Type)',
                    style: GoogleFonts.aBeeZee(
                      fontSize: 14,
                      color: const Color(0xff3B3B3B),
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 10, bottom: 10),
              child: Text(
                'Description - Kuwaiti Machboos ',
                style: GoogleFonts.aBeeZee(
                  fontSize: 12,
                  color: const Color(0xff000000),
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Ingredients ',
                    style: GoogleFonts.aBeeZee(
                      fontSize: 15,
                      color: const Color(0xff09051C),
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Text(
                    'View All',
                    style: GoogleFonts.aBeeZee(
                      fontSize: 12,
                      color: const Color(0xffFF7C32),
                      fontWeight: FontWeight.w700,
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 8),
              child: InkWell(
                onTap: () {
                  setState(() {
                    isvisble = !isvisble;
                  });
                },
                child: Container(
                  width: 100,
                  // margin: const EdgeInsets.all(30.0),
                  padding: const EdgeInsets.only(left: 8, right: 8),
                  decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft,
                        colors: [
                          Color(0xff53E88B),
                          Color(0xff15BE77),
                        ],
                      ),
                      // border: Border.all(color: Colors.green),
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  child: Row(
                    children: [
                      Text(
                        "Chicken",
                        style: GoogleFonts.aBeeZee(
                          fontSize: 14,
                          color: const Color(0xffffffff),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      const Icon(
                        Icons.arrow_drop_down,
                        color: Color(0xff15BE77),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Visibility(
              visible: isvisble,
              child: ListView.builder(
                itemCount: ordermeallist.length,
                scrollDirection: Axis.vertical,
                physics: const ScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  var wallet = ordermeallist[index];
                  return OrdermeallistWeiget(ordermeallist: wallet);
                },
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 8),
              child: InkWell(
                onTap: () {
                  setState(() {
                    isvisble2 = !isvisble2;
                  });
                },
                child: Container(
                  width: 100,
                  // margin: const EdgeInsets.all(30.0),
                  padding: const EdgeInsets.only(left: 8, right: 8),
                  decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft,
                        colors: [
                          Color(0xff53E88B),
                          Color(0xff15BE77),
                        ],
                      ),
                      // border: Border.all(color: Colors.green),
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 8),
                        child: Text(
                          "Rice",
                          style: GoogleFonts.aBeeZee(
                            fontSize: 14,
                            color: const Color(0xffffffff),
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      const Icon(
                        Icons.arrow_drop_down,
                        color: Color(0xff15BE77),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Visibility(
              visible: isvisble2,
              child: ListView.builder(
                itemCount: ricemeallist.length,
                scrollDirection: Axis.vertical,
                physics: const ScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  var w = ricemeallist[index];
                  return RiceOrderList(ricemeallist: w);
                },
              ),
            ),
            const SizedBox(
              height: 10,
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const OrderPage()),
                  );
                },
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.07,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft,
                        colors: [Color(0xff53E88B), Color(0xff15BE77)],
                      ),
                      borderRadius: BorderRadius.circular(15),
                      // ignore: prefer_const_literals_to_create_immutables
                      boxShadow: [
                        const BoxShadow(
                          color: Colors.black12,
                          blurRadius: 6,
                          offset: Offset(0, 2),
                        )
                      ]),
                  child: Center(
                    child: Text(
                      'Export List',
                      style: GoogleFonts.aBeeZee(
                        fontSize: 18,
                        color: const Color(0xffFFFFFF),
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ),
            ),

            // Center(
            //   child: FloatingActionButton.extended(
            //     backgroundColor: const Color(0xff15BE77),
            //     onPressed: () {},
            //     label: Padding(
            //       padding: const EdgeInsets.symmetric(horizontal: 100),
            //       child: Text(
            //         'Export List',
            //         style: GoogleFonts.aBeeZee(
            //           fontSize: 18,
            //           color: const Color(0xffFFFFFF),
            //           fontWeight: FontWeight.w600,
            //         ),
            //       ),
            //     ),
            //     // icon: Icon(Icons.edit),
            //   ),
            // ),
            const SizedBox(
              height: 10,
            ),

            // Container(
            //     height: 50,
            //     width: 500,
            //     decoration: BoxDecoration(
            //         gradient: const LinearGradient(
            //           begin: Alignment.topRight,
            //           end: Alignment.bottomLeft,
            //           colors: [
            //             Color(0xff53E88B),
            //             Color(0xff15BE77),
            //           ],
            //         ),
            //         color: const Color(0xffFFFFFF),
            //         borderRadius: BorderRadius.circular(15),
            //         // ignore: prefer_const_literals_to_create_immutables
            //         boxShadow: [
            //           const BoxShadow(
            //             color: Colors.black12,
            //             blurRadius: 6,
            //             offset: Offset(0, 2),
            //           )
            //         ]),
            //     child: FloatingActionButton(
            //       onPressed: () {},
            //       child: Text(
            //         'Export List',
            //         style: GoogleFonts.aBeeZee(
            //           fontSize: 18,
            //           color: const Color(0xffFFFFFF),
            //           fontWeight: FontWeight.w700,
            //         ),
            //       ),
            //     ))
          ],
        ),
      ),
      // floatingActionButton: Container(
      //   height: 100.0,
      //   width: 500.0,
      //   child: FittedBox(
      //     child: FloatingActionButton(
      //       onPressed: () {},
      //       child: Text(
      //         'Export List',
      //         style: GoogleFonts.aBeeZee(
      //           fontSize: 18,
      //           color: const Color(0xffFFFFFF),
      //           fontWeight: FontWeight.w700,
      //         ),
      //       ),
      //     ),
      //   ),
      // ),
    );
  }
}
