import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../OrderPage/productdetilspage.dart';
import '../Weiget/GroceryListWeiget.dart';
import '../model/grocerylistmodel.dart';
import 'orderlistpage.dart';

class MealDitillsPage extends StatefulWidget {
  const MealDitillsPage({Key? key}) : super(key: key);

  @override
  State<MealDitillsPage> createState() => _MealDitillsPageState();
}

class _MealDitillsPageState extends State<MealDitillsPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
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
                                    height: MediaQuery.of(context).size.height *
                                        0.06,
                                    width: MediaQuery.of(context).size.width *
                                        0.25,
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
                                    height: MediaQuery.of(context).size.height *
                                        0.06,
                                    width: MediaQuery.of(context).size.width *
                                        0.25,
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
                                    height: MediaQuery.of(context).size.height *
                                        0.06,
                                    width:
                                        MediaQuery.of(context).size.width * 0.1,
                                    decoration: BoxDecoration(
                                        color: const Color(0xffEBFBF2),
                                        // gradient: const LinearGradient(colors: [
                                        //   Color.fromARGB(255, 166, 247, 197),
                                        //   Color.fromARGB(255, 140, 211, 181),
                                        // ]),
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
                                      Icons.calendar_month,
                                      color: Colors.black,
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Container(
                                    height: MediaQuery.of(context).size.height *
                                        0.06,
                                    width:
                                        MediaQuery.of(context).size.width * 0.1,
                                    decoration: BoxDecoration(
                                        color: const Color(0xffFFE8E8),
                                        // gradient: const LinearGradient(colors: [
                                        //   Color.fromARGB(255, 166, 247, 197),
                                        //   Color.fromARGB(255, 140, 211, 181),
                                        // ]),
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
                padding: const EdgeInsets.only(left: 20, bottom: 20),
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
                padding: const EdgeInsets.only(left: 20, top: 20, bottom: 20),
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
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                child: InkWell(
                  // onTap: () => Navigator.push(
                  //   context,
                  //   MaterialPageRoute(
                  //       builder: (context) => const OrderListPage()),
                  // ),
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ProductDetilisPage()),
                  ),
                  child: GridView.builder(
                    shrinkWrap: true,
                    // padding: EdgeInsets.all(8),
                    physics: const BouncingScrollPhysics(),
                    itemCount: gromeallist.length,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 1.8 / 2.2,
                      // mainAxisExtent: 200,
                    ),
                    itemBuilder: (context, index) {
                      var neardoctor = gromeallist[index];
                      return GrocerlistWeiget(groceryModelList: neardoctor);
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
