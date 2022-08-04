import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import '../CalenderPage/calenderpage.dart';
import '../Dashboad/dashboad.dart';
import '../GrocerayListPage/addmeallistpage.dart';
import '../GrocerayListPage/orderlistpage.dart';
import '../OrderPage/orderpage.dart';
import '../Weiget/mealCreateWeiget.dart';
import '../model/meallistcreatemodel.dart';
import 'GroceriesListingsPage.dart';

class MealsListingsPage extends StatefulWidget {
  const MealsListingsPage({Key? key}) : super(key: key);

  @override
  State<MealsListingsPage> createState() => _MealsListingsPageState();
}

class _MealsListingsPageState extends State<MealsListingsPage> {
  bool click = true;
  bool click1 = false;
  bool click2 = false;
  bool click3 = false;

  var selectedIndex = 0;

  final List<Widget> children = <Widget>[
    const HomePage(),
    const AddMealListPage(),
    const OrderPage(),
    const GroceriesListPage(),
    const Calenderpage(),
  ];

  indexpage(int index) {
    if (index == 0) {
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (BuildContext context) => const HomePage()));
    } else if (index == 1) {
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (BuildContext context) => const AddMealListPage()));
    } else if (index == 2) {
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (BuildContext context) => const OrderPage()));
    } else if (index == 3) {
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (BuildContext context) => const GroceriesListPage()));
    } else if (index == 4) {
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (BuildContext context) => const Calenderpage()));
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: DefaultTabController(
      length: 4,
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
              duration: const Duration(milliseconds: 600),
              // ignore: prefer_const_literals_to_create_immutables
              tabs: [
                const GButton(
                  icon: Icons.home,
                  iconColor: Color(0xff15BE77),
                  iconActiveColor: const Color(0xff33D281),
                  // iconSize: 15,
                  // gap: 2,
                  text: 'Home',
                  textColor: Color(0xff09051C),
                  textSize: 5,
                ),
                const GButton(
                  margin: EdgeInsets.only(top: 3, bottom: 3, left: 8, right: 8),
                  icon: Icons.add_outlined,
                  iconColor: Color(0xff15BE77),
                  iconActiveColor: const Color(0xff33D281),
                  text: 'Add',
                  textColor: Color(0xff09051C),
                  textSize: 5,
                ),
                const GButton(
                  margin: const EdgeInsets.only(
                      top: 3, bottom: 3, left: 3, right: 3),
                  icon: Icons.person,
                  iconColor: const Color(0xff15BE77),
                  iconActiveColor: const Color(0xff33D281),
                  text: 'Profile',
                  textColor: Color(0xff09051C),
                  textSize: 5,
                ),
                const GButton(
                  margin: EdgeInsets.only(top: 3, bottom: 3, left: 3, right: 3),
                  icon: Icons.shopping_cart,
                  // iconSize: 15,
                  iconColor: Color(0xff15BE77),

                  // gap: 2,
                  text: 'Shop',
                  textColor: Color(0xff09051C),
                  textSize: 5,
                ),
                const GButton(
                  margin: EdgeInsets.only(top: 3, bottom: 3, left: 3, right: 3),
                  icon: Icons.calendar_month,
                  iconColor: const Color(0xff15BE77),
                  iconActiveColor: const Color(0xff33D281),
                  text: 'calendar',
                  textSize: 5,
                  textColor: const Color(0xff09051C),
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
                      Text('Meals Listings',
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

                //create meal page under hidden

                Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: InkWell(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const AddMealListPage()),
                    ),
                    child: Container(
                        height: MediaQuery.of(context).size.width * 0.07,
                        width: MediaQuery.of(context).size.width * 0.38,
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
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 8),
                              child: Container(
                                height:
                                    MediaQuery.of(context).size.width * 0.04,
                                width: MediaQuery.of(context).size.width * 0.04,
                                decoration: BoxDecoration(
                                    color: const Color(0xffBAEED5),
                                    borderRadius: BorderRadius.circular(30),
                                    // ignore: prefer_const_literals_to_create_immutables
                                    boxShadow: [
                                      const BoxShadow(
                                        color: Colors.black12,
                                        blurRadius: 6,
                                        offset: Offset(0, 2),
                                      )
                                    ]),
                                child: const Icon(
                                  Icons.add,
                                  size: 10,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                            Text(
                              'Add a new Meal ',
                              style: GoogleFonts.aBeeZee(
                                fontSize: 14,
                                color: const Color(0xff000000),
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        )),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 30, right: 30, top: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height * 0.06,
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
                            hintText: "Find your meal and products",
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
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                          height: MediaQuery.of(context).size.height * 0.06,
                          width: MediaQuery.of(context).size.width * 0.12,
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

                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          Text(
                            'My Categories ',
                            style: GoogleFonts.aBeeZee(
                              fontSize: 15.0,
                              color: const Color(0xff09051C),
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text(
                            '(my meal types)',
                            style: GoogleFonts.aBeeZee(
                              fontStyle: FontStyle.italic,
                              fontSize: 15.0,
                              color: const Color(0xffABB0B2),
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 30),
                        child: InkWell(
                          onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const AddMealListPage()),
                          ),
                          child: Container(
                              height: MediaQuery.of(context).size.height * 0.03,
                              width: MediaQuery.of(context).size.width * 0.18,
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
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 8),
                                    child: Container(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.02,
                                      width: MediaQuery.of(context).size.width *
                                          0.04,
                                      decoration: BoxDecoration(
                                          color: const Color(0xffBAEED5),
                                          borderRadius:
                                              BorderRadius.circular(30),
                                          // ignore: prefer_const_literals_to_create_immutables
                                          boxShadow: [
                                            const BoxShadow(
                                              color: Colors.black12,
                                              blurRadius: 6,
                                              offset: Offset(0, 2),
                                            )
                                          ]),
                                      child: const Icon(
                                        Icons.add,
                                        size: 10,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 8,
                                  ),
                                  Text(
                                    'Add ',
                                    style: GoogleFonts.aBeeZee(
                                      fontSize: 14,
                                      color: const Color(0xff000000),
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              )),
                        ),
                      ),
                    ],
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: Center(
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
                        isScrollable: false,
                        // controller: _tabController,
                        indicator: const UnderlineTabIndicator(
                          borderSide:
                              BorderSide(width: 3.0, color: Color(0xffDA6317)),
                          insets: EdgeInsets.symmetric(
                              horizontal: 20.0, vertical: 10),
                        ),
                        indicatorColor: const Color(0xffDA6317),
                        labelPadding: const EdgeInsets.symmetric(
                            horizontal: 15.0, vertical: 10),
                        tabs: [
                          Tab(
                            height: MediaQuery.of(context).size.width * 0.178,
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
                                      color: (click == false)
                                          ? const Color(0xffF1F2F6)
                                          : const Color(0xffDA6317),
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
                                const SizedBox(
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
                            height: MediaQuery.of(context).size.width * 0.178,
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
                                      color: (click1 == false)
                                          ? const Color(0xffF1F2F6)
                                          : const Color(0xffDA6317),
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
                            height: MediaQuery.of(context).size.width * 0.178,
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
                                      color: (click2 == false)
                                          ? const Color(0xffF1F2F6)
                                          : const Color(0xffDA6317),
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
                            height: MediaQuery.of(context).size.width * 0.178,
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
                                          ? const Color(0xffF1F2F6)
                                          : const Color(0xffDA6317),
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
                ),

                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                  child: InkWell(
                    // onTap: () => Navigator.push(
                    //   context,
                    //   MaterialPageRoute(
                    //       builder: (context) => const MealDitillsPage()),
                    // ),
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const OrderListPage()),
                    ),
                    child: GridView.builder(
                      shrinkWrap: true,
                      // padding: EdgeInsets.all(8),
                      physics: const BouncingScrollPhysics(),
                      itemCount: mealcreatelist.length,

                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        mainAxisSpacing: 10,
                        crossAxisSpacing: 10,
                        crossAxisCount: 2,
                        childAspectRatio: 1.7 / 2.2,
                        // mainAxisExtent: 200,
                      ),
                      itemBuilder: (context, index) {
                        var near = mealcreatelist[index];
                        return MealListCreateWeiget(mealcrete: near);
                      },
                    ),
                  ),
                ),

                // Padding(
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
