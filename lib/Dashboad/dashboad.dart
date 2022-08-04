// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import '../CalenderPage/calenderpage.dart';
import '../CreateMealPage/createproductpage.dart';
import '../GrocerayListPage/addmeallistpage.dart';
import '../Listpage/GroceriesListingsPage.dart';
import '../Listpage/MealsListingsPage.dart';
import '../OrderPage/orderpage.dart';

// import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Color tabColor = Colors.green;
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

  bool click = true;
  bool click1 = false;
  bool click2 = false;
  bool click3 = false;

  String choice = '';
  String choice2 = '';
  String choice3 = '';
  String choice4 = '';
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
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
                
                  icon: Icons.home,
                  iconColor: Color(0xff15BE77),
                  iconActiveColor: Color(0xff33D281),
               
                  text: 'Home',
                  textColor: Color(0xff09051C),
                  textSize: 5,
                ),
                GButton(
               
                  margin: EdgeInsets.only(top: 3, bottom: 3, left: 8, right: 8),
                  icon: Icons.add_outlined,
                  iconColor: Color(0xff15BE77),
                  iconActiveColor: Color(0xff33D281),
                 
                  text: 'Add',
                  textColor: Color(0xff09051C),
                  textSize: 5,
                ),
                GButton(
                  margin: EdgeInsets.only(top: 3, bottom: 3, left: 3, right: 3),
                 
                  icon: Icons.person,
                  iconColor: Color(0xff15BE77),
                  iconActiveColor: Color(0xff33D281),
               
                  text: 'Profile',
                  textColor: Color(0xff09051C),
                  textSize: 5,
                ),
                GButton(
                 

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
        body: SafeArea(
          child: SingleChildScrollView(
            // physics: const NeverScrollableScrollPhysics(),
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.white,
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
                    padding:
                        const EdgeInsets.only(top: 30, right: 31, left: 31),
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
                                color: Color(0xffFFFFFF),
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
                    padding:
                        const EdgeInsets.only(left: 30, right: 30, top: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.height * 0.06,
                          width: MediaQuery.of(context).size.width * 0.7,
                          decoration: BoxDecoration(
                              color: Color.fromARGB(255, 253, 244, 233),
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
                            cursorColor: Color.fromARGB(255, 17, 17, 17),
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Find your meal and products",
                              hintStyle: GoogleFonts.roboto(
                                fontSize: 12.0,
                                color: Color(0xffDA6317),
                                fontWeight: FontWeight.w400,
                              ),
                              prefixIcon: IconButton(
                                icon: Icon(Icons.search, size: 30.0),
                                color: Color(0xffDA6317),
                                onPressed: () {},
                              ),
                            ),
                            style: TextStyle(
                                color: Color.fromARGB(255, 19, 18, 18),
                                fontSize: 15.0),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        InkWell(
                          onTap: () {
                            showDialog(
                                context: context,
                                builder: (context) => AlertDialog(
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(32.0))),
                                      content: Form(
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  'Sort by',
                                                  style: GoogleFonts.roboto(
                                                    fontSize: 17.0,
                                                    color: Color(0xff09051C),
                                                    fontWeight: FontWeight.w400,
                                                  ),
                                                ),
                                                Container(
                                                    height:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .width *
                                                            0.12,
                                                    width:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .width *
                                                            0.12,
                                                    decoration: BoxDecoration(
                                                        color: Color.fromARGB(
                                                            255, 253, 244, 233),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(15),
                                                        // ignore: prefer_const_literals_to_create_immutables
                                                        boxShadow: [
                                                          const BoxShadow(
                                                            color:
                                                                Colors.black12,
                                                            blurRadius: 6,
                                                            offset:
                                                                Offset(0, 2),
                                                          )
                                                        ]),
                                                    child: Image.asset(
                                                        'assets/images/Filter.png')),
                                              ],
                                            ),
                                            Text(
                                              'List',
                                              style: GoogleFonts.roboto(
                                                fontSize: 17.0,
                                                color: Color(0xff09051C),
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            filterchip(),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Text(
                                              'Meal Type',
                                              style: GoogleFonts.roboto(
                                                fontSize: 17.0,
                                                color: Color(0xff09051C),
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            mealfilterchip(),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Text(
                                              'Grocery stores',
                                              style: GoogleFonts.roboto(
                                                fontSize: 17.0,
                                                color: Color(0xff09051C),
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            groceryfilterchip(),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Text(
                                              'Grocery stores',
                                              style: GoogleFonts.roboto(
                                                fontSize: 17.0,
                                                color: Color(0xff09051C),
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            ingredientsfilterchip()
                                          ],
                                        ),
                                      ),
                                    ));
                          },
                          child: Container(
                              height: MediaQuery.of(context).size.height * 0.06,
                              width: MediaQuery.of(context).size.width * 0.12,
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 253, 244, 233),
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
                        ),
                      ],
                    ),
                  ),
                  // SizedBox(
                  //   height: 18,
                  // ),
                  Center(
                    child: TabBar(
                        onTap: (index) {
                          setState(() {
                            if (index == 0) {
                              if (click == false) {
                                click = true;
                                click1 = false;
                                click2 = false;
                                click3 = false;
                              } else if (click == true) {
                                click = true;
                                click1 = false;
                                click2 = false;
                                click3 = false;
                              }
                            }
                            if (index == 1) {
                              if (click1 == false) {
                                click1 = true;
                                click = false;
                                click2 = false;
                                click3 = false;
                              } else {
                                click1 = true;
                                click = false;
                                click2 = false;
                                click3 = false;
                              }
                              // tabColor = Colors.yellow;
                            }

                            if (index == 2) {
                              if (click2 == false) {
                                click1 = false;
                                click = false;
                                click2 = true;
                                click3 = false;
                              } else if (click2 == true) {
                                click1 = false;
                                click = false;
                                click2 = true;
                                click3 = false;
                              }
                              // tabColor = Colors.red;
                            }
                            if (index == 3) {
                              if (click3 == false) {
                                click1 = false;
                                click = false;
                                click2 = false;
                                click3 = true;
                              } else if (click3 == true) {
                                click1 = false;
                                click = false;
                                click2 = false;
                                click3 = true;
                              }
                              // tabColor = Colors.deepPurple;
                            }
                          });
                          print(index);
                        },
                        labelPadding:
                            EdgeInsets.symmetric(horizontal: 10.0, vertical: 5),
                        indicatorSize: TabBarIndicatorSize.label,
                        indicatorColor: const Color(0xffDA6317),
                        indicatorWeight: 5,
                        tabs: [
                          Tab(
                            height: MediaQuery.of(context).size.height * .13,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  height:
                                      MediaQuery.of(context).size.width * 0.13,
                                  width:
                                      MediaQuery.of(context).size.width * 0.14,
                                  decoration: BoxDecoration(
                                      color: (click == false)
                                          ? Color(0xffF1F2F6)
                                          : Color(0xffDA6317),
                                      borderRadius: BorderRadius.circular(8),
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
                                    child: Image.asset(
                                        'assets/images/Breakfast.png'),
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  'Breakfast',
                                  style: GoogleFonts.aBeeZee(
                                    fontSize: 12.0,
                                    color: const Color(0xff09051C),
                                    fontWeight: FontWeight.w400,
                                  ),
                                )
                              ],
                            ),
                          ),
                          Tab(
                            height: MediaQuery.of(context).size.height * .13,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  height:
                                      MediaQuery.of(context).size.width * 0.13,
                                  width:
                                      MediaQuery.of(context).size.width * 0.14,
                                  decoration: BoxDecoration(
                                      color: (click1 == false)
                                          ? Color(0xffF1F2F6)
                                          : Color(0xffDA6317),
                                      borderRadius: BorderRadius.circular(8),
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
                                    child:
                                        Image.asset('assets/images/Lunch.png'),
                                  ),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  'Lunch',
                                  style: GoogleFonts.aBeeZee(
                                    fontSize: 12.0,
                                    color: const Color(0xff09051C),
                                    fontWeight: FontWeight.w400,
                                  ),
                                )
                              ],
                            ),
                          ),
                          Tab(
                            height: MediaQuery.of(context).size.height * .13,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  height:
                                      MediaQuery.of(context).size.width * 0.13,
                                  width:
                                      MediaQuery.of(context).size.width * 0.14,
                                  decoration: BoxDecoration(
                                      color: (click2 == false)
                                          ? Color(0xffF1F2F6)
                                          : Color(0xffDA6317),
                                      borderRadius: BorderRadius.circular(8),
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
                                    child:
                                        Image.asset('assets/images/Dinner.png'),
                                  ),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  'Dinner',
                                  style: GoogleFonts.aBeeZee(
                                    fontSize: 12.0,
                                    color: const Color(0xff09051C),
                                    fontWeight: FontWeight.w400,
                                  ),
                                )
                              ],
                            ),
                          ),
                          Tab(
                            height: MediaQuery.of(context).size.height * .13,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  height:
                                      MediaQuery.of(context).size.width * 0.13,
                                  width:
                                      MediaQuery.of(context).size.width * 0.14,
                                  decoration: BoxDecoration(
                                      color: (click3 == false)
                                          ? Color(0xffF1F2F6)
                                          : Color(0xffDA6317),
                                      borderRadius: BorderRadius.circular(8),
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
                                    child:
                                        Image.asset('assets/images/Snacks.png'),
                                  ),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  'Snacks',
                                  style: GoogleFonts.aBeeZee(
                                    fontSize: 12.0,
                                    color: const Color(0xff09051C),
                                    fontWeight: FontWeight.w400,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ]),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => MealsListingsPage()),
                        );
                      },
                      child: AspectRatio(
                        aspectRatio: 5.8 / 2.2,
                        child: Container(
                          height: MediaQuery.of(context).size.height * .18,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/images/home1.png'),
                              fit: BoxFit.fill,
                            ),
                            // shape: BoxShape.circle,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(right: 30, left: 80),
                            child: Align(
                              alignment: Alignment.centerRight,
                              child: Text(' My Meals',
                                  style: GoogleFonts.aBeeZee(
                                    fontSize: 25,
                                    color: const Color(0xff000000),
                                    fontWeight: FontWeight.w600,
                                  )),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => GroceriesListPage()),
                        );
                      },
                      child: AspectRatio(
                        aspectRatio: 5.8 / 2.2,
                        child: Container(
                          height: MediaQuery.of(context).size.height * .18,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/images/home.png'),
                              fit: BoxFit.fill,
                            ),
                            // shape: BoxShape.circle,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(right: 30),
                            child: Align(
                                alignment: Alignment.centerRight,
                                child: Text('My Groceries',
                                    style: GoogleFonts.aBeeZee(
                                      fontSize: 25,
                                      color: const Color(0xff000000),
                                      fontWeight: FontWeight.w600,
                                    ))),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 35, vertical: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const AddMealListPage()),
                          ),
                          child: Container(
                            height: MediaQuery.of(context).size.width * 0.12,
                            width: MediaQuery.of(context).size.width * 0.35,
                            decoration: BoxDecoration(
                                border: Border.all(
                                  color: const Color(0xff1FC181),
                                ),
                                color: const Color(0xffFFFFFF),
                                borderRadius: BorderRadius.circular(15),
                                // ignore: prefer_const_literals_to_create_immutables
                                boxShadow: [
                                  const BoxShadow(
                                    color: Colors.black12,
                                    blurRadius: 6,
                                    offset: Offset(0, 1),
                                  )
                                ]),
                            child: Center(
                                child: Text(
                              'Create a Meal',
                              style: GoogleFonts.aBeeZee(
                                fontSize: 16,
                                color: const Color(0xff20C67B),
                                fontWeight: FontWeight.w400,
                              ),
                            )),
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        InkWell(
                          onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const CreateProductPage()),
                          ),
                          child: Container(
                            height: MediaQuery.of(context).size.width * 0.12,
                            width: MediaQuery.of(context).size.width * 0.36,
                            decoration: BoxDecoration(
                                border: Border.all(
                                  color: const Color(0xff1FC181),
                                ),
                                color: const Color(0xffFFFFFF),
                                borderRadius: BorderRadius.circular(15),
                                // ignore: prefer_const_literals_to_create_immutables
                                boxShadow: [
                                  const BoxShadow(
                                    color: Colors.black12,
                                    blurRadius: 6,
                                    offset: Offset(0, 1),
                                  )
                                ]),
                            child: Center(
                                child: Text(
                              'Create a Product',
                              style: GoogleFonts.aBeeZee(
                                fontSize: 16,
                                color: const Color(0xff20C67B),
                                fontWeight: FontWeight.w400,
                              ),
                            )),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget filterchip() {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 30,
              decoration: BoxDecoration(
                border: Border.all(
                    color: Color.fromARGB(255, 247, 201, 176), width: 1),
                borderRadius: BorderRadius.circular(25),
              ),
              child: ChoiceChip(
                label: Text(
                  'Manars List',
                  style: GoogleFonts.aBeeZee(
                    fontSize: 12,
                    color: const Color(0xffF36F28),
                    fontWeight: FontWeight.w400,
                  ),
                ),
                backgroundColor: Colors.white,
                selected: (choice == 'Manars List') ? true : false,
                selectedColor: Color.fromARGB(255, 247, 201, 176),
                onSelected: (bool value) {
                  setState(() {
                    choice = 'Manars List';
                  });
                },
              ),
            ),
            Container(
              height: 30,
              decoration: BoxDecoration(
                border: Border.all(
                    color: Color.fromARGB(255, 247, 201, 176), width: 1),
                borderRadius: BorderRadius.circular(25),
              ),
              child: ChoiceChip(
                label: Text(
                  'Friday List ',
                  style: GoogleFonts.aBeeZee(
                    fontSize: 12,
                    color: const Color(0xffF36F28),
                    fontWeight: FontWeight.w400,
                  ),
                ),
                backgroundColor: Colors.white,
                selected: (choice == 'Friday List') ? true : false,
                selectedColor: Color.fromARGB(255, 247, 201, 176),
                onSelected: (bool value) {
                  setState(() {
                    choice = 'Friday List';
                  });
                },
              ),
            ),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 30,
              decoration: BoxDecoration(
                border: Border.all(
                    color: Color.fromARGB(255, 247, 201, 176), width: 1),
                borderRadius: BorderRadius.circular(25),
              ),
              child: ChoiceChip(
                label: Text(
                  'BBQ List',
                  style: GoogleFonts.aBeeZee(
                    fontSize: 12,
                    color: const Color(0xffF36F28),
                    fontWeight: FontWeight.w400,
                  ),
                ),
                backgroundColor: Colors.white,
                selected: (choice == 'BBQ List') ? true : false,
                selectedColor: Color.fromARGB(255, 247, 201, 176),
                onSelected: (bool value) {
                  setState(() {
                    choice = 'BBQ List';
                  });
                },
              ),
            ),
            Container(
              height: 30,
              decoration: BoxDecoration(
                border: Border.all(
                    color: Color.fromARGB(255, 247, 201, 176), width: 1),
                borderRadius: BorderRadius.circular(25),
              ),
              child: ChoiceChip(
                label: Text(
                  'Guest Desserts',
                  style: GoogleFonts.aBeeZee(
                    fontSize: 12,
                    color: const Color(0xffF36F28),
                    fontWeight: FontWeight.w400,
                  ),
                ),
                backgroundColor: Colors.white,
                selected: (choice == 'Guest Desserts') ? true : false,
                selectedColor: Color.fromARGB(255, 247, 201, 176),
                onSelected: (bool value) {
                  setState(() {
                    choice = 'Guest Desserts';
                  });
                },
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget mealfilterchip() {
    // String choice = '';
    return Column(
      // physics: ClampingScrollPhysics(),
      // shrinkWrap: true,
      // scrollDirection: Axis.horizontal,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 30,
              decoration: BoxDecoration(
                border: Border.all(
                    color: Color.fromARGB(255, 247, 201, 176), width: 1),
                borderRadius: BorderRadius.circular(25),
              ),
              child: ChoiceChip(
                label: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Text(
                    'Breakfast',
                    style: GoogleFonts.aBeeZee(
                      fontSize: 12,
                      color: const Color(0xffF36F28),
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                backgroundColor: Colors.white,
                selected: (choice2 == 'Breakfast') ? true : false,
                selectedColor: Color.fromARGB(255, 247, 201, 176),
                onSelected: (bool value) {
                  setState(() {
                    choice2 = 'Breakfast';
                  });
                },
              ),
            ),
            Container(
              height: 30,
              decoration: BoxDecoration(
                border: Border.all(
                    color: Color.fromARGB(255, 247, 201, 176), width: 1),
                borderRadius: BorderRadius.circular(25),
              ),
              child: ChoiceChip(
                label: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Text(
                    'Lunch',
                    style: GoogleFonts.aBeeZee(
                      fontSize: 12,
                      color: const Color(0xffF36F28),
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                backgroundColor: Colors.white,
                selected: (choice2 == 'Lunch') ? true : false,
                selectedColor: Color.fromARGB(255, 247, 201, 176),
                onSelected: (bool value) {
                  setState(() {
                    choice2 = 'Lunch';
                  });
                },
              ),
            ),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 30,
              decoration: BoxDecoration(
                border: Border.all(
                    color: Color.fromARGB(255, 247, 201, 176), width: 1),
                borderRadius: BorderRadius.circular(25),
              ),
              child: ChoiceChip(
                label: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Text(
                    'Dinner',
                    style: GoogleFonts.aBeeZee(
                      fontSize: 12,
                      color: const Color(0xffF36F28),
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                backgroundColor: Colors.white,
                selected: (choice2 == 'Dinner') ? true : false,
                selectedColor: Color.fromARGB(255, 247, 201, 176),
                onSelected: (bool value) {
                  setState(() {
                    choice2 = 'Dinner';
                  });
                },
              ),
            ),
            Container(
              height: 30,
              decoration: BoxDecoration(
                border: Border.all(
                    color: Color.fromARGB(255, 247, 201, 176), width: 1),
                borderRadius: BorderRadius.circular(25),
              ),
              child: ChoiceChip(
                label: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Text(
                    'Snacks',
                    style: GoogleFonts.aBeeZee(
                      fontSize: 12,
                      color: const Color(0xffF36F28),
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                backgroundColor: Colors.white,
                selected: (choice2 == 'Snacks') ? true : false,
                selectedColor: Color.fromARGB(255, 247, 201, 176),
                onSelected: (bool value) {
                  setState(() {
                    choice2 = 'Snacks';
                  });
                },
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget groceryfilterchip() {
    // String choice = '';
    return Column(
      // physics: ClampingScrollPhysics(),
      // shrinkWrap: true,
      // scrollDirection: Axis.horizontal,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 30,
              decoration: BoxDecoration(
                border: Border.all(
                    color: Color.fromARGB(255, 247, 201, 176), width: 1),
                borderRadius: BorderRadius.circular(25),
              ),
              child: ChoiceChip(
                label: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Text(
                    'Riffa',
                    style: GoogleFonts.aBeeZee(
                      fontSize: 12,
                      color: const Color(0xffF36F28),
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                backgroundColor: Colors.white,
                selected: (choice3 == 'Riffa') ? true : false,
                selectedColor: Color.fromARGB(255, 247, 201, 176),
                onSelected: (bool value) {
                  setState(() {
                    choice3 = 'Riffa';
                  });
                },
              ),
            ),
            Container(
              height: 30,
              decoration: BoxDecoration(
                border: Border.all(
                    color: Color.fromARGB(255, 247, 201, 176), width: 1),
                borderRadius: BorderRadius.circular(25),
              ),
              child: ChoiceChip(
                label: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Text(
                    'Al Osra',
                    style: GoogleFonts.aBeeZee(
                      fontSize: 12,
                      color: const Color(0xffF36F28),
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                backgroundColor: Colors.white,
                selected: (choice3 == 'Al Osra') ? true : false,
                selectedColor: Color.fromARGB(255, 247, 201, 176),
                onSelected: (bool value) {
                  setState(() {
                    choice3 = 'Al Osra';
                  });
                },
              ),
            ),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 30,
              decoration: BoxDecoration(
                border: Border.all(
                    color: Color.fromARGB(255, 247, 201, 176), width: 1),
                borderRadius: BorderRadius.circular(25),
              ),
              child: ChoiceChip(
                label: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Text(
                    'Sadig',
                    style: GoogleFonts.aBeeZee(
                      fontSize: 12,
                      color: const Color(0xffF36F28),
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                backgroundColor: Colors.white,
                selected: (choice3 == 'Sadig') ? true : false,
                selectedColor: Color.fromARGB(255, 247, 201, 176),
                onSelected: (bool value) {
                  setState(() {
                    choice3 = 'Sadig';
                  });
                },
              ),
            ),
            // Container(
            //   height: 30,
            //   decoration: BoxDecoration(
            //     border: Border.all(
            //         color: Color.fromARGB(255, 247, 201, 176), width: 1),
            //     borderRadius: BorderRadius.circular(25),
            //   ),
            //   child: ChoiceChip(
            //     label: Padding(
            //       padding: const EdgeInsets.symmetric(horizontal: 8),
            //       child: Text(
            //         'Snacks',
            //         style: GoogleFonts.aBeeZee(
            //           fontSize: 12,
            //           color: const Color(0xffF36F28),
            //           fontWeight: FontWeight.w400,
            //         ),
            //       ),
            //     ),
            //     backgroundColor: Colors.white,
            //     selected: (choice2 == 'Snacks') ? true : false,
            //     selectedColor: Color.fromARGB(255, 247, 201, 176),
            //     onSelected: (bool value) {
            //       setState(() {
            //         choice2 = 'Snacks';
            //       });
            //     },
            //   ),
            // ),
          ],
        ),
      ],
    );
  }

  Widget ingredientsfilterchip() {
    // String choice = '';
    return Column(
      // physics: ClampingScrollPhysics(),
      // shrinkWrap: true,
      // scrollDirection: Axis.horizontal,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 30,
              decoration: BoxDecoration(
                border: Border.all(
                    color: Color.fromARGB(255, 247, 201, 176), width: 1),
                borderRadius: BorderRadius.circular(25),
              ),
              child: ChoiceChip(
                label: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Text(
                    'Chicken',
                    style: GoogleFonts.aBeeZee(
                      fontSize: 12,
                      color: const Color(0xffF36F28),
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                backgroundColor: Colors.white,
                selected: (choice4 == 'Chicken') ? true : false,
                selectedColor: Color.fromARGB(255, 247, 201, 176),
                onSelected: (bool value) {
                  setState(() {
                    choice4 = 'Chicken';
                  });
                },
              ),
            ),
            Container(
              height: 30,
              decoration: BoxDecoration(
                border: Border.all(
                    color: Color.fromARGB(255, 247, 201, 176), width: 1),
                borderRadius: BorderRadius.circular(25),
              ),
              child: ChoiceChip(
                label: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Text(
                    'Meat',
                    style: GoogleFonts.aBeeZee(
                      fontSize: 12,
                      color: const Color(0xffF36F28),
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                backgroundColor: Colors.white,
                selected: (choice4 == 'Meat') ? true : false,
                selectedColor: Color.fromARGB(255, 247, 201, 176),
                onSelected: (bool value) {
                  setState(() {
                    choice4 = 'Meat';
                  });
                },
              ),
            ),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 30,
              decoration: BoxDecoration(
                border: Border.all(
                    color: Color.fromARGB(255, 247, 201, 176), width: 1),
                borderRadius: BorderRadius.circular(25),
              ),
              child: ChoiceChip(
                label: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Text(
                    'Rice',
                    style: GoogleFonts.aBeeZee(
                      fontSize: 12,
                      color: const Color(0xffF36F28),
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                backgroundColor: Colors.white,
                selected: (choice4 == 'Rice') ? true : false,
                selectedColor: Color.fromARGB(255, 247, 201, 176),
                onSelected: (bool value) {
                  setState(() {
                    choice4 = 'Rice';
                  });
                },
              ),
            ),
            Container(
              height: 30,
              decoration: BoxDecoration(
                border: Border.all(
                    color: Color.fromARGB(255, 247, 201, 176), width: 1),
                borderRadius: BorderRadius.circular(25),
              ),
              child: ChoiceChip(
                label: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Text(
                    'Fish',
                    style: GoogleFonts.aBeeZee(
                      fontSize: 12,
                      color: const Color(0xffF36F28),
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                backgroundColor: Colors.white,
                selected: (choice4 == 'Fish') ? true : false,
                selectedColor: Color.fromARGB(255, 247, 201, 176),
                onSelected: (bool value) {
                  setState(() {
                    choice4 = 'Fish';
                  });
                },
              ),
            ),
          ],
        ),
      ],
    );
  }
}
