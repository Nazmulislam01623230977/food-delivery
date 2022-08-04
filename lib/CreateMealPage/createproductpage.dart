// ignore_for_file: prefer_typing_uninitialized_variables

import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
// import 'package:flutter_tags/flutter_tags.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import '../Dashboad/dashboad.dart';
import '../GrocerayListPage/addmeallistpage.dart';

class CreateProductPage extends StatefulWidget {
  const CreateProductPage({
    Key? key,
  }) : super(key: key);

  @override
  State<CreateProductPage> createState() => _CreateProductPageState();
}

class _CreateProductPageState extends State<CreateProductPage> {
  File? image;
  Future pickImage(ImageSource source) async {
    try {
      final image = await ImagePicker().pickImage(source: source);
      if (image == null) return;

      final imageTempory = File(image.path);
      setState(() {
        this.image = imageTempory;
      });
    } on PlatformException catch (e) {
      // ignore: avoid_print
      print('Filed to image pick : $e');
    }
  }

  var _tittleValue;
  var _listname;
  var _foodtype;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          // physics: const NeverScrollableScrollPhysics(),
          child: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/signinbc.png'),
                fit: BoxFit.fill,
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 30, left: 25),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const HomePage()),
                          );
                        },
                        child: Center(
                            child: Image.asset('assets/images/Path.png')),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 30, top: 30),
                      child: Text(
                        'Create your\nGroceries List',
                        style: GoogleFonts.aBeeZee(
                          fontSize: 25.0,
                          color: const Color(0xff09051C),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 14,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 25,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const AddMealListPage()));
                          },
                          child: Text(
                            'Add Meal',
                            style: GoogleFonts.roboto(
                              fontSize: 18.0,
                              color: const Color(0xff09051C),
                              fontWeight: FontWeight.w400,
                            ),
                          )),
                      // const SizedBox(
                      //   width: 100,
                      // ),
                      TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const CreateProductPage()));
                          },
                          child: Text(
                            'Add Product',
                            style: GoogleFonts.roboto(
                              fontSize: 18.0,
                              color: const Color(0xff1DC37A),
                              fontWeight: FontWeight.w400,
                            ),
                          ))
                    ],
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                  child: SizedBox(
                    width: 400,
                    child: Text(
                      'Upload your Groceries Products to\norganize your Weekly Order’s List',
                      style: GoogleFonts.roboto(
                        fontSize: 16.0,
                        color: const Color(0xffDA6317),
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                  child: InkWell(
                    onTap: () {
                      showModalBottomSheet(
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(30.0),
                              topRight: Radius.circular(30.0)),
                        ),
                        context: context,
                        builder: (context) => Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 10),
                              child: Text(
                                'Upload Your Meal or\nProduct Photo',
                                style: GoogleFonts.roboto(
                                  fontSize: 25.0,
                                  color: const Color(0xff09051C),
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 10),
                              child: Text(
                                'Customize your categories ',
                                style: GoogleFonts.roboto(
                                  fontSize: 12.0,
                                  color: const Color(0xff000000),
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            Center(
                              child: InkWell(
                                onTap: () {
                                  pickImage(ImageSource.camera);
                                },
                                child: Container(
                                  height:
                                      MediaQuery.of(context).size.height * 0.15,
                                  width:
                                      MediaQuery.of(context).size.width * 0.5,
                                  decoration: BoxDecoration(
                                      color: const Color(0xffFEFEFF), //E9F2F2
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
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Image.asset('assets/images/camera.png'),
                                      // ignore: prefer_const_constructors
                                      // Icon(
                                      //   Icons.camera_alt,
                                      //   size: 18,
                                      //   color: Colors.green,
                                      // ),
                                      // Text(
                                      //   'Upload an image',
                                      //   style: GoogleFonts.roboto(
                                      //     fontSize: 18.0,
                                      //     color: const Color(0xff1DC37A),
                                      //     fontWeight: FontWeight.w400,
                                      //   ),
                                      // )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Center(
                              child: InkWell(
                                onTap: () {
                                  pickImage(ImageSource.gallery);
                                },
                                child: Container(
                                  height:
                                      MediaQuery.of(context).size.height * 0.15,
                                  width:
                                      MediaQuery.of(context).size.width * 0.5,
                                  decoration: BoxDecoration(
                                      color: const Color(0xffFEFEFF), //E9F2F2
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
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Image.asset('assets/images/gallery.png'),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      );

                      // pickImage(ImageSource.gallery);
                    },
                    child: image != null
                        ? Image.file(
                            image!,
                            height: MediaQuery.of(context).size.height * 0.2,
                            width: double.infinity,
                            fit: BoxFit.cover,
                          )
                        : Container(
                            height: MediaQuery.of(context).size.height * 0.2,
                            width: double.infinity,
                            decoration: BoxDecoration(
                                color: const Color(0xffFEFEFF), //E9F2F2
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
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                // ignore: prefer_const_constructors
                                Icon(
                                  Icons.camera_alt,
                                  size: 18,
                                  color: Colors.green,
                                ),
                                Text(
                                  'Upload an image',
                                  style: GoogleFonts.roboto(
                                    fontSize: 18.0,
                                    color: const Color(0xff1DC37A),
                                    fontWeight: FontWeight.w400,
                                  ),
                                )
                              ],
                            ),
                          ),
                  ),
                ),
                name(),
                const SizedBox(
                  height: 10,
                ),
                priceSize(),
                const SizedBox(
                  height: 10,
                ),
                keywords(),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Groceries Store ',
                            style: GoogleFonts.roboto(
                              fontSize: 14,
                              color: const Color(0xff000000),
                              fontWeight: FontWeight.w700,
                              // height: 14,
                            ),
                          ),
                          Text(
                            '(eg. Al Osra)',
                            style: GoogleFonts.roboto(
                              fontStyle: FontStyle.italic,
                              fontSize: 14,
                              color: const Color(0xff000000),
                              fontWeight: FontWeight.w400,
                              // height: 14,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: MediaQuery.of(context).size.height * 0.06,
                            width: MediaQuery.of(context).size.width * 0.56,
                            decoration: BoxDecoration(
                                color: const Color(0xffFEFEFF), //E9F2F2
                                borderRadius: BorderRadius.circular(10),
                                // ignore: prefer_const_literals_to_create_immutables
                                boxShadow: [
                                  const BoxShadow(
                                    color: Colors.black12,
                                    blurRadius: 6,
                                    offset: Offset(0, 2),
                                  )
                                ]),
                            child: DropdownButtonHideUnderline(
                              child: DropdownButton(
                                hint: _tittleValue == null
                                    ? Padding(
                                        padding: const EdgeInsets.only(
                                            left: 8, right: 8),
                                        child: Text(
                                          'Select your groceries store',
                                          style: GoogleFonts.roboto(
                                            fontSize: 12,
                                            color: const Color(0xffDFDFDF),
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      )
                                    : Padding(
                                        padding: const EdgeInsets.only(
                                            left: 8, right: 8),
                                        child: Text(
                                          _tittleValue,
                                          style: GoogleFonts.roboto(
                                            fontSize: 12,
                                            color: const Color(0xff000000),
                                            fontWeight: FontWeight.w600,
                                          ), //background: #3BE4C6;
                                        ),
                                      ),
                                isExpanded: true,
                                iconSize: 25.0,
                                style: const TextStyle(color: Colors.black),
                                items: ['Lunch1', 'Lunch2', 'Lunch3'].map(
                                  (val) {
                                    return DropdownMenuItem<String>(
                                      value: val,
                                      child: Text(val),
                                    );
                                  },
                                ).toList(),
                                onChanged: (val) {
                                  setState(
                                    () {
                                      _tittleValue = val!;
                                    },
                                  );
                                },
                              ),
                            ),
                          ),
                          Container(
                            height: MediaQuery.of(context).size.height * 0.06,
                            width: MediaQuery.of(context).size.width * 0.2,
                            decoration: BoxDecoration(
                                gradient: const LinearGradient(
                                  colors: [
                                    Color(0xFF4DE389),
                                    Color(0xFF19C179),
                                  ],
                                  begin: FractionalOffset(0.0, 0.0),
                                  end: FractionalOffset(1.0, 0.0),
                                  stops: [0.0, 1.0],
                                ),

                                // color: const Color(0xffFEFEFF), //E9F2F2
                                borderRadius: BorderRadius.circular(10),
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
                                '+ Add new',
                                style: GoogleFonts.poppins(
                                  fontSize: 12,
                                  color: const Color(0xffffffff),
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Product Type ',
                            style: GoogleFonts.roboto(
                              fontSize: 14,
                              color: const Color(0xff000000),
                              fontWeight: FontWeight.w700,
                              // height: 14,
                            ),
                          ),
                          Text(
                            '(eg. Butchery)',
                            style: GoogleFonts.roboto(
                              fontStyle: FontStyle.italic,
                              fontSize: 14,
                              color: const Color(0xff000000),
                              fontWeight: FontWeight.w400,
                              // height: 14,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: MediaQuery.of(context).size.height * 0.06,
                            width: MediaQuery.of(context).size.width * 0.56,
                            decoration: BoxDecoration(
                                color: const Color(0xffFEFEFF), //E9F2F2
                                borderRadius: BorderRadius.circular(10),
                                // ignore: prefer_const_literals_to_create_immutables
                                boxShadow: [
                                  const BoxShadow(
                                    color: Colors.black12,
                                    blurRadius: 6,
                                    offset: Offset(0, 2),
                                  )
                                ]),
                            child: DropdownButtonHideUnderline(
                              child: DropdownButton(
                                hint: _listname == null
                                    ? Padding(
                                        padding: const EdgeInsets.only(
                                            left: 8, right: 8),
                                        child: Text(
                                          'Dairy',
                                          style: GoogleFonts.poppins(
                                            fontSize: 12,
                                            color: const Color(0xffDFDFDF),
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      )
                                    : Padding(
                                        padding: const EdgeInsets.only(
                                            left: 8, right: 8),
                                        child: Text(
                                          _listname,
                                          style: GoogleFonts.poppins(
                                            fontSize: 12,
                                            color: const Color(0xff000000),
                                            fontWeight: FontWeight.w600,
                                          ), //background: #3BE4C6;
                                        ),
                                      ),
                                isExpanded: true,
                                iconSize: 25.0,
                                style: const TextStyle(color: Colors.black),
                                items: ['2', '3', '5'].map(
                                  (val) {
                                    return DropdownMenuItem<String>(
                                      value: val,
                                      child: Text(val),
                                    );
                                  },
                                ).toList(),
                                onChanged: (val) {
                                  setState(
                                    () {
                                      _listname = val!;
                                    },
                                  );
                                },
                              ),
                            ),
                          ),
                          Container(
                            height: MediaQuery.of(context).size.height * 0.06,
                            width: MediaQuery.of(context).size.width * 0.2,
                            decoration: BoxDecoration(
                                gradient: const LinearGradient(
                                  colors: [
                                    Color(0xFF4DE389),
                                    Color(0xFF19C179),
                                  ],
                                  begin: FractionalOffset(0.0, 0.0),
                                  end: FractionalOffset(1.0, 0.0),
                                  stops: [0.0, 1.0],
                                ),

                                // color: const Color(0xffFEFEFF), //E9F2F2
                                borderRadius: BorderRadius.circular(10),
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
                                '+ Add new',
                                style: GoogleFonts.poppins(
                                  fontSize: 12,
                                  color: const Color(0xffffffff),
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'List Name ',
                            style: GoogleFonts.roboto(
                              fontSize: 14,
                              color: const Color(0xff000000),
                              fontWeight: FontWeight.w700,
                              // height: 14,
                            ),
                          ),
                          Text(
                            '(eg. BBQ List)',
                            style: GoogleFonts.roboto(
                              fontSize: 14,
                              fontStyle: FontStyle.italic,
                              color: const Color(0xff000000),
                              fontWeight: FontWeight.w400,
                              // height: 14,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            height: MediaQuery.of(context).size.height * 0.06,
                            width: MediaQuery.of(context).size.width * 0.56,
                            // width: 230,
                            decoration: BoxDecoration(
                                color: const Color(0xffFEFEFF), //E9F2F2
                                borderRadius: BorderRadius.circular(10),
                                // ignore: prefer_const_literals_to_create_immutables
                                boxShadow: [
                                  const BoxShadow(
                                    color: Colors.black12,
                                    blurRadius: 6,
                                    offset: Offset(0, 2),
                                  )
                                ]),
                            child: DropdownButtonHideUnderline(
                              child: DropdownButton(
                                hint: _foodtype == null
                                    ? Padding(
                                        padding: const EdgeInsets.only(
                                            left: 8, right: 8),
                                        child: Text(
                                          'Select your list ',
                                          style: GoogleFonts.poppins(
                                            fontSize: 12,
                                            color: const Color(0xffDFDFDF),
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      )
                                    : Padding(
                                        padding: const EdgeInsets.only(
                                            left: 8, right: 8),
                                        child: Text(
                                          _foodtype,
                                          style: GoogleFonts.poppins(
                                            fontSize: 12,
                                            color: const Color(0xff000000),
                                            fontWeight: FontWeight.w600,
                                          ), //background: #3BE4C6;
                                        ),
                                      ),
                                isExpanded: true,
                                iconSize: 25.0,
                                style: const TextStyle(color: Colors.black),
                                items: ['A', 'B', 'C'].map(
                                  (val) {
                                    return DropdownMenuItem<String>(
                                      value: val,
                                      child: Text(val),
                                    );
                                  },
                                ).toList(),
                                onChanged: (val) {
                                  setState(
                                    () {
                                      _foodtype = val!;
                                    },
                                  );
                                },
                              ),
                            ),
                          ),
                          // const SizedBox(
                          //   width: 20,
                          // ),
                          Container(
                            height: MediaQuery.of(context).size.height * 0.06,
                            width: MediaQuery.of(context).size.width * 0.2,
                            decoration: BoxDecoration(
                                gradient: const LinearGradient(
                                  colors: [
                                    Color(0xFF4DE389),
                                    Color(0xFF19C179),
                                  ],
                                  begin: FractionalOffset(0.0, 0.0),
                                  end: FractionalOffset(1.0, 0.0),
                                  stops: [0.0, 1.0],
                                ),

                                // color: const Color(0xffFEFEFF), //E9F2F2
                                borderRadius: BorderRadius.circular(10),
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
                                '+ Add new',
                                style: GoogleFonts.poppins(
                                  fontSize: 12,
                                  color: const Color(0xffffffff),
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15), // <-- Radius
                        ),
                        // primary: const Color(0xff128041), // background
                        primary: const Color(0xff1DC37A),
                        // shadowColor: const Color(0xff1DC37A),
                        // tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        // foreground
                      ),
                      onPressed: () {
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(
                        //       builder: (context) => const ProductDetilisPage()),
                        // );
                      },
                      child: const Center(
                        child: Padding(
                          padding: EdgeInsets.all(15.0),
                          child: Text(
                            'Submit',
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 18.0,
                              color: Color(0xffFFFFFF),
                            ),
                          ),
                        ),
                      )),
                ),
                const SizedBox(
                  height: 30,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget name() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Product Name',
            style: GoogleFonts.roboto(
              fontSize: 14,
              color: const Color(0xff000000),
              fontWeight: FontWeight.w700,
              // height: 14,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.06,
            decoration: BoxDecoration(
                color: const Color(0xffFEFEFF), //E9F2F2
                borderRadius: BorderRadius.circular(10),
                // ignore: prefer_const_literals_to_create_immutables
                boxShadow: [
                  const BoxShadow(
                    color: Colors.black12,
                    blurRadius: 6,
                    offset: Offset(0, 2),
                  )
                ]),
            child: Padding(
              padding: const EdgeInsets.only(left: 8, bottom: 8),
              child: TextFormField(
                keyboardType: TextInputType.text,
                // obscureText: !_passwordVisible,
                style: const TextStyle(color: Colors.black87),
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Write your product name',
                    hintStyle: GoogleFonts.roboto(
                      fontSize: 12.0,
                      color: const Color(0xffDFDFDF),
                    )),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget description() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Description',
            style: GoogleFonts.roboto(
              fontSize: 14,
              color: const Color(0xff000000),
              fontWeight: FontWeight.w700,
              // height: 14,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.15,
            decoration: BoxDecoration(
                color: const Color(0xffFEFEFF), //E9F2F2
                borderRadius: BorderRadius.circular(10),
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
              child: TextFormField(
                keyboardType: TextInputType.text,
                maxLines: 5,
                // obscureText: !_passwordVisible,
                style: const TextStyle(color: Colors.black87),
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Write your meal description',
                    hintStyle: GoogleFonts.roboto(
                      fontSize: 12.0,
                      color: const Color(0xffDFDFDF),
                    )),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget priceSize() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Row(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Price',
                style: GoogleFonts.roboto(
                  fontSize: 14,
                  color: const Color(0xff000000),
                  fontWeight: FontWeight.w700,
                  // height: 14,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.06,
                width: MediaQuery.of(context).size.width * 0.4,
                decoration: BoxDecoration(
                    color: const Color(0xffFEFEFF), //E9F2F2
                    borderRadius: BorderRadius.circular(10),
                    // ignore: prefer_const_literals_to_create_immutables
                    boxShadow: [
                      const BoxShadow(
                        color: Colors.black12,
                        blurRadius: 6,
                        offset: Offset(0, 2),
                      )
                    ]),
                child: Padding(
                  padding: const EdgeInsets.only(left: 8, bottom: 8),
                  child: TextFormField(
                    keyboardType: TextInputType.text,
                    // obscureText: !_passwordVisible,
                    style: const TextStyle(color: Colors.black87),
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Enter Product Price',
                        hintStyle: GoogleFonts.roboto(
                          fontSize: 10.0,
                          color: const Color(0xffDFDFDF),
                        )),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            width: 30,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Size',
                style: GoogleFonts.roboto(
                  fontSize: 14,
                  color: const Color(0xff000000),
                  fontWeight: FontWeight.w700,
                  // height: 14,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.06,
                width: MediaQuery.of(context).size.width * 0.4,
                decoration: BoxDecoration(
                    color: const Color(0xffFEFEFF), //E9F2F2
                    borderRadius: BorderRadius.circular(10),
                    // ignore: prefer_const_literals_to_create_immutables
                    boxShadow: [
                      const BoxShadow(
                        color: Colors.black12,
                        blurRadius: 6,
                        offset: Offset(0, 2),
                      )
                    ]),
                child: Padding(
                  padding: const EdgeInsets.only(left: 8, bottom: 8),
                  child: TextFormField(
                    keyboardType: TextInputType.text,
                    // obscureText: !_passwordVisible,
                    style: const TextStyle(color: Colors.black87),
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Enter Product Size',
                        hintStyle: GoogleFonts.roboto(
                          fontSize: 10.0,
                          color: const Color(0xffDFDFDF),
                        )),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget keywords() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Keywords',
            style: GoogleFonts.roboto(
              fontSize: 14,
              color: const Color(0xff000000),
              fontWeight: FontWeight.w700,
              // height: 14,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.06,
            decoration: BoxDecoration(
                color: const Color(0xffFEFEFF), //E9F2F2
                borderRadius: BorderRadius.circular(10),
                // ignore: prefer_const_literals_to_create_immutables
                boxShadow: [
                  const BoxShadow(
                    color: Colors.black12,
                    blurRadius: 6,
                    offset: Offset(0, 2),
                  )
                ]),
            child: Padding(
              padding: const EdgeInsets.only(bottom: 8, left: 8),
              child: TextFormField(
                keyboardType: TextInputType.text,
                // obscureText: !_passwordVisible,
                style: const TextStyle(color: Colors.black87),
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Write your meal name',
                    hintStyle: GoogleFonts.roboto(
                        fontSize: 12.0, color: Color(0xffA7ADBC))),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget mealLink() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 28),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Meal Link',
            style: GoogleFonts.roboto(
              fontSize: 14,
              color: const Color(0xff000000),
              fontWeight: FontWeight.w700,
              // height: 14,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.06,
            decoration: BoxDecoration(
                color: const Color(0xffFEFEFF), //E9F2F2
                borderRadius: BorderRadius.circular(10),
                // ignore: prefer_const_literals_to_create_immutables
                boxShadow: [
                  const BoxShadow(
                    color: Colors.black12,
                    blurRadius: 6,
                    offset: Offset(0, 2),
                  )
                ]),
            child: Padding(
              padding: const EdgeInsets.only(left: 8, bottom: 8),
              child: TextFormField(
                keyboardType: TextInputType.text,
                // obscureText: !_passwordVisible,
                style: const TextStyle(color: Colors.black87),
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Paste your video link here',
                    hintStyle: GoogleFonts.roboto(
                      fontSize: 12.0,
                      color: const Color(0xffDFDFDF),
                    )),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
