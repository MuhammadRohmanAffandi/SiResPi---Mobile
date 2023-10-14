import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sirespi/tampilanResep.dart';

Container rekomendasiResep() {
  return Container(
    padding: const EdgeInsets.only(top: 8),
    color: const Color.fromARGB(255, 241, 242, 246),
    height: 170,
    child: ListView(
      scrollDirection: Axis.horizontal,
      children: <Widget>[
        resepPilihan('assets/images/noImage.png', 'Test test', 'Nama Pembuat'),
        resepPilihan('assets/images/noImage.png', 'Test test', 'Nama Pembuat'),
        resepPilihan('assets/images/noImage.png', 'Test test', 'Nama Pembuat'),
        resepPilihan('assets/images/noImage.png', 'Test test', 'Nama Pembuat'),
        resepPilihan('assets/images/noImage.png', 'Test test', 'Nama Pembuat'),
        resepPilihan('assets/images/noImage.png', 'Test test', 'Nama Pembuat'),
        resepPilihan('assets/images/noImage.png', 'Test test', 'Nama Pembuat'),
        resepPilihan('assets/images/noImage.png', 'Test test', 'Nama Pembuat'),
        resepPilihan('assets/images/noImage.png', 'Test test', 'Nama Pembuat'),
        resepPilihan('assets/images/noImage.png', 'Test test', 'Nama Pembuat'),
      ],
    ),
  );
}

Container resepPilihan(
  String gambar,
  String judul,
  String pembuat,
) {
  return Container(
    margin: const EdgeInsets.only(right: 5, left: 5),
    width: 111,
    height: 160,
    // color: Colors.red,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.only(bottom: 8),
          width: 111,
          height: 111,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset(
              '$gambar',
              color: null,
              fit: BoxFit.cover,
              colorBlendMode: BlendMode.dstATop,
            ),
          ),
        ),
        // Container(
        //   // color: Colors.red,
        //   margin: const EdgeInsets.only(bottom: 8),
        //   width: 111,
        //   height: 111,
        //   child: ClipRRect(
        //     borderRadius: BorderRadius.circular(20),
        //     child: Image(
        //       image: NetworkImage('$gambar'),
        //       fit: BoxFit.cover,
        //     ),
        //   ),
        //   // Container(
        //   //   child: Image.asset(
        //   //     '$gambar',
        //   //     color: null,
        //   //     fit: BoxFit.cover,
        //   //     colorBlendMode: BlendMode.dstATop,
        //   //   ),
        //   // ),
        // ),
        Text(
          '$judul',
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(
            height: 1.171875,
            fontSize: 16.0,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
        ),
        Text(
          '$pembuat',
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(
            height: 1.171875,
            fontSize: 12.0,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w400,
            color: Color.fromARGB(255, 141, 141, 141),
          ),
        )
      ],
    ),
  );
}

Container cartuResep(String gambar, String judul, List<String> listJenis,
    double persentaseLike, bool isBeli, String harga, String id) {
  return Container(
    margin: EdgeInsets.only(bottom: 10),
    width: double.infinity,
    height: 222,
    padding: EdgeInsets.all(9),
    decoration: BoxDecoration(
      color: Color.fromARGB(255, 241, 242, 246),
      // color: Colors.black,
      borderRadius: const BorderRadius.all(Radius.circular(10)),
    ),
    child: Column(
      children: [
        Expanded(
          child: Container(
            width: double.infinity,
            margin: const EdgeInsets.only(bottom: 8),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                '$gambar',
                color: null,
                fit: BoxFit.cover,
                colorBlendMode: BlendMode.dstATop,
              ),
            ),
          ),
          // child: Container(
          //   width: double.infinity,
          //   margin: const EdgeInsets.only(bottom: 8),
          //   child: ClipRRect(
          //     borderRadius: BorderRadius.circular(10),
          //     child: Image(
          //       image: NetworkImage('$gambar'),
          //       fit: BoxFit.cover,
          //     ),
          //   ),
          // ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '$judul',
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
                    children: listJenis
                        .map((item) => Text(
                              '$item  -  ',
                              overflow: TextOverflow.ellipsis,
                              style: const TextStyle(
                                height: 1.171875,
                                fontSize: 12.0,
                                fontFamily: 'Abhaya',
                                fontWeight: FontWeight.w400,
                                color: Color.fromARGB(255, 143, 150, 152),
                              ),
                            ))
                        .toList()),
                Text(
                  '$persentaseLike% Orang Menyukai Resep Ini',
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
            '$isBeli' == 'false'
                ? Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    textDirection: TextDirection.rtl,
                    children: [
                      Icon(
                        Icons.bookmark_add_outlined,
                        color: Color.fromARGB(255, 143, 150, 152),
                        size: 24.0,
                      ),
                      InkWell(
                        onTap: (){Get.to(tampilanResep(id: id));},
                        child: Container(
                          height: 25,
                          width: 55,
                          margin: EdgeInsets.only(right: 8),
                          decoration: BoxDecoration(
                              color: Color.fromARGB(255, 254, 202, 87),
                              borderRadius: BorderRadius.circular(10)),
                          child: Center(
                            child: Text(
                              'Lihat',
                              overflow: TextOverflow.ellipsis,
                              style: const TextStyle(
                                height: 1.171875,
                                fontSize: 12.0,
                                fontFamily: 'Cabin',
                                fontWeight: FontWeight.w600,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                : Column(children: [
                    Text(
                      '$harga',
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                        height: 1.171875,
                        fontSize: 12.0,
                        fontFamily: 'Abhaya',
                        fontWeight: FontWeight.w400,
                        color: Colors.black,
                      ),
                    ),
                    Container(
                      height: 25,
                      width: 55,
                      // margin: EdgeInsets.only(top: 8),
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 254, 202, 87),
                          borderRadius: BorderRadius.circular(10)),
                      child: Center(
                        child: Text(
                          'Beli',
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
                            height: 1.171875,
                            fontSize: 12.0,
                            fontFamily: 'Cabin',
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ]),
          ],
        )
      ],
    ),
  );
}
