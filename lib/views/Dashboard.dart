import 'package:flutter/material.dart';
import 'package:tix_id/widgets/TixNow.dart';
import 'package:tix_id/widgets/bottomnavigation.dart';

class Dashboard extends StatelessWidget {
  final List<String> images = [
    'assets/CowboyBebop.jpg',
    'assets/CIA.jpeg',
    'assets/ambalabu.jpg',
  ];
   late final intialPage;
     Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(56.0), 
        child: Container(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.5),
                spreadRadius: 4,
                blurRadius: 8,
                offset: Offset(0, -10)
              )
            ]
          ), //Ini Box Shadow :)
          child: AppBar(
            backgroundColor: Colors.white,
            title: Container(
              width: 350,
              height: 35,
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(20),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Row(
                  children: [
                    Icon(Icons.search,
                    size: 30,
                    color: Colors.black,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text('Cari di TIX ID', 
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.grey[400]
                      ),
                    )
                  ],
                ),
              ),
            ), //Kontainer Title :)
            actions: [
               Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Icon(Icons.account_circle_outlined,
                color: Colors.black,
                size: 30,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Icon(Icons.notifications_outlined,
                color: Colors.black,
                size: 30,
                ),
              ),
            ], //Action untuk Icon Notifikasi dan Icon profile
          ),
        )
        ),
      backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Container(
            color: Colors.grey[50],
            child: Column(
              children: [
                Container(
                  width: 525,
                  height: 45,
                  color: Colors.grey[100],
                  child: Row(
                    children: [
                      Padding(padding: EdgeInsets.only(left: 8),
                        child: Icon(Icons.location_on_sharp,
                        color: Colors.grey,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text('JAKARTA',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black87
                      ),
                      ), //Text Jakarta
                      Padding(padding: EdgeInsets.only(left: 350),
                        child: Icon(Icons.keyboard_arrow_down_sharp,
                        color: Colors.grey,
                        ),
                      )
                    ], // Children dari ROW untuk Lokasi
                  ),
                ), //Kontainer Lokasi
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 150,
                  child: PageView.builder(
                    controller: PageController(viewportFraction: 1),
                    itemCount: images.length,
                    itemBuilder: (context, index) {
                      final actualIndex = index % images.length;
                      return Image.asset(
                        images[actualIndex],
                        fit: BoxFit.fill,
                        width: double.infinity,
                      );
                     } //Item Builder untuk Imagenya
                    ),  //PageView untuk poster film :)
                ), //Kontainer untuk page View
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 125,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/TIX_ID.jpg'),
                      fit: BoxFit.fill
                      )
                  ),
                ), //Kontainer untuk iklan dibawah ADS
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 515,
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                  child: Stack(
                    children: [ Container(
                      child: Column(
                        children: [
                          Row( 
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(padding: EdgeInsets.only(left: 9),
                              child: Text('Sedang Tayang',
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                              ),
                              ),
                              ), //Padding untuk Sedang Tayang
                              Padding(
                                padding: EdgeInsets.only(right: 9),
                                child: Row(
                                  children: [
                                    Text('Semua'),
                                    SizedBox(
                                      width: 3,
                                    ),
                                    Icon(Icons.arrow_circle_right)
                                  ],
                                ),
                                ) //Padding untuk Semua dan Icon
                            ],
                          ), //Row untuk Text Sedang Tayang & Semua
                          SizedBox(
                            height: 15,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                width: 125,
                                height: 30,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.blue,
                                    width: 1
                                  ),
                                  borderRadius: BorderRadius.circular(20)
                                ),
                                child: Center(
                                  child: Text('Semua Film',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.blue
                                  ),
                                  ),
                                ),
                              ), //Terpilih Semua Film
                              Container(
                                width: 60,
                                height: 30,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: const Color.fromARGB(255, 216, 214, 214),
                                    width: 1
                                  ),
                                  borderRadius: BorderRadius.circular(20)
                                ),
                                child: Center(
                                  child: Text('XXI',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold
                                  ),
                                  ),
                                ),
                              ),
                              Container(
                                width: 60,
                                height: 30,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: const Color.fromARGB(255, 216, 214, 214),
                                    width: 1
                                  ),
                                  borderRadius: BorderRadius.circular(20)
                                ),
                                child: Center(
                                  child: Text('CGV',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold
                                  ),
                                  ),
                                ),
                              ),
                              Container(
                                width: 90,
                                height: 30,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: const Color.fromARGB(255, 216, 214, 214),
                                    width: 1
                                  ),
                                  borderRadius: BorderRadius.circular(20)
                                ),
                                child: Center(
                                  child: Text('Cinepolis',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold
                                  ),
                                  ),
                                ),
                              ),
                              Container(
                                width: 110,
                                height: 30,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: const Color.fromARGB(255, 216, 214, 214),
                                    width: 1
                                  ),
                                  borderRadius: BorderRadius.circular(20)
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Icon(Icons.favorite_border_outlined,
                                    color: Colors.red[600],
                                    size: 20,
                                    ),
                                    Text('Watchlist',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold
                                    ),
                                    )
                                  ],
                                ), //Row Icon & Text Watchlist
                              ), 
                            ],
                          ), //Row Pilihan-Pilihan
                          SizedBox(
                            height: 30,
                          ),
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: [
                                Container(
                                  width: 220,
                                  height: 300,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(Radius.circular(20)),
                                    image: DecorationImage(image: AssetImage('ambalabu.jpg'),
                                    fit: BoxFit.fill
                                    )
                                  ),
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Container(
                                  width: 220,
                                  height: 300,
                                  decoration: BoxDecoration(
                                    color: const Color.fromARGB(255, 30, 35, 95),
                                    borderRadius: BorderRadius.all(Radius.circular(20))
                                  ),
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        child: Container(
                                          height: 250,
                                          decoration: BoxDecoration(
                                            image: DecorationImage(
                                              image: AssetImage('assets/CowboyBebop.jpg'),
                                              fit: BoxFit.fill
                                              ),
                                              borderRadius: BorderRadius.all(Radius.circular(20))
                                          ),
                                        )),
                                      Positioned(
                                        bottom: 13,
                                        left: 65,
                                        child: Text('BELI TIKET',
                                        style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 19,
                                        color: Colors.yellow[700]
                                        ),
                                        )
                                        )
                                    ],
                                  )
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Container(
                                  width: 220,
                                  height: 300,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(Radius.circular(20)),
                                    image: DecorationImage(image: AssetImage('CIA.jpeg'),
                                    fit: BoxFit.fill
                                    )
                                  ),
                                ),
                              ],
                            ), //Row Beli Tiket Film
                          ), //Scroll Horizontal Row Beli Tiket
                          SizedBox(
                            height: 20,
                          ),
                          Center(
                            child: Column(
                              children: [
                                Text('COWBOY BEBOP THE MOVIE',
                                style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold
                                ),
                                ),
                                Text('Film ini dapat rating ⭐9.2 dari penonton lho!',
                                  style: TextStyle(
                                    color: Colors.blue[900]
                                  ),
                                ),
                                Text('Harus ditonton nih!',
                                  style: TextStyle(
                                    color: Colors.blue[900],
                                    fontWeight: FontWeight.bold
                                  ),
                                ),
                              ],
                            ), //Column Text Rating
                          ), //Center untuk Text Rating
                        ] // Children Column
                      ), //Column untuk Text dan Pilihan dan Film

                    ), //Container Warna Abu
                  ] // Children Stack
                  ), //Stack untuk Warna abu

                ), //Kontainer untuk Seluruh Tayang & Film
              Container(
                width: MediaQuery.of(context).size.width,
                height: 350,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      offset: Offset(0, 0),
                      blurRadius: 1,
                      spreadRadius: 0
                    )
                  ]
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(padding: EdgeInsets.only(left: 10),
                        child: Text('Spotlight',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20
                        ),
                        ),
                      ), //Padding text Spotlight
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Text('Berita hiburan terhangat untuk Anda!',
                        style: TextStyle(
                          color: Colors.grey[400]
                        ),
                        ),
                      ), //Padding untuk text ke-2
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                Container(
                                  width: 400,
                                  height: 200,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(image: AssetImage('assets/CowboyBebop.jpg'),
                                    fit: BoxFit.cover
                                    )
                                  ),
                                ),
                                Text('TIX ID Box Office (11-17 November)',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold
                                ),
                                )
                              ],
                            ), //Column 1
                             SizedBox(
                              width: 25,
                            ),
                            Column(
                              children: [
                                Container(
                                  width: 400,
                                  height: 200,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(image: AssetImage('assets/CowboyBebop.jpg'),
                                    fit: BoxFit.cover
                                    )
                                  ),
                                ),
                                Text('TIX ID Box Office (11-17 November)',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold
                                ),
                                )
                              ],
                            ), //Column 2
                            SizedBox(
                              width: 25,
                            ),
                            Column(
                              children: [
                                Container(
                                  width: 400,
                                  height: 200,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(image: AssetImage('assets/CowboyBebop.jpg'),
                                    fit: BoxFit.cover
                                    )
                                  ),
                                ),
                                Text('TIX ID Box Office (11-17 November)',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold
                                ),
                                )
                              ],
                            ), //Column 3
                          ],
                        ),
                      )
                    ], //Children Column Spotlight
                  ), //Column untuk Spotlight
                ), //Padding Column
              ),// Container untuk Spotlight
              Container(
                width: MediaQuery.of(context).size.width,
                height: 450,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      offset: Offset(0, 0),
                      blurRadius: 1,
                      spreadRadius: 0
                    )
                  ]
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(padding: EdgeInsets.only(left: 9),
                              child: Text('TIX Now', 
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20
                              ),
                              ),
                            ), //Padding TIX Now
                            Padding(padding: EdgeInsets.only(right: 9),
                              child: Row(
                                children: [
                                  Text('Semua'),
                                  SizedBox(
                                    width: 3,
                                  ),
                                  Icon(Icons.arrow_circle_right)
                                ],
                              ), //Row Semua & Icon
                            ) //Padding Semua & Icon
                          ],
                        ), //Row TIX dan Semua
                      ), //Untuk ROW
                      Padding(padding: EdgeInsets.all(8),
                      child: Text('Update berita terbaru seputar dunia film',
                      style: TextStyle(
                        color: Colors.grey[400]
                      ),
                      ),
                      ), //Padding text
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Container(
                              width: 100,
                              height: 100,
                              decoration: BoxDecoration(
                                image: DecorationImage(image: AssetImage('assets/CIA.jpeg'),
                                fit: BoxFit.fill
                                )
                              ),
                            ), // Gambar Sebelah kiri
                            SizedBox(
                              width: 5,
                            ),
                            Column(
                              children: [
                                Text('Too much action! Action film baru Dari'),
                                Text('Raden Arya....'),
                                SizedBox(height: 10),
                                Row(
                                  children: [
                                    Padding(padding: EdgeInsets.only(left:9),
                                    child: Row(
                                      children: [
                                        Icon(Icons.remove_red_eye,
                                        size: 15,
                                        ),
                                        Text('50'),
                                        SizedBox(width: 10),
                                        Icon(Icons.thumb_up,
                                        size: 15,
                                        ),
                                        Text('0')
                                      ],
                                    ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left:230),
                                      child: Text('2 Jam lalu'),
                                    )
                                  ],
                                ),
                              ],
                            )
                          ],
                        ),
                      ),// Berita 1.
                      Container(
                        width: 525,
                        height: 0.5,
                        color: Colors.grey,
                      ),
                        Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Container(
                              width: 100,
                              height: 100,
                              decoration: BoxDecoration(
                                image: DecorationImage(image: AssetImage('assets/ambalabu.jpg'),
                                fit: BoxFit.fill
                                )
                              ),
                            ), // Gambar Sebelah kiri
                            SizedBox(
                              width: 5,
                            ),
                            Column(
                              children: [
                                Text('"We Live in Time Drama" Drama'),
                                Text('Romansa Baru Dari Andrew Garf..'),
                                SizedBox(height: 10),
                                Row(
                                  children: [
                                    Padding(padding: EdgeInsets.only(left:9),
                                    child: Row(
                                      children: [
                                        Icon(Icons.remove_red_eye,
                                        size: 15,),
                                        Text('50'),
                                        SizedBox(width: 10),
                                        Icon(Icons.thumb_up,
                                        size: 15,),
                                        Text('0')
                                      ],
                                    ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left:230),
                                      child: Text('2 Jam lalu'),
                                    )
                                  ],
                                ),
                              ],
                            )
                          ],
                        ),
                      ), //Berita 2
                      Berita(textimage: 'assets/CowboyBebop.jpg', text1: 'Cowboy Bebop kembali beraksi!', 
                      text2: 'Dibuat oleh Raden Arya...')
                    ], //Children Column
                  ),
                ), //Column Isi
              ) // Container TIX Now

              ], //Children dari Column untuk seluruh badan
            ), //Column untuk Seluruh body/badan
          ),
        ),
        bottomNavigationBar: MenuBottom(0),
    );
  }
}