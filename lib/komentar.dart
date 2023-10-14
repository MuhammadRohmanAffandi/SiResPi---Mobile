import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:http/http.dart' as http;
import 'package:sirespi/ip/localhost.dart';

Container komenDanReview(String id_resep) {

  // Future<List> getData() async {

  //     final response = await http.post(
  //       Uri.parse(
  //         "http://${Localhost().getLocalhost()}/sirespi/get_rating.php"
  //       ),
  //       body: {"id_resep": id_resep}
  //     );
  //     final body = jsonDecode(response.body);
  //     // print(body);
  //     Map<String, dynamic> map = body;
  //     List<dynamic> data = map['data'];
  //     // print(data);
  //     // print(data[1]['0'][0]['name']);
  //     // print(data[0]["name"]);
  //     // print(data);
  //     print('RATING');
  //     print(data[2][0]);
  //     return data;
  //   }

  //   double getRating() {
  //   var data = getData();

  //   return ;
  // }
  return Container(
    color: Color.fromARGB(255, 241, 242, 246),
    padding: EdgeInsets.all(15),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Komentar dan Review',
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(
            height: 1.171875,
            fontSize: 24.0,
            fontFamily: 'Cabin',
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
        ),
        Row(
          children: [
            RatingBar.builder(
              initialRating: 4,
              minRating: 1,
              direction: Axis.horizontal,
              allowHalfRating: true,
              itemSize: 20,
              itemCount: 5,
              itemPadding: EdgeInsets.symmetric(horizontal: 2.0),
              itemBuilder: (context, _) => Icon(
                Icons.star,
                color: Colors.amber,
              ),
              onRatingUpdate: (rating) {
                print(rating);
              },
            ),
            SizedBox(
              width: 8,
            ),
            Text(
              '3.5',
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                height: 1.171875,
                fontSize: 14.0,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w400,
                color: Colors.black,
              ),
            ),
            Text(
              ' / 5',
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                height: 1.171875,
                fontSize: 14.0,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w400,
                color: Color.fromARGB(255, 143, 143, 143),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 5,
        ),
        for (var i = 0; i < 3; i++)
          Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 8),
                    height: 40,
                    width: 40,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(100),
                      child: Image.asset(
                        'assets/images/noImage.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 45,
                          child: ListView(
                            children: [
                              RichText(
                                text: TextSpan(
                                  children: <TextSpan>[
                                    TextSpan(
                                      text: "User: ",
                                      style: TextStyle(
                                        height: 1.171875,
                                        fontSize: 14.0,
                                        fontFamily: 'Cabin',
                                        fontWeight: FontWeight.w400,
                                        color: Color.fromARGB(255, 99, 99, 99),
                                      ),
                                    ),
                                    TextSpan(
                                      text:
                                          "laksjf lakdj flakd fal; dfa;l df;al kfalkej flkjf lakj dflka d;lfkja ;ldkfj jfoiej faghwj glkjafklj ewoif aoijdfklaj ekjoiwejg oiaioej fklaje faoiewjfoiawj efaklnf lakj ij wklvjaklej fwjfoiwej ioaj skdfjlakj fkwlejfoiajv iakjfkl jewlkfj aoejowijf klajd fkljawoeifj alkej foawjef lkajdoflfwj eivj asd",
                                      style: TextStyle(
                                        height: 1.171875,
                                        fontSize: 14.0,
                                        fontFamily: 'Cabin',
                                        fontWeight: FontWeight.w400,
                                        color:
                                            Color.fromARGB(255, 143, 143, 143),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        RichText(
                          overflow: TextOverflow.fade,
                          text: TextSpan(
                            children: <TextSpan>[
                              TextSpan(
                                text: "31 like - 18-10-2021, 4.5",
                                style: TextStyle(
                                  height: 1.171875,
                                  fontSize: 14.0,
                                  fontFamily: 'Cabin',
                                  fontWeight: FontWeight.w400,
                                  color: Color.fromARGB(255, 99, 99, 99),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 8,
              ),
            ],
          ),
        Text(
          'lihat lainnya',
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(
            decoration: TextDecoration.underline,
            height: 1.171875,
            fontSize: 14.0,
            fontFamily: 'Cabin',
            fontWeight: FontWeight.w400,
            color: Colors.black,
          ),
        ),
      ],
    ),
  );
}
