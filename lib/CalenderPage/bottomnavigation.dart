import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import '../Dashboad/dashboad.dart';
import '../GrocerayListPage/addmeallistpage.dart';
import '../Listpage/GroceriesListingsPage.dart';
import '../OrderPage/orderpage.dart';
import 'calenderpage.dart';

class Example extends StatefulWidget {
  const Example({Key? key}) : super(key: key);

  @override
  _ExampleState createState() => _ExampleState();
}

class _ExampleState extends State<Example> {
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
  // int _selectedIndex = 0;
  // static const TextStyle optionStyle =
  //     TextStyle(fontSize: 30, fontWeight: FontWeight.w600);
  // static const List<Widget> _widgetOptions = <Widget>[
  //   HomePage(),
  //   AddMealListPage(),
  //   OrderPage(),
  //   GroceriesListPage(),
  //   // Calenderpage(),

  //   // Text(

  //   //   'Home',
  //   //   style: optionStyle,
  //   // ),
  //   // Text(
  //   //   'Likes',
  //   //   style: optionStyle,
  //   // ),
  //   // Text(
  //   //   'Search',
  //   //   style: optionStyle,
  //   // ),
  //   // Text(
  //   //   'Profile',
  //   //   style: optionStyle,
  //   // ),
  // ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
    );
  }
}
