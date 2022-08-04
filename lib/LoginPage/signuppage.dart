import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Dashboad/dashboad.dart';

class SingUpPage extends StatefulWidget {
  const SingUpPage({Key? key}) : super(key: key);

  @override
  State<SingUpPage> createState() => _SingUpPageState();
}

class _SingUpPageState extends State<SingUpPage> {
  late bool _passwordVisible;
  // bool _isSelected = false;
  bool isChecked = false;
  bool isChecked1 = false;

  @override
  void initState() {
    super.initState();
    _passwordVisible = false;
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/signinbc.png'),
                fit: BoxFit.fill,
              ),
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 40, bottom: 30),
                  child: Image.asset('assets/images/signup1.png'),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 30),
                  child: Text(
                    'Login To Your Account',
                    style: GoogleFonts.aBeeZee(
                      decoration: TextDecoration.none,
                      fontSize: 20,
                      color: const Color(0xff09051C),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                email(),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 16, right: 16, bottom: 2),
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.07,
                    alignment: Alignment.centerLeft,
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
                    child: Padding(
                      padding:
                          const EdgeInsets.only(left: 16, right: 16, bottom: 2),
                      child: TextFormField(
                        // controller: passwordController,
                        keyboardType: TextInputType.text,
                        obscureText: !_passwordVisible,
                        style: const TextStyle(color: Colors.black87),
                        decoration: const InputDecoration(
                            border: InputBorder.none,
                            // prefixIcon: const Icon(
                            //   Icons.lock_open,
                            //   color: Color(0xff53e88b),
                            //   size: 20,
                            // ),
                            // suffixIcon: IconButton(
                            //   icon: Icon(
                            //       _passwordVisible
                            //           ? Icons.remove_red_eye_outlined
                            //           : Icons.visibility_off,
                            //       color: const Color(
                            //           0xffABABAB) //Theme.of(context).primaryColorDark,
                            //       ),
                            //   onPressed: () {
                            //     setState(() {
                            //       _passwordVisible = !_passwordVisible;
                            //     });
                            //   },
                            // ),
                            hintText: 'Password',
                            hintStyle: TextStyle(
                                fontSize: 12.0, color: Color(0xffA7ADBC))),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Center(
                  child: Text(
                    'Or Continue With',
                    style: GoogleFonts.aBeeZee(
                      decoration: TextDecoration.none,
                      fontSize: 12,
                      color: const Color(0xff09051C),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 50,
                      width: 140,
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
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset('assets/images/f.png'),
                            const SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Facebook',
                              style: GoogleFonts.aBeeZee(
                                decoration: TextDecoration.none,
                                fontSize: 14,
                                color: const Color(0xff09051C),
                                fontWeight: FontWeight.w600,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 50,
                    ),
                    Container(
                      height: 50,
                      width: 140,
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
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Image.asset('assets/images/g.png'),
                            const SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Google',
                              style: GoogleFonts.aBeeZee(
                                decoration: TextDecoration.none,
                                fontSize: 14,
                                color: const Color(0xff09051C),
                                fontWeight: FontWeight.w600,
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Center(
                    child: Text(
                  'Forgot Your Password?',
                  style: GoogleFonts.aBeeZee(
                    decoration: TextDecoration.underline,
                    fontSize: 12,
                    color: const Color(0xff53E88B),
                    fontWeight: FontWeight.w400,
                  ),
                )),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 130),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const HomePage()),
                      );
                    },
                    child: Container(
                      height: 50,
                      decoration: BoxDecoration(
                        gradient: const LinearGradient(colors: [
                          Color(0xff53E88B),
                          Color(0xff15BE77),
                        ]),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Center(
                        child: Text(
                          'Login',
                          style: GoogleFonts.aBeeZee(
                            fontSize: 14,
                            color: const Color(0xffFFFFFF),
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 25,
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
      padding: const EdgeInsets.only(left: 16, right: 16, bottom: 2),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.07,
            alignment: Alignment.centerLeft,
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
            child: Padding(
              padding: const EdgeInsets.only(left: 16, right: 16, bottom: 0),
              child: TextFormField(
                inputFormatters: [
                  LengthLimitingTextInputFormatter(11),
                ],
                // controller: phoneNumController,
                keyboardType: TextInputType.emailAddress,
                style: const TextStyle(color: Colors.black87),
                decoration: InputDecoration(
                    border: InputBorder.none,
                    // ignore: unnecessary_const
                    prefixIcon: const Icon(
                      Icons.person,
                      color: Color(0xff53e88b),
                      size: 20,
                    ),
                    hintText: 'Anamwp . . |',
                    hintStyle: GoogleFonts.aBeeZee(
                        fontSize: 14.0, color: const Color(0xffA7ADBC))), //A7ADBC
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget email() {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16, bottom: 2),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.07,
            alignment: Alignment.centerLeft,
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
            child: Padding(
              padding: const EdgeInsets.only(left: 16, right: 16, bottom: 0),
              child: TextFormField(
                inputFormatters: [
                  LengthLimitingTextInputFormatter(11),
                ],
                // controller: phoneNumController,
                keyboardType: TextInputType.emailAddress,
                style: const TextStyle(color: Colors.black87),
                decoration: InputDecoration(
                    border: InputBorder.none,
                    // ignore: unnecessary_const
                    // prefixIcon: const Icon(
                    //   Icons.email_outlined,
                    //   color: Color(0xff53e88b),
                    //   size: 20,
                    // ),
                    hintText: 'Email',
                    hintStyle: GoogleFonts.aBeeZee(
                        fontSize: 14.0,
                        color: const Color(0xffA7ADBC))), //A7ADBC
              ),
            ),
          )
        ],
      ),
    );
  }
}
