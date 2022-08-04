import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import '../CalenderPage/calenderpage.dart';
import '../Dashboad/dashboad.dart';
import '../Listpage/GroceriesListingsPage.dart';
import '../OrderPage/orderpage.dart';
import '../Weiget/Lunchmodelweiget.dart';

import '../model/lunchmodellist.dart';

import 'addmeallistpage.dart';
import 'mealditillspage.dart';

// var sujesttag = ['List Name', 'Lunch', 'Chicken'];

class GroceryListPage extends StatefulWidget {
  const GroceryListPage({Key? key}) : super(key: key);

  @override
  State<GroceryListPage> createState() => _GroceryListPageState();
}

class _GroceryListPageState extends State<GroceryListPage> {
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
      Navigator.push(context,
          MaterialPageRoute(builder: (BuildContext context) => const HomePage()));
    } else if (index == 1) {
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (BuildContext context) => const AddMealListPage()));
    } else if (index == 2) {
      Navigator.push(context,
          MaterialPageRoute(builder: (BuildContext context) => const OrderPage()));
    } else if (index == 3) {
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (BuildContext context) => const GroceriesListPage()));
    } else if (index == 4) {
      Navigator.push(context,
          MaterialPageRoute(builder: (BuildContext context) => const Calenderpage()));
    }
  }

  // final controller = Get.put(TagsState());
  // final texteditController = TextEditingController();

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
              padding: const EdgeInsets.only(top: 5, bottom: 5, left: 8, right: 8),
              gap: 0,
              tabBackgroundColor: const Color(0xffEAFAF2),
              activeColor: const Color(0xffEAFAF2),
              iconSize: 24,
              duration: const Duration(milliseconds: 600),
              // ignore: prefer_const_literals_to_create_immutables
              tabs: [
                const GButton(
                  // onPressed: () {
                  //   Navigator.push(
                  //       context,
                  //       MaterialPageRoute(
                  //           builder: (BuildContext context) => HomePage()));
                  // },
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
                  // onPressed: () {
                  //   Navigator.push(
                  //       context,
                  //       MaterialPageRoute(
                  //           builder: (BuildContext context) =>
                  //               AddMealListPage()));
                  // },
                  margin: const EdgeInsets.only(top: 3, bottom: 3, left: 8, right: 8),
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
                  margin: const EdgeInsets.only(top: 3, bottom: 3, left: 3, right: 3),
                  // active: ,
                  icon: Icons.person,
                  iconColor: const Color(0xff15BE77),
                  iconActiveColor: const Color(0xff33D281),
                  // iconSize: 15,
                  // gap: 2,
                  text: 'Profile',
                  textColor: Color(0xff09051C),
                  textSize: 5,
                ),
                const GButton(
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
                const GButton(
                  // onPressed: () {
                  //   Navigator.push(
                  //       context,
                  //       MaterialPageRoute(
                  //           builder: (BuildContext context) => Calenderpage()));
                  // },
                  margin: EdgeInsets.only(top: 3, bottom: 3, left: 3, right: 3),
                  icon: Icons.calendar_month,
                  iconColor: Color(0xff15BE77),
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
                // const SizedBox(
                //   height: 30,
                // ),
                // Padding(
                //   padding: const EdgeInsets.symmetric(horizontal: 30),
                //   child: Row(
                //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //     crossAxisAlignment: CrossAxisAlignment.start,
                //     children: [
                //       Text('GROCERIES LIST',
                //           style: GoogleFonts.aBeeZee(
                //             fontSize: 31,
                //             color: const Color(0xff000000),
                //             fontWeight: FontWeight.w400,
                //           )),
                //       Padding(
                //         padding: const EdgeInsets.only(top: 10),
                //         child: Container(
                //           height: 50,
                //           width: 50,
                //           decoration: BoxDecoration(
                //               image: const DecorationImage(
                //                 image: AssetImage(
                //                     'assets/images/notification.png'),
                //                 // fit: BoxFit.fill,
                //               ),
                //               color: const Color(0xffFFFFFF),
                //               borderRadius: BorderRadius.circular(15),
                //               // ignore: prefer_const_literals_to_create_immutables
                //               boxShadow: [
                //                 const BoxShadow(
                //                   color: Colors.black12,
                //                   blurRadius: 6,
                //                   offset: Offset(0, 2),
                //                 )
                //               ]),
                //         ),
                //       )
                //     ],
                //   ),
                // ),

                //create meal page under hidden

                // Padding(
                //   padding: const EdgeInsets.only(left: 18),
                //   child: InkWell(
                //     onTap: () => Navigator.push(
                //       context,
                //       MaterialPageRoute(
                //           builder: (context) => const AddMealListPage()),
                //     ),
                //     child: Container(
                //         height: 30,
                //         width: 208,
                //         decoration: BoxDecoration(
                //             color: const Color(0xffFFFFFF),
                //             borderRadius: BorderRadius.circular(15),
                //             // ignore: prefer_const_literals_to_create_immutables
                //             boxShadow: [
                //               const BoxShadow(
                //                 color: Colors.black12,
                //                 blurRadius: 6,
                //                 offset: Offset(0, 2),
                //               )
                //             ]),
                //         child: Row(
                //           children: [
                //             Padding(
                //               padding: const EdgeInsets.only(left: 8),
                //               child: Container(
                //                 height: 20,
                //                 width: 20,
                //                 decoration: BoxDecoration(
                //                     color: const Color(0xff53E88B),
                //                     borderRadius: BorderRadius.circular(30),
                //                     // ignore: prefer_const_literals_to_create_immutables
                //                     boxShadow: [
                //                       const BoxShadow(
                //                         color: Colors.black12,
                //                         blurRadius: 6,
                //                         offset: Offset(0, 2),
                //                       )
                //                     ]),
                //                 child: const Icon(
                //                   Icons.add,
                //                   size: 10,
                //                   color: Colors.black,
                //                 ),
                //               ),
                //             ),
                //             const SizedBox(
                //               width: 8,
                //             ),
                //             Text(
                //               'Create New  Category ',
                //               style: GoogleFonts.aBeeZee(
                //                 fontSize: 14,
                //                 color: const Color(0xff000000),
                //                 fontWeight: FontWeight.w500,
                //               ),
                //             ),
                //           ],
                //         )),
                //   ),
                // ),

                Padding(
                  padding: const EdgeInsets.only(left: 30, right: 30, top: 20),
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
                        // TypeAheadField(
                        //   suggestionsCallback: (String patten) {
                        //     return sujesttag.where((element) => element
                        //         .toLowerCase()
                        //         .contains(patten.toLowerCase()));
                        //   },
                        //   onSuggestionSelected: (String suggtion) {},
                        //   itemBuilder:
                        //       (BuildContext context, Object? itemdata) {},
                        // )
                        // TextField(
                        //   cursorColor: const Color.fromARGB(255, 17, 17, 17),
                        //   decoration: InputDecoration(
                        //     border: InputBorder.none,
                        //     hintText: "Find your meal and products",
                        // hintStyle: GoogleFonts.roboto(
                        //   fontSize: 12.0,
                        //   color: const Color(0xffDA6317),
                        //   fontWeight: FontWeight.w400,
                        // ),
                        //     prefixIcon: IconButton(
                        //       icon: const Icon(Icons.search, size: 30.0),
                        //       color: const Color(0xffDA6317),
                        //       onPressed: () {},
                        //     ),
                        //   ),
                        //   style: const TextStyle(
                        //       color: Color.fromARGB(255, 19, 18, 18),
                        //       fontSize: 15.0),
                        // ),
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

//tab bar in hidden

                // Padding(
                //   padding:
                //       const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                //   child: SizedBox(
                //       height: 110,
                //       child: ListView.separated(
                //         shrinkWrap: true,
                //         scrollDirection: Axis.horizontal,
                //         reverse: true,
                //         itemBuilder: (context, index) {
                //           var neardoctor = meallist[index];
                //           return MeanListModel(mealmodellist: neardoctor);
                //         },
                //         separatorBuilder: (context, index) {
                //           return const SizedBox(
                //             width: 27,
                //           );
                //         },
                //         itemCount: 4,
                //         // itemCount: alltablist.length
                //       )),
                // ),

                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                  child: Text(
                    'Keyword Results ',
                    style: GoogleFonts.roboto(
                      fontSize: 15.0,
                      color: const Color(0xff09051C),
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),

                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                  child: InkWell(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const MealDitillsPage()),
                    ),
                    child: GridView.builder(
                      shrinkWrap: true,
                      // padding: EdgeInsets.all(8),
                      physics: const BouncingScrollPhysics(),
                      itemCount: lunchlist.length,

                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        mainAxisSpacing: 10,
                        crossAxisSpacing: 10,
                        crossAxisCount: 2,
                        childAspectRatio: 2 / 2.15,
                        // mainAxisExtent: 200,
                      ),
                      itemBuilder: (context, index) {
                        var near = lunchlist[index];
                        return LunchModelWeiget(lunchmodellist: near);
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
                const SizedBox(
                  height: 20,
                )
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
