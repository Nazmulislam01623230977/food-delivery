// ignore: file_names
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../model/grocerylistmodel.dart';

class GrocerlistWeiget extends StatelessWidget {
  final GroceryModelList groceryModelList;
  const GrocerlistWeiget({Key? key, required this.groceryModelList})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        // height: 300,
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    groceryModelList.imageurl,
                    height: MediaQuery.of(context).size.width * 0.2,
                    width: MediaQuery.of(context).size.width * 0.15,
                    fit: BoxFit.cover,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 45),
                    child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          groceryModelList.icon,
                          color: Colors.red,
                        )),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 18),
              child: Text(groceryModelList.name,
                  style: GoogleFonts.aBeeZee(
                    fontSize: 15.0,
                    color: const Color(0xff09051C),
                    fontWeight: FontWeight.w600,
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 18, top: 5),
              child: Row(
                children: [
                  Container(
                    height: 30,
                    width: 60,
                    decoration: BoxDecoration(
                        gradient: const LinearGradient(
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                            stops: [01, 0.5],
                            colors: [Color(0xff53E88B), Color(0xff15BE77)]),
                        // color: const Color(0xff53E88B),
                        borderRadius: BorderRadius.circular(17),
                        // ignore: prefer_const_literals_to_create_immutables
                        boxShadow: [
                          const BoxShadow(
                            color: Colors.black12,
                            blurRadius: 6,
                            offset: Offset(0, 2),
                          )
                        ]),
                    child: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Center(child: Text(groceryModelList.countButoon)),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(groceryModelList.pices,
                      style: GoogleFonts.aBeeZee(
                        fontSize: 13.0,
                        color: const Color(0xffE5E5E5),
                        fontWeight: FontWeight.w700,
                      ))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
