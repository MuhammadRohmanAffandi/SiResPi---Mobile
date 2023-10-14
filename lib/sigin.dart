import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sirespi/home.dart';
import 'package:sirespi/ip/localhost.dart';
import 'package:sirespi/makanan.dart';
import 'package:sirespi/signUp.dart';
import 'package:http/http.dart' as http;

class Signin extends StatelessWidget {
  const Signin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget _noAcc = Flexible(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      textDirection: TextDirection.ltr,
      children: const [
        Text(
          'No Account ?',
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            height: 1.171875,
            fontSize: 13.0,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w400,
            color: Color.fromARGB(255, 141, 141, 141),
          ),
        ),
        Text(
          'Sign up',
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            height: 1.171875,
            fontSize: 13.0,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w400,
            color: Color.fromARGB(255, 0, 137, 236),
          ),
        ),
      ],
    ));

    Widget _barisSatu = Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      textDirection: TextDirection.ltr,
      children: [welcomText(), _noAcc],
    );

    Widget _barisEmpat = input("Masukan Username", 0, 0, 20, 5, false);

    Widget _barisLima = input("Masukan Password", 0, 0, 5, 5, true);

    Widget _barisEnam = Align(
      alignment: Alignment.topRight,
      child: Container(
          margin: const EdgeInsets.only(right: 15, bottom: 30),
          child: const Text(
            '''Forgot Password''',
            overflow: TextOverflow.visible,
            textAlign: TextAlign.left,
            style: TextStyle(
              height: 1.171875,
              fontSize: 11.0,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w400,
              color: Color.fromARGB(255, 66, 133, 244),
            ),
          )),
    );

    String? username, password;
    final _key = new GlobalKey<FormState>();

    login() async {
      final response = await http.post(
        Uri.parse(
          "http://${Localhost().getLocalhost()}/sirespi/login2.php"
        ),
        body: {"name": username, "password": password}
      );
      final data = jsonDecode(response.body);
      print(data);
      if (data['status'] == 1) {
        Get.off(const Home());
      }
    }

    check() {
      final form = _key.currentState;
      if (form!.validate()) {
        form.save();
        // print("$username, $password");
        login();
      }
    }

    

    return MaterialApp(
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
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          _barisSatu,
                          barisDua("Sign in"),
                          Flexible(
                              child: Form(
                            key: _key,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                barisTiga("Sign in"),
                                Container(
                                  margin: EdgeInsets.only(bottom: 5),
                                  child: const Text(
                                    'Masukan Username',
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                        height: 1.171875,
                                        fontSize: 14.0,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w400,
                                        color: Colors.black),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(bottom: 20),
                                  child: TextFormField(
                                      validator: (e) {
                                        if (e!.isEmpty) {
                                          return "masukan username";
                                        }
                                      },
                                      onSaved: (e) => username = e!,
                                      enableSuggestions: false,
                                      autocorrect: false,
                                      decoration: InputDecoration(
                                          focusedBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                            borderSide: const BorderSide(
                                                width: 1.0,
                                                color: Color.fromARGB(
                                                    255, 251, 188, 5)),
                                          ),
                                          enabledBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                            borderSide: BorderSide(
                                                width: 1.0,
                                                color: Colors.grey[700]!),
                                          ),
                                          hintText: 'Masukan User name',
                                          hintStyle: const TextStyle(
                                              height: 1.171875,
                                              fontSize: 12.0,
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.w400,
                                              color: Colors.black))),
                                ),
                                Container(
                                  margin: EdgeInsets.only(bottom: 5),
                                  child: Text(
                                    'Masukan Password',
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
                                  margin: EdgeInsets.only(bottom: 3),
                                  child: TextFormField(
                                      validator: (e) {
                                        if (e!.isEmpty) {
                                          return "masukan password";
                                        }
                                      },
                                      onSaved: (e) => password = e!,
                                      obscureText: true,
                                      enableSuggestions: false,
                                      autocorrect: false,
                                      decoration: InputDecoration(
                                          focusedBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                            borderSide: const BorderSide(
                                                width: 1.0,
                                                color: Color.fromARGB(
                                                    255, 251, 188, 5)),
                                          ),
                                          enabledBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                            borderSide: BorderSide(
                                                width: 1.0,
                                                color: Colors.grey[700]!),
                                          ),
                                          hintText: 'Masukan Password',
                                          hintStyle: const TextStyle(
                                              height: 1.171875,
                                              fontSize: 12.0,
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.w400,
                                              color: Colors.black))),
                                ),
                                _barisEnam,
                                Container(
                                  // margin: const EdgeInsets.only(left: 10, right: 10),
                                  width: double.infinity,
                                  height: 55.0,
                                  child: RaisedButton(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    onPressed: () {
                                      check();
                                    },
                                    color:
                                        const Color.fromARGB(255, 251, 188, 5),
                                    child: Text(
                                      'Sign in',
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
                                )
                              ],
                            ),
                          )),
                        ],
                      ),
                      // ),
                    ),
                  ),
                ),
              ])),
        ),
      ),
    );
  }
}
