import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:sirespi/ip/localhost.dart';
import 'package:sirespi/kartuResep.dart';
import 'package:sirespi/search_bar.dart';
import 'package:http/http.dart' as http;

class makanan extends StatefulWidget {
  const makanan({Key? key}) : super(key: key);
  @override
  _makananState createState() => _makananState();
}

class _makananState extends State<makanan> {
  Future<List> getData() async {
    final response = await http.get(Uri.parse(
        "http://${Localhost().getLocalhost()}/sirespi/get_makanan.php"));
    final body = jsonDecode(response.body);
    // print(body);
    Map<String, dynamic> map = body;
    List<dynamic> data = map["data"];
    // print(data);
    // print(data[1]['0'][0]['name']);
    // print(data[0]["name"]);
    // print(data);
    return data;
  }

  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Container(
              margin: const EdgeInsets.only(left: 15, right: 15),
              child: SizedBox(
                height: 700,
                child: FutureBuilder<List>(
                    future: getData(),
                    builder: (context, snapshot) {
                      if (snapshot.hasError) print(snapshot.error);

                      return snapshot.hasData
                          ? new Center(child: ItemList(list: snapshot.data!))
                          : new Center(child: Text('loading...'));
                    }),
              ),
              // cartuResep('assets/images/noImage.png', 'Test test',
              //     ['Makan Siang', 'Basah'], 97, true),
              // cartuResep('assets/images/noImage.png', 'Test test',
              //     ['Makan Siang', 'Basah'], 97, true),
              // cartuResep('assets/images/noImage.png', 'Test test',
              //     ['Makan Siang', 'Basah'], 97, true),
              // cartuResep('assets/images/noImage.png', 'Test test',
              //     ['Makan Siang', 'Basah'], 97, true),
              // cartuResep('assets/images/noImage.png', 'Test test',
              //     ['Makan Siang', 'Basah'], 97, true),
            ),
          ),
          const search(),
        ],
      ),
    ));
  }
}

class ItemList extends StatelessWidget {
  List list;
  ItemList({required this.list});

  @override
  Widget build(BuildContext context) {
    Column atas(String name, String harga, String id) {
      return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        const SizedBox(
          height: 100,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              margin: const EdgeInsets.only(left: 15),
              child: const Text(
                'Apa kamu lapar ?',
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  height: 1.171875,
                  fontSize: 25.0,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(right: 15),
              height: 43,
              width: 60,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 254, 202, 87),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(
                      Icons.shopping_bag_outlined,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      '2',
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        height: 1.171875,
                        fontSize: 14.0,
                        fontFamily: 'Cabin',
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                  ]),
            )
          ],
        ),
        const SizedBox(height: 20),
        const Text(
          '1240 Jenis Masakan Tersedia Di SiRespi',
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            height: 1.171875,
            fontSize: 12.0,
            fontFamily: 'Abhaya',
            fontWeight: FontWeight.w400,
            color: Color.fromARGB(255, 141, 141, 141),
          ),
        ),
        const SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: const [
            Text(
              'Makanan Populer',
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                height: 1.171875,
                fontSize: 24.0,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
            ),
            Text(
              'Lihat Semua',
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                height: 1.171875,
                fontSize: 12.0,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w400,
                color: Color.fromARGB(255, 254, 202, 87),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        rekomendasiResep(),
        const SizedBox(
          height: 20,
        ),
        const Text(
          'Makanan Untukmu',
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            height: 1.171875,
            fontSize: 24.0,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        cartuResep('assets/images/noImage.png', name,
                  ['Makan Siang', 'Basah'], 97, true, harga, id)
      ]);
    }

    return ListView.builder(
        itemCount: list == null ? 0 : list.length,
        itemBuilder: (context, i) {
          return i == 0
              ? atas(list[i]['0'][0]['name'], list[i]['harga'], list[i]['id'])
              : cartuResep('assets/images/noImage.png', list[i]['0'][0]['name'],
                  ['Makan Siang', 'Basah'], 97, true, list[i]['harga'], list[i]['id']);
        });
  }
}
