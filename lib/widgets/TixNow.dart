import 'package:flutter/material.dart';

class Berita extends StatelessWidget {
  String textimage;
  String text1;
  String text2;
  Berita ({required this.textimage,required this.text1,required this.text2});

  @override
  Widget build(BuildContext context) {
    return  Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Container(
                              width: 100,
                              height: 100,
                              decoration: BoxDecoration(
                                image: DecorationImage(image: AssetImage(textimage),
                                fit: BoxFit.fill
                                )
                              ),
                            ), // Gambar Sebelah kiri
                            SizedBox(
                              width: 5,
                            ),
                            Column(
                              children: [
                                Text(text1),
                                Text(text2),
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
                      ); // Berita 1.
  }
}