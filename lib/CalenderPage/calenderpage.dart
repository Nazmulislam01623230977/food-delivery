// ignore_for_file: prefer_const_constructors

import 'package:date_picker_timeline/date_picker_timeline.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import '../Dashboad/dashboad.dart';
import '../GrocerayListPage/addmeallistpage.dart';
import '../Listpage/GroceriesListingsPage.dart';
import '../OrderPage/orderpage.dart';
import '../Weiget/newcalenderWeiget.dart';
import '../model/newcalendermodel.dart';

class Calenderpage extends StatefulWidget {
  const Calenderpage({Key? key}) : super(key: key);

  @override
  State<Calenderpage> createState() => _CalenderpageState();
}

class _CalenderpageState extends State<Calenderpage> {
  DatePickerController controller = DatePickerController();

  DateTime _selectedValue = DateTime.now();

  @override
  void initState() {
    super.initState();
  }

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
                  // iconSize: 15,
                  // gap: 2,
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
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
            child: Column(children: [
              Container(
                color: Color(0xffA8EACB),
                child: DatePicker(
                  DateTime.now(),
                  width: 60,
                  height: 80,
                  controller: controller,
                  initialSelectedDate: DateTime.now(),
                  selectionColor: Colors.green,
                  selectedTextColor: Colors.black,
                  dateTextStyle: GoogleFonts.aBeeZee(
                    fontSize: 16,
                    color: Colors.grey,
                    fontWeight: FontWeight.w600,
                  ),
                  monthTextStyle: GoogleFonts.aBeeZee(
                    fontSize: 16,
                    color: Colors.grey,
                    fontWeight: FontWeight.w600,
                  ),
                  dayTextStyle: GoogleFonts.aBeeZee(
                    fontSize: 16,
                    color: Colors.grey,
                    fontWeight: FontWeight.w600,
                  ),
                  onDateChange: (date) {
                    // New date selected
                    setState(() {
                      _selectedValue = date;
                    });
                  },
                ),
              ),
              ListView.builder(
                itemCount: newcalensdertlist.length,
                scrollDirection: Axis.vertical,
                physics: const ScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  var wallet = newcalensdertlist[index];
                  return NewCalenderWeiget(newcalender: wallet);
                },
              ),
            ]),
          ),
        ),
      ),
    );
  }

  Widget buildLanspace() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              Text(
                'Weekly Meal Calendar',
                style: GoogleFonts.aBeeZee(
                  decoration: TextDecoration.none,
                  fontSize: 20,
                  color: const Color(0xff09051C),
                  fontWeight: FontWeight.w700,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.06,
                  width: MediaQuery.of(context).size.width * .1,
                  decoration: BoxDecoration(
                      // image: const DecorationImage(
                      //   image: AssetImage(
                      //       'assets/images/notification.png'),
                      //   fit: BoxFit.fill,
                      // ),
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
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.05,
                width: MediaQuery.of(context).size.width * .2,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/mon.png'),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.05,
                width: MediaQuery.of(context).size.width * .2,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      'assets/images/b.png',
                    ),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.05,
                width: MediaQuery.of(context).size.width * .2,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      'assets/images/l.png',
                    ),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.05,
                width: MediaQuery.of(context).size.width * .2,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      'assets/images/d.png',
                    ),
                    fit: BoxFit.fill,
                  ),
                ),
              )
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Container(
                  height: MediaQuery.of(context).size.height * 0.05,
                  width: MediaQuery.of(context).size.width * .09,
                  decoration: BoxDecoration(
                      color: const Color(0xffA8EACB),
                      borderRadius: BorderRadius.circular(30),
                      // ignore: prefer_const_literals_to_create_immutables
                      boxShadow: [
                        const BoxShadow(
                          color: Colors.black12,
                          blurRadius: 6,
                          offset: Offset(0, 2),
                        )
                      ]),
                  child: Center(
                      child: IconButton(
                          onPressed: () {}, icon: const Icon(Icons.add)))),
              const SizedBox(
                width: 10,
              ),
              Expanded(
                child: SizedBox(
                    height: MediaQuery.of(context).size.height * 0.11,
                    width: MediaQuery.of(context).size.width,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 1,
                      itemBuilder: (context, index) => buildcard(),
                    )),
              )
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.05,
            width: MediaQuery.of(context).size.width * .2,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  'assets/images/we.png',
                ),
                fit: BoxFit.fill,
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Container(
                  height: MediaQuery.of(context).size.height * 0.05,
                  width: MediaQuery.of(context).size.width * .09,
                  decoration: BoxDecoration(
                      color: const Color(0xffA8EACB),
                      borderRadius: BorderRadius.circular(30),
                      // ignore: prefer_const_literals_to_create_immutables
                      boxShadow: [
                        const BoxShadow(
                          color: Colors.black12,
                          blurRadius: 6,
                          offset: Offset(0, 2),
                        )
                      ]),
                  child: IconButton(
                      onPressed: () {}, icon: const Icon(Icons.add))),
              const SizedBox(
                width: 10,
              ),
              Expanded(
                child: SizedBox(
                    height: MediaQuery.of(context).size.height * 0.11,
                    width: MediaQuery.of(context).size.width,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 1,
                      itemBuilder: (context, index) => buildcard(),
                    )),
              )
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.05,
            width: MediaQuery.of(context).size.width * .2,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  'assets/images/we.png',
                ),
                fit: BoxFit.fill,
              ),
            ),
          ),
          Row(
            children: [
              Container(
                  height: MediaQuery.of(context).size.height * 0.05,
                  width: MediaQuery.of(context).size.width * .09,
                  decoration: BoxDecoration(
                      color: const Color(0xffA8EACB),
                      borderRadius: BorderRadius.circular(30),
                      // ignore: prefer_const_literals_to_create_immutables
                      boxShadow: [
                        const BoxShadow(
                          color: Colors.black12,
                          blurRadius: 6,
                          offset: Offset(0, 2),
                        )
                      ]),
                  child: Center(
                    child: IconButton(
                        onPressed: () {}, icon: const Icon(Icons.add)),
                  )),
              const SizedBox(
                width: 10,
              ),
              Expanded(
                child: SizedBox(
                    height: MediaQuery.of(context).size.height * 0.11,
                    width: MediaQuery.of(context).size.width,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 1,
                      itemBuilder: (context, index) => buildcard(),
                    )),
              )
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.05,
            width: MediaQuery.of(context).size.width * .2,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  'assets/images/th.png',
                ),
                fit: BoxFit.fill,
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Container(
                  height: MediaQuery.of(context).size.height * 0.05,
                  width: MediaQuery.of(context).size.width * .09,
                  decoration: BoxDecoration(
                      color: const Color(0xffA8EACB),
                      borderRadius: BorderRadius.circular(30),
                      // ignore: prefer_const_literals_to_create_immutables
                      boxShadow: [
                        const BoxShadow(
                          color: Colors.black12,
                          blurRadius: 6,
                          offset: Offset(0, 2),
                        )
                      ]),
                  child: Center(
                    child: IconButton(
                        onPressed: () {}, icon: const Icon(Icons.add)),
                  )),
              const SizedBox(
                width: 10,
              ),
              Expanded(
                child: SizedBox(
                    height: MediaQuery.of(context).size.height * 0.11,
                    width: MediaQuery.of(context).size.width,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 1,
                      itemBuilder: (context, index) => buildcard(),
                    )),
              )
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.05,
            width: MediaQuery.of(context).size.width * .2,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  'assets/images/fri.png',
                ),
                fit: BoxFit.fill,
              ),
            ),
          ),
          Row(
            children: [
              Container(
                  height: MediaQuery.of(context).size.height * 0.05,
                  width: MediaQuery.of(context).size.width * .09,
                  decoration: BoxDecoration(
                      color: const Color(0xffA8EACB),
                      borderRadius: BorderRadius.circular(30),
                      // ignore: prefer_const_literals_to_create_immutables
                      boxShadow: [
                        const BoxShadow(
                          color: Colors.black12,
                          blurRadius: 6,
                          offset: Offset(0, 2),
                        )
                      ]),
                  child: Center(
                      child: IconButton(
                          onPressed: () {}, icon: const Icon(Icons.add)))),
              const SizedBox(
                width: 10,
              ),
              Expanded(
                child: SizedBox(
                    height: MediaQuery.of(context).size.height * 0.11,
                    width: MediaQuery.of(context).size.width,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 10,
                      itemBuilder: (context, index) => buildcard(),
                    )),
              )
            ],
          ),
        ],
      ),
    );
  }

  Widget gfgf() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              Text(
                'Weekly Meal Calendar',
                style: GoogleFonts.aBeeZee(
                  decoration: TextDecoration.none,
                  fontSize: 20,
                  color: const Color(0xff09051C),
                  fontWeight: FontWeight.w700,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.06,
                  width: MediaQuery.of(context).size.width * .1,
                  decoration: BoxDecoration(
                      // image: const DecorationImage(
                      //   image: AssetImage(
                      //       'assets/images/notification.png'),
                      //   fit: BoxFit.fill,
                      // ),
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
                  child: IconButton(
                    icon: Stack(
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
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
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.05,
                width: MediaQuery.of(context).size.width * .2,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/mon.png'),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.05,
                width: MediaQuery.of(context).size.width * .2,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      'assets/images/b.png',
                    ),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.05,
                width: MediaQuery.of(context).size.width * .2,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      'assets/images/l.png',
                    ),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.05,
                width: MediaQuery.of(context).size.width * .2,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      'assets/images/d.png',
                    ),
                    fit: BoxFit.fill,
                  ),
                ),
              )
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Container(
                  height: MediaQuery.of(context).size.height * 0.05,
                  width: MediaQuery.of(context).size.width * .09,
                  decoration: BoxDecoration(
                      color: const Color(0xffA8EACB),
                      borderRadius: BorderRadius.circular(30),
                      // ignore: prefer_const_literals_to_create_immutables
                      boxShadow: [
                        const BoxShadow(
                          color: Colors.black12,
                          blurRadius: 6,
                          offset: Offset(0, 2),
                        )
                      ]),
                  child: Center(
                    child: IconButton(
                        onPressed: () {}, icon: const Icon(Icons.add)),
                  )),
              const SizedBox(
                width: 10,
              ),
              Expanded(
                child: SizedBox(
                    height: MediaQuery.of(context).size.height * 0.11,
                    width: MediaQuery.of(context).size.width,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 10,
                      itemBuilder: (context, index) => buildcard(),
                    )),
              )
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.05,
            width: MediaQuery.of(context).size.width * .2,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  'assets/images/we.png',
                ),
                fit: BoxFit.fill,
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Container(
                  height: MediaQuery.of(context).size.height * 0.05,
                  width: MediaQuery.of(context).size.width * .09,
                  decoration: BoxDecoration(
                      color: const Color(0xffA8EACB),
                      borderRadius: BorderRadius.circular(30),
                      // ignore: prefer_const_literals_to_create_immutables
                      boxShadow: [
                        const BoxShadow(
                          color: Colors.black12,
                          blurRadius: 6,
                          offset: Offset(0, 2),
                        )
                      ]),
                  child: IconButton(
                      onPressed: () {}, icon: const Icon(Icons.add))),
              const SizedBox(
                width: 10,
              ),
              Expanded(
                child: SizedBox(
                    height: MediaQuery.of(context).size.height * 0.11,
                    width: MediaQuery.of(context).size.width,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 10,
                      itemBuilder: (context, index) => buildcard(),
                    )),
              )
            ],
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.05,
            width: MediaQuery.of(context).size.width * .2,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  'assets/images/we.png',
                ),
                fit: BoxFit.fill,
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Container(
                  height: MediaQuery.of(context).size.height * 0.05,
                  width: MediaQuery.of(context).size.width * .09,
                  decoration: BoxDecoration(
                      color: const Color(0xffA8EACB),
                      borderRadius: BorderRadius.circular(30),
                      // ignore: prefer_const_literals_to_create_immutables
                      boxShadow: [
                        const BoxShadow(
                          color: Colors.black12,
                          blurRadius: 6,
                          offset: Offset(0, 2),
                        )
                      ]),
                  child: Center(
                      child: IconButton(
                          onPressed: () {}, icon: const Icon(Icons.add)))),
              const SizedBox(
                width: 10,
              ),
              Expanded(
                child: SizedBox(
                    height: MediaQuery.of(context).size.height * 0.11,
                    width: MediaQuery.of(context).size.width,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 10,
                      itemBuilder: (context, index) => buildcard(),
                    )),
              )
            ],
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.05,
            width: MediaQuery.of(context).size.width * .2,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  'assets/images/th.png',
                ),
                fit: BoxFit.fill,
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Container(
                  height: MediaQuery.of(context).size.height * 0.05,
                  width: MediaQuery.of(context).size.width * .09,
                  decoration: BoxDecoration(
                      color: const Color(0xffA8EACB),
                      borderRadius: BorderRadius.circular(30),
                      // ignore: prefer_const_literals_to_create_immutables
                      boxShadow: [
                        const BoxShadow(
                          color: Colors.black12,
                          blurRadius: 6,
                          offset: Offset(0, 2),
                        )
                      ]),
                  child: Center(
                      child: IconButton(
                          onPressed: () {}, icon: const Icon(Icons.add)))),
              const SizedBox(
                width: 10,
              ),
              Expanded(
                child: SizedBox(
                    height: MediaQuery.of(context).size.height * 0.11,
                    width: MediaQuery.of(context).size.width,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 10,
                      itemBuilder: (context, index) => buildcard(),
                    )),
              )
            ],
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.05,
            width: MediaQuery.of(context).size.width * .2,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  'assets/images/fri.png',
                ),
                fit: BoxFit.fill,
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                  height: MediaQuery.of(context).size.height * 0.05,
                  width: MediaQuery.of(context).size.width * .09,
                  decoration: BoxDecoration(
                      color: const Color(0xffA8EACB),
                      borderRadius: BorderRadius.circular(30),
                      // ignore: prefer_const_literals_to_create_immutables
                      boxShadow: [
                        const BoxShadow(
                          color: Colors.black12,
                          blurRadius: 6,
                          offset: Offset(0, 2),
                        )
                      ]),
                  child: Center(
                    child: IconButton(
                        onPressed: () {}, icon: const Icon(Icons.add)),
                  )),
              const SizedBox(
                width: 10,
              ),
              Expanded(
                child: SizedBox(
                    height: MediaQuery.of(context).size.height * 0.11,
                    width: MediaQuery.of(context).size.width,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 10,
                      itemBuilder: (context, index) => buildcard(),
                    )),
              )
            ],
          ),
        ],
      ),
    );
  }

  Widget buildcard() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Container(
        // height: MediaQuery.of(context).size.height * 0.9,
        width: MediaQuery.of(context).size.width * .45,
        decoration: BoxDecoration(
            color: Color(0xFfffffff),
            borderRadius: BorderRadius.circular(8),
            // ignore: prefer_const_literals_to_create_immutables
            boxShadow: [
              const BoxShadow(
                color: Colors.black12,
                blurRadius: 6,
                offset: Offset(0, 2),
              )
            ]),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 8),
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.1,
                    width: MediaQuery.of(context).size.width * .13,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          'assets/images/rice.png',
                        ),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Meal name',
                        style: GoogleFonts.aBeeZee(
                          decoration: TextDecoration.none,
                          fontSize: 14,
                          color: const Color(0xff09051C),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        'food type',
                        style: GoogleFonts.aBeeZee(
                          decoration: TextDecoration.none,
                          fontSize: 14,
                          color: const Color(0xffC4C4C4),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        'Keyword',
                        style: GoogleFonts.aBeeZee(
                          decoration: TextDecoration.none,
                          fontSize: 15,
                          color: const Color(0xff28CB7D),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
