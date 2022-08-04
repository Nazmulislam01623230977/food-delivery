// ignore: file_names
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import '../CalenderPage/calenderpage.dart';
import '../CreateMealPage/createproductpage.dart';
import '../Dashboad/dashboad.dart';
import '../GrocerayListPage/addmeallistpage.dart';
import '../OrderPage/orderpage.dart';
import '../OrderPage/productdetilspage.dart';
import '../Weiget/GrocingWeigetModel.dart';
import '../model/groecisingmodel.dart';

class GroceriesListPage extends StatefulWidget {
  const GroceriesListPage({Key? key}) : super(key: key);

  @override
  State<GroceriesListPage> createState() => _GroceriesListPageState();
}

class _GroceriesListPageState extends State<GroceriesListPage> {
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
                  textColor: const Color(0xff09051C),
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
                  margin: EdgeInsets.only(top: 3, bottom: 3, left: 3, right: 3),
                  icon: Icons.person,
                  iconColor: Color(0xff15BE77),
                  iconActiveColor: Color(0xff33D281),
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
                      Text('Groceries Listings',
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
                          builder: (context) => const CreateProductPage()),
                    ),
                    child: Container(
                        height: MediaQuery.of(context).size.width * 0.07,
                        width: MediaQuery.of(context).size.width * 0.53,
                        // height: 30,
                        // width: 208,
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
                                    color: const Color(0xffBAEED5), //BAEED5

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
                              'Add a new grocery product',
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
                            '(my grocery stores)',
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
                        padding: const EdgeInsets.only(left: 0),
                        child: InkWell(
                          onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const CreateProductPage()),
                          ),
                          child: Container(
                              height: MediaQuery.of(context).size.width * 0.06,
                              width: MediaQuery.of(context).size.width * 0.18,
                              // height: 30,
                              // width: 208,
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
                                          MediaQuery.of(context).size.width *
                                              0.04,
                                      width: MediaQuery.of(context).size.width *
                                          0.04,
                                      decoration: BoxDecoration(
                                          color:
                                              const Color(0xffBAEED5), //BAEED5

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
                  padding: const EdgeInsets.symmetric(horizontal: 20),
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
                              BorderSide(width: 3.0, color: Color(0xffFECA57)),
                          insets: EdgeInsets.symmetric(
                              horizontal: 20.0, vertical: 10),
                        ),
                        indicatorColor: const Color(0xffFECA57),
                        labelPadding: const EdgeInsets.symmetric(
                            horizontal: 20.0, vertical: 10),
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
                                          : const Color(0xffFECA57),
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
                                        Image.asset('assets/images/meal1.png'),
                                  ),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  'Riffa',
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
                                          : const Color(0xffFECA57),
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
                                        Image.asset('assets/images/meal2.png'),
                                  ),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  'Sadig',
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
                                          : const Color(0xffFECA57),
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
                                        Image.asset('assets/images/meal3.png'),
                                  ),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  'Al Osra',
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
                                          : const Color(0xffFECA57),
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
                                        Image.asset('assets/images/meal4.png'),
                                  ),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  'Corner',
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
                // const SizedBox(
                //   height: 10,
                // ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                  child: InkWell(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ProductDetilisPage()),
                    ),
                    child: GridView.builder(
                      shrinkWrap: true,
                      // padding: EdgeInsets.all(8),
                      physics: const BouncingScrollPhysics(),
                      itemCount: groceinglist.length,

                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        mainAxisSpacing: 10,
                        crossAxisSpacing: 10,
                        crossAxisCount: 2,
                        childAspectRatio: 1.7 / 2.2,
                        // mainAxisExtent: 200,
                      ),
                      itemBuilder: (context, index) {
                        var near = groceinglist[index];
                        return GroceingWeigetModel(grocientmodellist: near);
                      },
                    ),
                  ),
                ),

                // Padding(
                //   padding:
                //       const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                //   child: GridView.builder(
                //     shrinkWrap: true,
                //     // padding: EdgeInsets.all(8),
                //     physics: const BouncingScrollPhysics(),
                //     itemCount: gromeallist.length,
                //     gridDelegate:
                //         const SliverGridDelegateWithFixedCrossAxisCount(
                //       crossAxisCount: 2,
                //       // mainAxisExtent: 200,
                //     ),
                //     itemBuilder: (context, index) {
                //       var neardoctor = gromeallist[index];
                //       return GrocerlistWeiget(groceryModelList: neardoctor);
                //     },
                //   ),
                // ),
                // const SizedBox(
                //   height: 20,
                // )
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
