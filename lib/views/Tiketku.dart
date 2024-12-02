import 'package:flutter/material.dart';
import 'package:tix_id/widgets/bottomnavigation.dart';
import 'package:tix_id/widgets/city.dart';

class Myticket extends StatelessWidget {
  const Myticket({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> image = [
      "assets/CowboyBebop.jpg",
      "assets/CIA.jpeg",
      "assets/ambalabu.jpg"
    ];

    List<String> Title = ["Cowboy Bebop", "CIA","Ambalabu"];

    List<String> Age = ["D17+", "R13+","M16+"];

    List<String> genre = ["Action, Adventure", "Action, Adventure","Horror, Action"];

    List<String> rating = ["9.5", "9.3","9.0"];

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
      body: Column(
        children: [
          City(),
          Column(
            children: List.generate(image.length, (index) {
              return Container(
                decoration: BoxDecoration(
                    border: Border.all(width: 1, color: Colors.grey),
                    borderRadius: BorderRadius.circular(10)),
                margin: const EdgeInsets.all(10),
                padding: const EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      image[index],
                      width: index == 1 ? 200 : 190,
                    ),
                    SizedBox(width: 10),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 10),
                        Text(Title[index],
                            style: const TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold)),
                        const SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              padding: const EdgeInsets.all(2),
                              decoration: BoxDecoration(
                                  color:
                                      const Color.fromARGB(255, 180, 180, 180),
                                  borderRadius: BorderRadius.circular(5)),
                              child: Text(
                                Age[index],
                                style: const TextStyle(fontSize: 10),
                              ),
                            ),
                            SizedBox(width: 5),
                            Text(
                              genre[index],
                              style: const TextStyle(fontSize: 10),
                            ),
                          ],
                        ),
                        const SizedBox(height: 10),
                        Row(
                          children: [
                            const Icon(Icons.star,
                                color: Colors.yellow, size: 14),
                            const Icon(Icons.star,
                                color: Colors.yellow, size: 14),
                            const Icon(Icons.star,
                                color: Colors.yellow, size: 14),
                            const Icon(Icons.star,
                                color: Colors.yellow, size: 14),
                            const Icon(Icons.star,
                                color: Colors.yellow, size: 14),
                            const SizedBox(width: 4),
                            Text(
                              rating[index],
                              style: const TextStyle(fontSize: 14),
                            ),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              );
            }),
          )
        ],
      ),
      bottomNavigationBar: MenuBottom(3),
    );
  }
}
