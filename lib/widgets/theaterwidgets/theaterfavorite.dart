import 'package:flutter/material.dart';

class FavoriteTheater extends StatelessWidget {
  const FavoriteTheater({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 10,
          ),
          Icon(
            Icons.location_city,
            size: 60,
            color: const Color(0xFF001a3c),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Tandai bioskop Favoritmu!",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.7,
                child: Text(
                  "Bioskop favoritmu akan berada paling atas pada daftar dan pada jadwal film.",
                  overflow: TextOverflow.clip,
                  style: TextStyle(fontSize: 13),
                ),
              ),
              SizedBox(height: 10),
              Container(
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                    border: Border.all(color: const Color(0xFF001a3c)),
                    borderRadius: BorderRadius.circular(20)),
                child: Text(
                  "Mengerti",
                  style: TextStyle(
                      color: const Color(0xFF001a3c),
                      fontSize: 10,
                      fontWeight: FontWeight.bold),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
