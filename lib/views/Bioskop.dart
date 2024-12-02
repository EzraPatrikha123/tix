import 'package:flutter/material.dart';
import 'package:tix_id/widgets/bottomnavigation.dart';
import 'package:tix_id/widgets/city.dart';
import 'package:tix_id/widgets/theaterwidgets/theaterfavorite.dart';
import 'package:tix_id/widgets/theaterwidgets/theaterlist.dart';

class Bioskop extends StatelessWidget {
  const Bioskop({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            City(),
            FavoriteTheater(),
            Divider(
              thickness: 0.5,
              color: Colors.grey,
            ),
            TheaterList(),
          ],
        ),
      ),
      bottomNavigationBar: MenuBottom(1),
    );
  }
}

