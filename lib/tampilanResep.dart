import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:sirespi/cartuProfil.dart';
import 'package:sirespi/detailResep.dart';
import 'package:sirespi/ip/localhost.dart';
import 'package:sirespi/kartuResep.dart';
import 'package:sirespi/komentar.dart';
import 'package:http/http.dart' as http;

class tampilanResep extends StatefulWidget {
  const tampilanResep({Key? key, required this.id}) : super(key: key);
  final String id;
  @override
  _tampilanResepState createState() => _tampilanResepState(id: id);
}

class _tampilanResepState extends State<tampilanResep> {
  bool _isBookmark = true;
  String id;
  _tampilanResepState({required this.id});

  void _tombolBookmark () {
    setState(() {
      if (_isBookmark) {
        _isBookmark = false;
      } else {
        _isBookmark = true;
      }
    });
  }

  Widget build(BuildContext context) {
    Future<List> getData() async {
      final response = await http.post(
          Uri.parse(
              "http://${Localhost().getLocalhost()}/sirespi/get_detail_resep.php"),
          body: {"id": id});
      final body = jsonDecode(response.body);
      // print(body);
      Map<String, dynamic> map = body;
      List<dynamic> data = map["data"];
      // print(data);
      // print(data[1]['0'][0]['name']);
      // print(data[0]["name"]);
      // print(data);
      print(data);
      return data;
    }

    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.white,
              shadowColor: Colors.black.withOpacity(0.5),
              leading: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.arrow_back_ios,
                    color: Colors.black,
                  )),
              actions: [
                IconButton(
                    onPressed: () {
                      _tombolBookmark();
                    },
                    icon: _isBookmark
                        ? Icon(
                            Icons.bookmark_add_outlined,
                            color: Color.fromARGB(255, 254, 202, 87),
                          )
                        : Icon(
                            Icons.bookmark_add_outlined,
                            color: Colors.black,
                          )),
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.more_vert,
                      color: Colors.black,
                    ))
              ],
            ),
            body: SizedBox(
              height: 700,
              child: FutureBuilder<List>(
                  future: getData(),
                  builder: (context, snapshot) {
                    if (snapshot.hasError) print(snapshot.error);

                    return snapshot.hasData
                        ? new Center(child: ItemList(list: snapshot.data!))
                        : new Center(child: Text('loading...'));
                  }),
            )));
  }
}

class ItemList extends StatelessWidget {
  List list;
  ItemList({required this.list});

  @override
  Widget build(BuildContext context) {
    return tampilan(list[0]['name'], list[0]['deskripsi'], list[0]['0'],
        list[0]['1'], list[0]['2'], list[0]['id']);
  }

  // @override
  // Widget build(BuildContext context) {

  //   return ListView.builder(
  //       itemCount: list == null ? 0 : list.length,
  //       itemBuilder: (context, i) {
  //         return tampilan(list[i]['name'], list[i]['deskripsi']);
  //       });
  // }
}

Column tampilan(String nama, String deskripsi, List alat, List bahan, List cara,
    String id_resep) {
  return Column(
    children: [
      Expanded(
        child: Container(
          padding: const EdgeInsets.only(right: 10, left: 10),
          child: ListView(
            children: [
              SizedBox(height: 8),
              Container(width: 10, child: gambarResep()),
              SizedBox(height: 8),
              namaDanKategori(nama),
              SizedBox(height: 8),
              kartuProfil(),
              SizedBox(height: 8),
              Container(width: 10, child: deskripsiResep(nama, deskripsi)),
              SizedBox(height: 8),
              Container(
                width: 10,
                child: alatDanBahan(alat, bahan, cara),
              ),
              SizedBox(height: 8),
              komenDanReview(id_resep),
              SizedBox(height: 8),
              Container(
                  padding: EdgeInsets.only(top: 20, right: 15, left: 15),
                  color: Color.fromARGB(255, 241, 242, 246),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Resep lainnya',
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                          height: 1.171875,
                          fontSize: 24.0,
                          fontFamily: 'Cabin',
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(height: 5),
                      rekomendasiResep(),
                    ],
                  )),

              // Container(
              //   color: Colors.black,
              //   height: 200,
              // )
            ],
          ),
        ),
      ),
      Container(
        padding: EdgeInsets.only(top: 8, right: 15, left: 15, bottom: 8),
        height: 60,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        child: Row(
          children: [
            Container(
              width: 60,
              decoration: BoxDecoration(
                border: Border.all(
                    width: 2, color: Color.fromARGB(255, 143, 143, 143)),
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              child: Center(
                child: Icon(
                  Icons.chat,
                  color: Color.fromARGB(255, 143, 143, 143),
                ),
              ),
            ),
            SizedBox(
              width: 8,
            ),
            Expanded(
                child: Container(
              height: double.infinity,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 254, 202, 87),
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              child: Center(
                child: Text(
                  'Beli',
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    height: 1.171875,
                    fontSize: 18.0,
                    fontFamily: 'Cabin',
                    fontWeight: FontWeight.w400,
                    color: Color.fromARGB(255, 143, 143, 143),
                  ),
                ),
              ),
            )),
          ],
        ),
      )
    ],
  );
}
