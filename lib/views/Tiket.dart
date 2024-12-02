import 'package:flutter/material.dart';
import 'package:tix_id/widgets/bottomnavigation.dart';

class Ticket extends StatelessWidget {
  const Ticket({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Film Bioskop",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: DefaultTabController(
        length: 2,
        child: Column(
          children: [
            const TabBar(
              indicatorColor: Colors.black,
              tabs: [
                Tab(text: "Sedang Tayang"),
                Tab(text: "Akan Datang"),
              ],
            ),
            Expanded(
              child: TabBarView(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16, vertical: 8
                    ),
                    child: _buildMovieGrid(),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,vertical: 8
                    ),
                    child: _buildMovieGrid2(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: MenuBottom(2),
    );
  }

  Widget _buildMovieGrid() {
    List<Map<String, String>> movies = [
      {
        "image": 'assets/ambalabu.jpg',
        "title": "AMBALABU?!",
        "rating": "9.2",
        "genre": "Drama, Keluarga"
      },
      {
        "image": 'assets/CowboyBebop.jpg',
        "title": "COWBOY BEBOP THE MOVIE",
        "rating": "9.0",
        "genre": "Horror"
      },
      {
        "image": 'assets/TIX_ID.jpg',
        "title": "TIX ID?!1!1!",
        "rating": "9.0",
        "genre": "Action, Adventure"
      },
      {
        "image": 'assets/CIA.jpeg',
        "title": "CIA Woman? Woah",
        "rating": "9.3",
        "genre": "Action, Adventure"
      },
    ];

    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        childAspectRatio: 0.8,
      ),
      itemCount: movies.length,
      itemBuilder: (context, index) {
        return Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.asset(
                    movies[index]['image']!,
                    fit: BoxFit.fill,
                    width: double.infinity,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      movies[index]['title']!,
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    const SizedBox(height: 5),
                    Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(2),
                          decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 180, 180, 180),
                              borderRadius: BorderRadius.circular(5)),
                          child: const Text(
                            "R13+",
                            style: TextStyle(fontSize: 12),
                          ),
                        ),
                        const SizedBox(width: 5),
                        Text(
                          movies[index]['genre']!,
                          style:
                              const TextStyle(color: Colors.grey, fontSize: 12),
                        ),
                      ],
                    ),
                    const SizedBox(height: 5),
                    Row(
                      children: [
                        const Icon(Icons.star, color: Colors.yellow, size: 14),
                        const Icon(Icons.star, color: Colors.yellow, size: 14),
                        const Icon(Icons.star, color: Colors.yellow, size: 14),
                        const Icon(Icons.star, color: Colors.yellow, size: 14),
                        const Icon(Icons.star, color: Colors.yellow, size: 14),
                        const SizedBox(width: 4),
                        Text(
                          movies[index]['rating']!,
                          style: const TextStyle(fontSize: 14),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  Widget _buildMovieGrid2() {
    List<Map<String, String>> movies = [
      {
        "image": 'assets/TIX_ID.jpg',
        "title": "Coba TIX",
        "rating": "9.2",
        "genre": "Drama, Keluarga"
      },
      {
        "image": 'assets/CowboyBebop.jpg',
        "title": "COWBOY BEBOP THE MOVIE",
        "rating": "9.0",
        "genre": "Horror"
      },
      {
        "image": 'assets/ambalabu.jpg',
        "title": "AMBALABU",
        "rating": "9.0",
        "genre": "Action, Adventure"
      },
      {
        "image": 'assets/CIA.jpeg',
        "title": "CIA OR FBI IDK",
        "rating": "9.3",
        "genre": "Action, Adventure"
      },
    ];

    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        childAspectRatio: 0.8,
      ),
      itemCount: movies.length,
      itemBuilder: (context, index) {
        return Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.asset(
                    movies[index]['image']!,
                    fit: BoxFit.fill,
                    width: double.infinity,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      movies[index]['title']!,
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    const SizedBox(height: 5),
                    Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(2),
                          decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 180, 180, 180),
                              borderRadius: BorderRadius.circular(5)),
                          child: const Text(
                            "R13+",
                            style: TextStyle(fontSize: 12),
                          ),
                        ),
                        const SizedBox(width: 5),
                        Text(
                          movies[index]['genre']!,
                          style:
                              const TextStyle(color: Colors.grey, fontSize: 12),
                        ),
                      ],
                    ),
                    const SizedBox(height: 5),
                    Row(
                      children: [
                        const Icon(Icons.star, color: Colors.yellow, size: 14),
                        const Icon(Icons.star, color: Colors.yellow, size: 14),
                        const Icon(Icons.star, color: Colors.yellow, size: 14),
                        const Icon(Icons.star, color: Colors.yellow, size: 14),
                        const Icon(Icons.star, color: Colors.yellow, size: 14),
                        const SizedBox(width: 4),
                        Text(
                          movies[index]['rating']!,
                          style: const TextStyle(fontSize: 14),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
