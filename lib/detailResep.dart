import 'package:flutter/material.dart';

import 'dart:math' as math;
namaDanKategori(String nama) {
  return Container(
    height: 70,
    padding: EdgeInsets.all(9),
    decoration: BoxDecoration(
      color: Color.fromARGB(255, 241, 242, 246),
      // color: Colors.black,
      borderRadius: const BorderRadius.all(Radius.circular(10)),
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              nama,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                height: 1.171875,
                fontSize: 14.0,
                fontFamily: 'Cabin',
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
            ),
            Row(
                // children: listJenis
                //     .map((item) =>
                children: [
                  Text(
                    'Makan Siang  -  Basah  -',
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      height: 1.171875,
                      fontSize: 12.0,
                      fontFamily: 'Abhaya',
                      fontWeight: FontWeight.w400,
                      color: Color.fromARGB(255, 143, 143, 143),
                    ),
                  )
                ]
                //     )
                // .toList()
                ),
            Text(
              '97% Orang Menyukai Resep Ini',
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                height: 1.171875,
                fontSize: 12.0,
                fontFamily: 'Abhaya',
                fontWeight: FontWeight.w400,
                color: Color.fromARGB(255, 49, 185, 204),
              ),
            )
          ],
        ),
        Row(children: [
          Icon(
            Icons.thumb_up_outlined,
            color: Color.fromARGB(255, 143, 150, 152),
            size: 24.0,
          ),
          SizedBox(
            width: 5,
          ),
          Transform.rotate(
            angle: 180 * math.pi / 180,
            child: Icon(
              Icons.thumb_up_outlined,
              color: Color.fromARGB(255, 143, 150, 152),
              size: 24.0,
            ),
          ),
        ])
      ],
    ),
  );
}

Container gambarResep() {
  return Container(
    width: double.infinity,
    height: 222,
    child: ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Image.asset(
        'assets/images/noImage.png',
        fit: BoxFit.cover,
      ),
    ),
  );
}

Container deskripsiResep(String nama, String deskripsi) {
  return Container(
    color: Color.fromARGB(255, 241, 242, 246),
    padding: EdgeInsets.all(15),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          child: Text(
            '$nama',
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              height: 1.171875,
              fontSize: 24.0,
              fontFamily: 'Cabin',
              fontWeight: FontWeight.w600,
              color: Colors.black,
            ),
          ),
        ),
        Container(
          child: Text(
            '$deskripsi',
            overflow: TextOverflow.fade,
            style: const TextStyle(
              height: 1.171875,
              fontSize: 14.0,
              fontFamily: 'Cabin',
              fontWeight: FontWeight.w400,
              color: Color.fromARGB(255, 143, 143, 143),
            ),
          ),
        ),
      ],
    ),
  );
  ;
}

Container alatDanBahan(List alat, List bahan, List cara) {
  return Container(
    color: Color.fromARGB(255, 241, 242, 246),
    padding: EdgeInsets.all(15),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Alat:',
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(
            height: 1.171875,
            fontSize: 24.0,
            fontFamily: 'Cabin',
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
        ),
        SizedBox(height: 150, child: ItemList(list: alat)),
        SizedBox(
          height: 5,
        ),
        Text(
          'Bahan:',
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(
            height: 1.171875,
            fontSize: 24.0,
            fontFamily: 'Cabin',
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
        ),
        SizedBox(height: 150, child: ItemList(list: bahan)),
        SizedBox(
          height: 5,
        ),
        Text(
          'Cara Pembuatan:',
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(
            height: 1.171875,
            fontSize: 24.0,
            fontFamily: 'Cabin',
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
        ),
        SizedBox(height: 150, child: ItemListCara(list: cara)),
      ],
    ),
  );
}

class ItemListCara extends StatelessWidget {
  List list;
  ItemListCara({required this.list});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: list == null ? 0 : list.length,
        itemBuilder: (context, i) {
          return Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "${list[i]['langkah']}. ",
                overflow: TextOverflow.fade,
                style: const TextStyle(
                  height: 1.171875,
                  fontSize: 14.0,
                  fontFamily: 'Cabin',
                  fontWeight: FontWeight.w400,
                  color: Color.fromARGB(255, 143, 143, 143),
                ),
              ),
              Expanded(
                child: Text(
                  list[i]['deskripsi_langkah'],
                  overflow: TextOverflow.fade,
                  style: const TextStyle(
                    height: 1.171875,
                    fontSize: 14.0,
                    fontFamily: 'Cabin',
                    fontWeight: FontWeight.w400,
                    color: Color.fromARGB(255, 143, 143, 143),
                  ),
                ),
              )
            ],
          );
        });
  }
}

class ItemList extends StatelessWidget {
  List list;
  ItemList({required this.list});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: list == null ? 0 : list.length,
        itemBuilder: (context, i) {
          return list[i]['alat'] != null
              ? Text(
                  list[i]['alat'],
                  overflow: TextOverflow.fade,
                  style: const TextStyle(
                    height: 1.171875,
                    fontSize: 14.0,
                    fontFamily: 'Cabin',
                    fontWeight: FontWeight.w400,
                    color: Color.fromARGB(255, 143, 143, 143),
                  ),
                )
              : Text(
                  list[i]['bahan'],
                  overflow: TextOverflow.fade,
                  style: const TextStyle(
                    height: 1.171875,
                    fontSize: 14.0,
                    fontFamily: 'Cabin',
                    fontWeight: FontWeight.w400,
                    color: Color.fromARGB(255, 143, 143, 143),
                  ),
                );
        });
  }
}
