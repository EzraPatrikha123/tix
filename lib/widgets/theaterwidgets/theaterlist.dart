import 'package:flutter/material.dart';

class TheaterList extends StatelessWidget {
  const TheaterList({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> Theaters = [
      "AEON MALL JGC CGV",
      "AEON MALL TANJUNG BARAT XXI",
      "AGORA MALL IMAX",
      "AGORA MALL PREMIERE",
      "AGORA MALL XXI",
      "ARION XXI",
      "ARTHA GADING XXI",
      "BASSURA XXI"
    ];

    return Column(
      children: List.generate(8, (index) {
        return Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          height: 50,
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(
                color: Colors.grey,
                width: 0.5,
              ),
            ),
          ),
          child: Row(
            children: [
              Icon(
                Icons.star_border_rounded,
                color: Colors.grey,
              ),
              Text(Theaters[index]),
              Spacer(),
              Icon(
                Icons.arrow_right,
                color: Colors.grey,
              )
            ],
          ),
        );
      }),
    );
  }
}
