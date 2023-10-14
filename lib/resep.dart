import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:sirespi/kartuResep.dart';
import 'package:sirespi/search_bar.dart';
import 'package:http/http.dart' as http;

import 'package:sirespi/ip/localhost.dart';

class resep extends StatefulWidget {
  const resep({Key? key}) : super(key: key);

  @override
  _resepState createState() => _resepState();
}

class _resepState extends State<resep> {
  Future<List> getData() async {
    final response = await http.get(Uri.parse(
        "http://${Localhost().getLocalhost()}/sirespi/get_resep.php"));
    final body = jsonDecode(response.body);
    // print(body);
    Map<String, dynamic> map = body;
    List<dynamic> data = map["data"];
    // print(data[0]["name"]);
    // print(data);
    return data;
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Stack(fit: StackFit.expand, children: [
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Container(
              margin: const EdgeInsets.only(left: 15, right: 15),
              // child: Column(
              //   crossAxisAlignment: CrossAxisAlignment.start,
              //   children: [
              // for (var i = 0; i < data.length;)

              // SizedBox(height: 40, child: ListView(children: [Text('data'), Text('data'), Text('data')],)),
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
              //     ['Makan Siang', 'Basah'], 97, false),
              // cartuResep('assets/images/noImage.png', 'Test test',
              //     ['Makan Siang', 'Basah'], 97, false),
              // cartuResep('assets/images/noImage.png', 'Test test',
              //     ['Makan Siang', 'Basah'], 97, false),
              // cartuResep('assets/images/noImage.png', 'Test test',
              //     ['Makan Siang', 'Basah'], 97, false),
              // cartuResep('assets/images/noImage.png', 'Test test',
              //     ['Makan Siang', 'Basah'], 97, false),
              // ],
            ),
          ),
          // ),
          const search(),
        ]),
      ),
    );
  }
}

class ItemList extends StatelessWidget {
  List list;
  ItemList({required this.list});

  @override
  Widget build(BuildContext context) {
    // print(list);
    Column atas(String nama_makanan, String id) {
      return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        SizedBox(
          height: 80,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: const [
            Text(
              'Resep Populer',
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
        Container(
          padding: const EdgeInsets.only(right: 15, left: 15),
          width: double.infinity,
          height: 50,
          decoration: const BoxDecoration(
            color: Color.fromARGB(255, 254, 202, 87),
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text("Lihat Berdasarkan Kategori",
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    height: 1.171875,
                    fontSize: 14.0,
                    fontFamily: 'Cabin',
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  )),
              Icon(
                Icons.arrow_forward_ios,
                color: Colors.black,
                size: 24.0,
              )
            ],
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        const Text(
          'Resep Untukmu',
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
          height: 15,
        ),
        cartuResep('assets/images/noImage.png', nama_makanan,
            ['Makan Siang', 'Basah'], 97, false, '', id)
      ]);
    }

    return ListView.builder(
        itemCount: list == null ? 0 : list.length,
        itemBuilder: (context, i) {
          // i == 0? atas():Text('hallo');
          return i == 0
              ? atas(list[i]['name'], list[i]['id'])
              : cartuResep('assets/images/noImage.png', list[i]['name'],
                  ['Makan Siang', 'Basah'], 97, false, '', list[i]['id']);
        });
  }
}
