import 'package:flutter/material.dart';

Container kartuProfil() {
  return Container(
    height: 71,
    padding: EdgeInsets.all(12),
    decoration: BoxDecoration(
      color: Color.fromARGB(255, 241, 242, 246),
      // color: Colors.black,
      borderRadius: const BorderRadius.all(Radius.circular(100)),
    ),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Expanded(
          child: Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 8),
                    height: 45,
                    width: 45,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(100),
                      child: Image.asset(
                        'assets/images/noImage.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Suanto Taji',
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
                            height: 1.171875,
                            fontSize: 22.0,
                            fontFamily: 'Cabin',
                            fontWeight: FontWeight.w600,
                            color: Color.fromARGB(255, 254, 202, 87),
                          ),
                        ),
                        Container(
                          height: 30,
                          width: 75,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              border: Border.all(
                                width: 2,
                                color: Color.fromARGB(255, 254, 202, 87),
                              )),
                          child: Center(
                              child: Text(
                            'Ikuti',
                            style: const TextStyle(
                              height: 1.171875,
                              fontSize: 14.0,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400,
                              color: Color.fromARGB(255, 170, 170, 170),
                            ),
                          )),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          'Koki - ',
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
                            height: 1.171875,
                            fontSize: 14.0,
                            fontStyle: FontStyle.italic,
                            fontFamily: 'Cabin',
                            fontWeight: FontWeight.w400,
                            color: Color.fromARGB(255, 143, 143, 143),
                          ),
                        ),
                        Text(
                          '1k+ ',
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
                            height: 1.171875,
                            fontSize: 14.0,
                            fontStyle: FontStyle.italic,
                            fontFamily: 'Cabin',
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          'resep dibuat - ',
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
                            height: 1.171875,
                            fontSize: 14.0,
                            fontStyle: FontStyle.italic,
                            fontFamily: 'Cabin',
                            fontWeight: FontWeight.w400,
                            color: Color.fromARGB(255, 143, 143, 143),
                          ),
                        ),
                        Text(
                          '3k+ ',
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
                            height: 1.171875,
                            fontSize: 14.0,
                            fontStyle: FontStyle.italic,
                            fontFamily: 'Cabin',
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          'pengikut',
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
                            height: 1.171875,
                            fontSize: 14.0,
                            fontStyle: FontStyle.italic,
                            fontFamily: 'Cabin',
                            fontWeight: FontWeight.w400,
                            color: Color.fromARGB(255, 143, 143, 143),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
