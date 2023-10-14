import 'package:flutter/material.dart';

import 'dart:math' as math;

class notivikasi extends StatelessWidget {
  const notivikasi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Notivikasi',
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              height: 1.171875,
              fontSize: 18.0,
              fontFamily: 'Cabin',
              fontWeight: FontWeight.w400,
              color: Colors.white,
            ),
          ),
          backgroundColor: Color.fromARGB(255, 254, 202, 87),
          shadowColor: Colors.black.withOpacity(0.5),
          actions: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.chat,
                  color: Colors.white,
                ))
          ],
        ),
        body: Column(
          children: [
            Container(
              height: 70,
              decoration: BoxDecoration(
                  // color: Colors.red,
                  border: Border(
                      bottom: BorderSide(
                width: 1,
                color: Color.fromARGB(255, 143, 143, 143),
              ))),
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 20, right: 20),
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      border: Border.all(
                          width: 1, color: Color.fromARGB(255, 143, 143, 143)),
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: Icon(
                      Icons.storefront,
                      color: Color.fromARGB(255, 143, 143, 143),
                    ),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Jualan',
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
                            height: 1.171875,
                            fontSize: 14.0,
                            fontFamily: 'Cabin',
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                          ),
                        ),
                        RichText(
                          overflow: TextOverflow.ellipsis,
                          text: TextSpan(
                            children: <TextSpan>[
                              TextSpan(
                                text: "Rohman ",
                                style: TextStyle(
                                  height: 1.171875,
                                  fontSize: 12.0,
                                  fontFamily: 'Cabin',
                                  fontWeight: FontWeight.w400,
                                  color: Color.fromARGB(255, 49, 185, 204),
                                ),
                              ),
                              TextSpan(
                                text: "membeli ",
                                style: TextStyle(
                                  height: 1.171875,
                                  fontSize: 12.0,
                                  fontFamily: 'Cabin',
                                  fontWeight: FontWeight.w400,
                                  color: Color.fromARGB(255, 143, 143, 143),
                                ),
                              ),
                              TextSpan(
                                text: "Wedang Jahe Original",
                                style: TextStyle(
                                  height: 1.171875,
                                  fontSize: 12.0,
                                  fontFamily: 'Cabin',
                                  fontWeight: FontWeight.w400,
                                  color: Color.fromARGB(255, 254, 202, 87),
                                ),
                              ),
                              TextSpan(
                                text: "mu, kirim secepatnya pesanan yang masuk",
                                style: TextStyle(
                                  height: 1.171875,
                                  fontSize: 12.0,
                                  fontFamily: 'Cabin',
                                  fontWeight: FontWeight.w400,
                                  color: Color.fromARGB(255, 143, 143, 143),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 60,
                    child: Transform.rotate(
                      angle: 270 * math.pi / 180,
                      child: Center(
                        child: Icon(
                          Icons.arrow_forward_ios,
                          color: Color.fromARGB(255, 143, 143, 143),
                          size: 24.0,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              height: 70,
              decoration: BoxDecoration(
                  // color: Colors.red,
                  border: Border(
                      bottom: BorderSide(
                width: 1,
                color: Color.fromARGB(255, 143, 143, 143),
              ))),
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 20, right: 20),
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      border: Border.all(
                          width: 1, color: Color.fromARGB(255, 143, 143, 143)),
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: Icon(
                      Icons.shopping_bag_outlined,
                      color: Color.fromARGB(255, 143, 143, 143),
                    ),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Belanja',
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
                            height: 1.171875,
                            fontSize: 14.0,
                            fontFamily: 'Cabin',
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                          ),
                        ),
                        RichText(
                          overflow: TextOverflow.ellipsis,
                          text: TextSpan(
                            children: <TextSpan>[
                              TextSpan(
                                text: "Resep ",
                                style: TextStyle(
                                  height: 1.171875,
                                  fontSize: 12.0,
                                  fontFamily: 'Cabin',
                                  fontWeight: FontWeight.w400,
                                  color: Color.fromARGB(255, 143, 143, 143),
                                ),
                              ),
                              TextSpan(
                                text: "Wedang Jahe Original",
                                style: TextStyle(
                                  height: 1.171875,
                                  fontSize: 12.0,
                                  fontFamily: 'Cabin',
                                  fontWeight: FontWeight.w400,
                                  color: Color.fromARGB(255, 254, 202, 87),
                                ),
                              ),
                              TextSpan(
                                text: "mu direview oleh ",
                                style: TextStyle(
                                  height: 1.171875,
                                  fontSize: 12.0,
                                  fontFamily: 'Cabin',
                                  fontWeight: FontWeight.w400,
                                  color: Color.fromARGB(255, 143, 143, 143),
                                ),
                              ),
                              TextSpan(
                                text: "Rohman",
                                style: TextStyle(
                                  height: 1.171875,
                                  fontSize: 12.0,
                                  fontFamily: 'Cabin',
                                  fontWeight: FontWeight.w400,
                                  color: Color.fromARGB(255, 49, 185, 204),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 60,
                    child: Transform.rotate(
                      angle: 270 * math.pi / 180,
                      child: Center(
                        child: Icon(
                          Icons.arrow_forward_ios,
                          color: Color.fromARGB(255, 143, 143, 143),
                          size: 24.0,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              height: 70,
              decoration: BoxDecoration(
                  // color: Colors.red,
                  border: Border(
                      bottom: BorderSide(
                width: 1,
                color: Color.fromARGB(255, 143, 143, 143),
              ))),
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 20, right: 20),
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      border: Border.all(
                          width: 1, color: Color.fromARGB(255, 143, 143, 143)),
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: Icon(
                      Icons.article_rounded,
                      color: Color.fromARGB(255, 143, 143, 143),
                    ),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Resep',
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
                            height: 1.171875,
                            fontSize: 14.0,
                            fontFamily: 'Cabin',
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                          ),
                        ),
                        RichText(
                          overflow: TextOverflow.ellipsis,
                          text: TextSpan(
                            children: <TextSpan>[
                              TextSpan(
                                text: "Belanjaan anda dari toko ",
                                style: TextStyle(
                                  height: 1.171875,
                                  fontSize: 12.0,
                                  fontFamily: 'Cabin',
                                  fontWeight: FontWeight.w400,
                                  color: Color.fromARGB(255, 143, 143, 143),
                                ),
                              ),
                              TextSpan(
                                text: "Kedai Nusantara ",
                                style: TextStyle(
                                  height: 1.171875,
                                  fontSize: 12.0,
                                  fontFamily: 'Cabin',
                                  fontWeight: FontWeight.w400,
                                  color: Color.fromARGB(255, 49, 185, 204),
                                ),
                              ),
                              TextSpan(
                                text: "telah diberikan kepada kurir",
                                style: TextStyle(
                                  height: 1.171875,
                                  fontSize: 12.0,
                                  fontFamily: 'Cabin',
                                  fontWeight: FontWeight.w400,
                                  color: Color.fromARGB(255, 143, 143, 143),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 60,
                    child: Transform.rotate(
                      angle: 270 * math.pi / 180,
                      child: Center(
                        child: Icon(
                          Icons.arrow_forward_ios,
                          color: Color.fromARGB(255, 143, 143, 143),
                          size: 24.0,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              height: 70,
              decoration: BoxDecoration(
                  // color: Colors.red,
                  border: Border(
                      bottom: BorderSide(
                width: 1,
                color: Color.fromARGB(255, 143, 143, 143),
              ))),
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 20, right: 20),
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      border: Border.all(
                          width: 1, color: Color.fromARGB(255, 143, 143, 143)),
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: Icon(
                      Icons.account_circle_rounded,
                      color: Color.fromARGB(255, 143, 143, 143),
                    ),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Akun',
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
                            height: 1.171875,
                            fontSize: 14.0,
                            fontFamily: 'Cabin',
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                          ),
                        ),
                        RichText(
                          overflow: TextOverflow.ellipsis,
                          text: TextSpan(
                            children: <TextSpan>[
                              TextSpan(
                                text: "Rohman ",
                                style: TextStyle(
                                  height: 1.171875,
                                  fontSize: 12.0,
                                  fontFamily: 'Cabin',
                                  fontWeight: FontWeight.w400,
                                  color: Color.fromARGB(255, 49, 185, 204),
                                ),
                              ),
                              TextSpan(
                                text: "mulai mengikuti Anda",
                                style: TextStyle(
                                  height: 1.171875,
                                  fontSize: 12.0,
                                  fontFamily: 'Cabin',
                                  fontWeight: FontWeight.w400,
                                  color: Color.fromARGB(255, 143, 143, 143),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 60,
                    child: Transform.rotate(
                      angle: 270 * math.pi / 180,
                      child: Center(
                        child: Icon(
                          Icons.arrow_forward_ios,
                          color: Color.fromARGB(255, 143, 143, 143),
                          size: 24.0,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
