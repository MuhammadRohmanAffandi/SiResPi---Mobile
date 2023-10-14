import 'package:flutter/material.dart';

class tampilanProfil extends StatelessWidget {
  const tampilanProfil({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Suanto Taji',
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              height: 1.171875,
              fontSize: 18.0,
              fontFamily: 'Cabin',
              fontWeight: FontWeight.w400,
              color: Colors.black,
            ),
          ),
          shadowColor: Colors.black.withOpacity(0),
          backgroundColor: Colors.white,
          leading: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.arrow_back_ios,
                color: Colors.black,
              )),
          actions: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.more_vert,
                  color: Colors.black,
                ))
          ],
        ),
        body: Column(
          children: [
            Container(
                padding: EdgeInsets.all(8),
                // color: Colors.red,
                height: 120,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      padding: EdgeInsets.all(4),
                      margin: EdgeInsets.only(right: 8),
                      height: 80,
                      width: 80,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          border: Border.all(
                            color: Color.fromARGB(255, 254, 202, 87),
                          )),
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
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                children: [
                                  Text(
                                    '1200',
                                    overflow: TextOverflow.ellipsis,
                                    style: const TextStyle(
                                      height: 1.171875,
                                      fontSize: 12.0,
                                      fontFamily: 'Cabin',
                                      fontWeight: FontWeight.w600,
                                      color: Colors.black,
                                    ),
                                  ),
                                  Text(
                                    'Resep',
                                    overflow: TextOverflow.ellipsis,
                                    style: const TextStyle(
                                      height: 1.171875,
                                      fontSize: 12.0,
                                      fontFamily: 'Cabin',
                                      fontWeight: FontWeight.w400,
                                      color: Color.fromARGB(255, 143, 143, 143),
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Text(
                                    '32',
                                    overflow: TextOverflow.ellipsis,
                                    style: const TextStyle(
                                      height: 1.171875,
                                      fontSize: 12.0,
                                      fontFamily: 'Cabin',
                                      fontWeight: FontWeight.w600,
                                      color: Colors.black,
                                    ),
                                  ),
                                  Text(
                                    'Masakan',
                                    overflow: TextOverflow.ellipsis,
                                    style: const TextStyle(
                                      height: 1.171875,
                                      fontSize: 12.0,
                                      fontFamily: 'Cabin',
                                      fontWeight: FontWeight.w400,
                                      color: Color.fromARGB(255, 143, 143, 143),
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Text(
                                    '3000',
                                    overflow: TextOverflow.ellipsis,
                                    style: const TextStyle(
                                      height: 1.171875,
                                      fontSize: 12.0,
                                      fontFamily: 'Cabin',
                                      fontWeight: FontWeight.w600,
                                      color: Colors.black,
                                    ),
                                  ),
                                  Text(
                                    'Pengikut',
                                    overflow: TextOverflow.ellipsis,
                                    style: const TextStyle(
                                      height: 1.171875,
                                      fontSize: 12.0,
                                      fontFamily: 'Cabin',
                                      fontWeight: FontWeight.w400,
                                      color: Color.fromARGB(255, 143, 143, 143),
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Text(
                                    '150',
                                    overflow: TextOverflow.ellipsis,
                                    style: const TextStyle(
                                      height: 1.171875,
                                      fontSize: 12.0,
                                      fontFamily: 'Cabin',
                                      fontWeight: FontWeight.w600,
                                      color: Colors.black,
                                    ),
                                  ),
                                  Text(
                                    'Mengikuti',
                                    overflow: TextOverflow.ellipsis,
                                    style: const TextStyle(
                                      height: 1.171875,
                                      fontSize: 12.0,
                                      fontFamily: 'Cabin',
                                      fontWeight: FontWeight.w400,
                                      color: Color.fromARGB(255, 143, 143, 143),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Container(
                            height: 50,
                            // color: Colors.blue,
                            child: ListView(
                              children: [
                                Text(
                                  'laksjdfl;ajsdflakjsdfl;ajsdf;ljasdlkfj alkdsfj lk;asjd fkl;asjdf klaj ksadjfpoiwauer ipoajsdfkjasdfjioasj dflkajsd flkaj foiweuroalskdfjklasdnfjkandvkk asjdfoiauroiweruioajfkl;jaslkdf aksldjl;fkajsfoipweuriouwerkjaklfj amnvklanv,man.alkkdfjlka;sjeoiwejr a dfklajdf',
                                  overflow: TextOverflow.fade,
                                  style: const TextStyle(
                                    height: 1.171875,
                                    fontSize: 12.0,
                                    fontFamily: 'Cabin',
                                    fontWeight: FontWeight.w400,
                                    color: Color.fromARGB(255, 143, 143, 143),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                )),
            DefaultTabController(
                length: 2, // length of tabs
                initialIndex: 0,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Container(
                        child: TabBar(
                          indicatorColor: Color.fromARGB(255, 254, 202, 87),
                          labelColor: Color.fromARGB(255, 254, 202, 87),
                          unselectedLabelColor:
                              Color.fromARGB(255, 143, 143, 143),
                          tabs: [
                            Tab(
                              icon: Icon(Icons.shopping_cart_rounded),
                            ),
                            Tab(
                              icon: Icon(Icons.article_rounded),
                            ),
                          ],
                        ),
                      ),
                      Container(
                          height: 200, //height of TabBarView
                          padding: EdgeInsets.only(right: 8, left: 8),
                          decoration: BoxDecoration(
                              border: Border(
                                  top: BorderSide(
                                      color: Color.fromARGB(255, 254, 202, 87),
                                      width: 0.5))),
                          child: TabBarView(children: <Widget>[
                            Column(
                              children: [
                                SizedBox(height: 8),
                                Container(
                                  padding: const EdgeInsets.only(
                                      right: 15, left: 15),
                                  width: double.infinity,
                                  height: 50,
                                  decoration: const BoxDecoration(
                                    color: Color.fromARGB(255, 254, 202, 87),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10)),
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: const [
                                      Text("Tambah Makanan",
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
                                SizedBox(height: 8),
                                Container(
                                  padding: const EdgeInsets.only(
                                      right: 15, left: 15),
                                  width: double.infinity,
                                  height: 50,
                                  decoration: const BoxDecoration(
                                    color: Color.fromARGB(255, 254, 202, 87),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10)),
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: const [
                                      Text("Makanan saya",
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
                                SizedBox(height: 8),
                                Container(
                                  padding: const EdgeInsets.only(
                                      right: 15, left: 15),
                                  width: double.infinity,
                                  height: 50,
                                  decoration: const BoxDecoration(
                                    color: Color.fromARGB(255, 254, 202, 87),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10)),
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: const [
                                      Text("Pesanan Masuk",
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
                              ],
                            ),
                            Column(
                              children: [
                                SizedBox(height: 8),
                                Container(
                                  padding: const EdgeInsets.only(
                                      right: 15, left: 15),
                                  width: double.infinity,
                                  height: 50,
                                  decoration: const BoxDecoration(
                                    color: Color.fromARGB(255, 254, 202, 87),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10)),
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: const [
                                      Text("Tambah Resep",
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
                                SizedBox(height: 8),
                                Container(
                                  padding: const EdgeInsets.only(
                                      right: 15, left: 15),
                                  width: double.infinity,
                                  height: 50,
                                  decoration: const BoxDecoration(
                                    color: Color.fromARGB(255, 254, 202, 87),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10)),
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: const [
                                      Text("Resep saya",
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
                                SizedBox(height: 8),
                                Container(
                                  padding: const EdgeInsets.only(
                                      right: 15, left: 15),
                                  width: double.infinity,
                                  height: 50,
                                  decoration: const BoxDecoration(
                                    color: Color.fromARGB(255, 254, 202, 87),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10)),
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: const [
                                      Text("Boomark resep",
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
                              ],
                            ),
                          ]))
                    ])),
          ],
        ),
      ),
    );
  }
}
