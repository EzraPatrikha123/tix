import 'package:flutter/material.dart';

class City extends StatelessWidget {
  const City({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
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
                );
  }
}