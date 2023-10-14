import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:sirespi/Home.dart';
import 'dart:async';

import 'package:sirespi/sigin.dart';

class Signup extends StatefulWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    //Welcome to

    Widget _haveAn = Flexible(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      textDirection: TextDirection.ltr,
      children: [
        const Text(
          'Have an',
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            height: 1.171875,
            fontSize: 13.0,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w400,
            color: Color.fromARGB(255, 141, 141, 141),
          ),
        ),
        const Text(
          'Account ?',
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            height: 1.171875,
            fontSize: 13.0,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w400,
            color: Color.fromARGB(255, 141, 141, 141),
          ),
        ),
        InkWell(
          onTap: () {
            Get.to(const Signin());
          },
          child: const Text(
            'Sign in',
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              height: 1.171875,
              fontSize: 13.0,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w400,
              color: Color.fromARGB(255, 0, 137, 236),
            ),
          ),
        ),
      ],
    ));

    Widget _barisSatu = Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      textDirection: TextDirection.ltr,
      children: [welcomText(), _haveAn],
    );
    // Widget _barisDua =

    Widget _barisEmpat = Row(
      children: [
        Expanded(
          child: input('User name', 0, 3, 20, 5, false),
        ),
        Expanded(
          child: input('Contact number', 3, 0, 20, 5, false),
        ),
      ],
    );

    Widget _barisLima = input('Masukan password', 0, 0, 20, 5, true);

    Widget _barisEnam = input('Konfirmasi Password', 0, 0, 30, 5, true);

    return GetMaterialApp(
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 251, 188, 5),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: SizedBox(
              height: 780.0,
              width: double.infinity,
              child: Stack(children: [
                //kotak putih melengkung
                SizedBox.expand(
                  child: FractionallySizedBox(
                    widthFactor: 0.85,
                    heightFactor: 0.9,
                    alignment: FractionalOffset.center,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 50.0, horizontal: 25.0),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                            color: Colors.white,
                          ),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(20))),
                      // child: Flexible(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        // mainAxisSize: MainAxisSize.max,
                        children: [
                          // Row(
                          //   children: [
                          //     Expanded(
                          //       child: Container(
                          //           width: double.infinity,
                          //           height: 300,
                          //           color: Colors.red),
                          //     ),
                          //     Container(
                          //           width: 150,
                          //           height: 300,
                          //           color: Colors.blue),
                          //   ],
                          // ),
                          _barisSatu,
                          barisDua("Sign Up"),
                          Flexible(
                              child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              barisTiga("Sign up"),
                              _barisEmpat,
                              _barisLima,
                              _barisEnam,
                              tombol("Sign up")
                            ],
                          )),
                        ],
                      ),
                      // ),
                    ),
                  ),
                )
              ])),
        ),
      ),
    );
  }
}

Expanded welcomText() {
  return Expanded(
      child: Row(children: [
    Flexible(
        child: RichText(
            overflow: TextOverflow.ellipsis,
            text: const TextSpan(
              style: TextStyle(
                height: 1.171875,
                fontSize: 16.0,
                fontFamily: 'Poppins',
              ),
              children: [
                TextSpan(
                    text: '''Welcome to ''',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      color: Colors.black,
                    )),
              ],
            ))),
    const Flexible(
      child: Text(
        'SiRespi',
        overflow: TextOverflow.ellipsis,
        style: TextStyle(
          height: 1.171875,
          fontSize: 16.0,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w700,
          color: Color.fromARGB(255, 251, 188, 5),
        ),
      ),
    ),
  ]));
}

Container barisDua(String label) {
  return Container(
    margin: const EdgeInsets.only(bottom: 50),
    child: Text(
      label,
      overflow: TextOverflow.ellipsis,
      style: const TextStyle(
        height: 1.171875,
        fontSize: 40.0,
        fontFamily: 'Poppins',
        fontWeight: FontWeight.w500,
        color: Colors.black,
      ),
    ),
  );
}

Row barisTiga(String label) {
  FirebaseAuth auth = FirebaseAuth.instance;

  Future<UserCredential> signInWithGoogle() async {
    // Trigger the authentication flow
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

    // Obtain the auth details from the request
    final GoogleSignInAuthentication? googleAuth =
        await googleUser?.authentication;

    // Create a new credential
    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth?.accessToken,
      idToken: googleAuth?.idToken,
    );

    // Once signed in, return the UserCredential
    return await FirebaseAuth.instance.signInWithCredential(credential);
  }

  return Row(
    children: [
      Expanded(
        child: InkWell(
            onTap: () async {
              try {
                //var _credential =
                await signInWithGoogle();
                // tinggal di nagasi kehalaman berikutnya
                // Navigator.push(
                //     // context,
                //     // MaterialPageRoute(
                //     //   builder: (context) => detail(),
                //     // )
                //     );

              } catch (e) {
              }
            },
            child: Container(
                margin: const EdgeInsets.only(bottom: 15, right: 6),
                width: double.infinity,
                height: 55.0,
                decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 232, 241, 255),
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(right: 3),
                      width: 34,
                      height: 34,
                      child: Image.asset(
                        'assets/images/googleLogo.png',
                        color: null,
                        fit: BoxFit.cover,
                        colorBlendMode: BlendMode.dstATop,
                      ),
                    ),
                    Flexible(
                      child: Text(
                        '$label with google',
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                          height: 1.171875,
                          fontSize: 12.0,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                          color: Color.fromARGB(255, 66, 133, 244),
                        ),
                      ),
                    ),
                  ],
                ))),
      ),
      Container(
        margin: const EdgeInsets.only(bottom: 15),
        width: 55.0,
        height: 55.0,
        decoration: const BoxDecoration(
            color: Color.fromARGB(255, 232, 241, 255),
            borderRadius: BorderRadius.all(Radius.circular(10))),
        child: Center(
          child: Container(
              margin: const EdgeInsets.only(right: 3),
              width: 34,
              height: 34,
              child: Image.asset(
                'assets/images/facebookLogo.png',
                color: null,
                fit: BoxFit.cover,
                colorBlendMode: BlendMode.dstATop,
              )),
        ),
      )
    ],
  );
}

Container tombol(String label) {
  return Container(
    // margin: const EdgeInsets.only(left: 10, right: 10),
    width: double.infinity,
    height: 55.0,
    child: RaisedButton(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      onPressed: () {
        return;
      },
      color: const Color.fromARGB(255, 251, 188, 5),
      child: Text(
        label,
        overflow: TextOverflow.ellipsis,
        style: const TextStyle(
          height: 1.171875,
          fontSize: 16.0,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w500,
          color: Colors.white,
        ),
      ),
    ),
  );
}

Column input(String label, double kiri, double kanan, double bawah,
    double tengah, bool pass) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Container(
        margin: EdgeInsets.only(bottom: tengah),
        child: Text(
          label,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(
              height: 1.171875,
              fontSize: 14.0,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w400,
              color: Colors.black),
        ),
      ),
      Container(
        margin: EdgeInsets.only(bottom: bawah, left: kiri, right: kanan),
        child: TextField(
            obscureText: pass,
            enableSuggestions: false,
            autocorrect: false,
            decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: const BorderSide(
                      width: 1.0, color: Color.fromARGB(255, 251, 188, 5)),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: BorderSide(width: 1.0, color: Colors.grey[700]!),
                ),
                hintText: label,
                hintStyle: const TextStyle(
                    height: 1.171875,
                    fontSize: 12.0,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                    color: Colors.black))),
      ),
    ],
  );
}
