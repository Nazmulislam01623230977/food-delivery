import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import '../CalenderPage/calenderpage.dart';
import '../Dashboad/dashboad.dart';
import '../GrocerayListPage/addmeallistpage.dart';
import '../Listpage/GroceriesListingsPage.dart';
import 'orderpage.dart';

class ProductDetilisPage extends StatefulWidget {
  const ProductDetilisPage({Key? key}) : super(key: key);

  @override
  State<ProductDetilisPage> createState() => _ProductDetilisPageState();
}

class _ProductDetilisPageState extends State<ProductDetilisPage> {
  int _selectedIndex = 0;
  PageController _controller = PageController();

  final index = [
    const HomePage(),
    const AddMealListPage(),
    const OrderPage(),
    const GroceriesListPage(),
    const Calenderpage(),
  ];

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
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
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
            child: GNav(
              // haptic: true,
              tabBorderRadius: 8,
              padding:
                  const EdgeInsets.only(top: 5, bottom: 5, left: 8, right: 8),
              gap: 0,
              tabBackgroundColor: const Color(0xffEAFAF2),
              activeColor: const Color(0xffEAFAF2),
              iconSize: 24,
              tabs: [
                GButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) =>
                                const HomePage()));
                  },
                  icon: Icons.home,
                  iconColor: const Color(0xff15BE77),
                  iconActiveColor: const Color(0xff33D281),
                  // iconSize: 15,
                  // gap: 2,
                  text: 'Home',
                  textColor: const Color(0xff09051C),
                  textSize: 5,
                ),
                GButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) =>
                                const AddMealListPage()));
                  },
                  margin: const EdgeInsets.only(
                      top: 3, bottom: 3, left: 8, right: 8),
                  icon: Icons.add_outlined,
                  iconColor: const Color(0xff15BE77),
                  iconActiveColor: const Color(0xff33D281),
                  // iconSize: 15,
                  // gap: 2,
                  // AddMealListPage()
                  text: 'Add',
                  textColor: const Color(0xff09051C),
                  textSize: 5,
                ),
                const GButton(
                  margin: EdgeInsets.only(top: 3, bottom: 3, left: 3, right: 3),
                  // active: ,
                  icon: Icons.person,
                  iconColor: Color(0xff15BE77),
                  iconActiveColor: Color(0xff33D281),
                  // iconSize: 15,
                  // gap: 2,
                  text: 'Profile',
                  textColor: const Color(0xff09051C),
                  textSize: 5,
                ),
                GButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) =>
                                const OrderPage()));
                  },

                  margin: const EdgeInsets.only(
                      top: 3, bottom: 3, left: 3, right: 3),
                  icon: Icons.shopping_cart,
                  // iconSize: 15,
                  iconColor: const Color(0xff15BE77),

                  // gap: 2,
                  text: 'Shop',
                  textColor: const Color(0xff09051C),
                  textSize: 5,
                ),
                GButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) =>
                                const Calenderpage()));
                  },
                  margin: const EdgeInsets.only(
                      top: 3, bottom: 3, left: 3, right: 3),
                  icon: Icons.calendar_month,
                  iconColor: const Color(0xff15BE77),
                  iconActiveColor: const Color(0xff33D281),
                  text: 'calendar',
                  textSize: 5,
                  textColor: const Color(0xff09051C),
                ),
              ],
              // onTabChange: (index) {
              //   print(index);
              // },
              selectedIndex: _selectedIndex,
              onTabChange: (index) {
                setState(() {
                  _selectedIndex = index;
                });
                _controller.jumpToPage(_selectedIndex);
              },
            ),
          ),
        ),
        body: SingleChildScrollView(
          physics: const NeverScrollableScrollPhysics(),
          child: Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
              image: AssetImage("assets/images/signinbc.png"),
              fit: BoxFit.fill,
            )),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                height: MediaQuery.of(context).size.height,
                decoration: BoxDecoration(
                    color: const Color(0xffFFFFFF), //E9F2F2
                    borderRadius: BorderRadius.circular(10),
                    // ignore: prefer_const_literals_to_create_immutables
                    boxShadow: [
                      const BoxShadow(
                        color: Colors.black12,
                        blurRadius: 6,
                        offset: Offset(0, 2),
                      )
                    ]),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height * 0.4,
                      decoration: BoxDecoration(
                          color: const Color(0xffFEF6EE), //E9F2F2
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
                        padding: const EdgeInsets.symmetric(
                            horizontal: 70, vertical: 20),
                        child: Container(
                          height: MediaQuery.of(context).size.height * 0.3,
                          decoration: BoxDecoration(
                              color: const Color(0xffffffff), //E9F2F2
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
                              Image.asset('assets/images/bottle.png',
                                  width:
                                      MediaQuery.of(context).size.width * 0.39,
                                  height:
                                      MediaQuery.of(context).size.height * 0.29,
                                  fit: BoxFit.fill),
                              // SizedBox(width: 5,),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 140),
                                child: IconButton(
                                    onPressed: () {},
                                    icon: const Icon(
                                      Icons.favorite,
                                      color: Colors.red,
                                      size: 30,
                                    )),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 15),
                      child: Text(
                        'Almarai Milk 500 ml',
                        style: GoogleFonts.aBeeZee(
                          fontSize: 18,
                          color: const Color(0xff000000),
                          fontWeight: FontWeight.w500,
                          // height: 14,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 30, horizontal: 15),
                      child: Text(
                        'B.D.  0.500',
                        style: GoogleFonts.aBeeZee(
                          fontSize: 16,
                          color: const Color(0xff27CB7D),
                          fontWeight: FontWeight.w500,
                          // height: 14,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 15),
                      child: SizedBox(
                        width: 500,
                        child: Text(
                          'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam. quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo',
                          style: GoogleFonts.aBeeZee(
                            fontSize: 14,
                            color: const Color(0xff828282),
                            fontWeight: FontWeight.w500,
                            // height: 14,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            height: MediaQuery.of(context).size.height * 0.05,
                            width: MediaQuery.of(context).size.width * 0.35,
                            decoration: BoxDecoration(
                                color: const Color(0xffffffff), //E9F2F2
                                borderRadius: BorderRadius.circular(25),
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
                                IconButton(
                                  onPressed: () {
                                    _DiscrementCounter();
                                  },
                                  icon: const Icon(
                                    Icons.remove,
                                    color: Colors.green,
                                  ),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  '$_counter',
                                  style: GoogleFonts.aBeeZee(
                                    fontSize: 18,
                                    color: const Color(0xff181818),
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                IconButton(
                                  onPressed: () {
                                    _incrementCounter();
                                  },
                                  icon: const Icon(
                                    Icons.add,
                                    color: Colors.green,
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                              height: MediaQuery.of(context).size.height * 0.05,
                              width: MediaQuery.of(context).size.width * 0.35,
                              decoration: BoxDecoration(
                                  color: const Color(0xff2BCD7E), //E9F2F2
                                  borderRadius: BorderRadius.circular(25),
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
                                  'Add to List',
                                  style: GoogleFonts.aBeeZee(
                                    fontSize: 14,
                                    color: const Color(0xffffffff),
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              )),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
