import 'package:flutter/material.dart';

class MenuBottom extends StatefulWidget {
  int activepage;
  MenuBottom(this.activepage);

  @override
  State<MenuBottom> createState() => _MenuBottomState();
}

class _MenuBottomState extends State<MenuBottom> {
  int _selectedItem = 0;
  void getLink(index){
    setState(() {
      _selectedItem = index;
    });
    if (index == 0) {
      Navigator.pushReplacementNamed(context, '/dashboard');
    }
    else if(index == 1){
      Navigator.pushReplacementNamed(context, '/bioskop');
    }
    else if(index == 2){
      Navigator.pushReplacementNamed(context, '/tiket');
    }
    else if(index == 3){
      Navigator.pushReplacementNamed(context, '/tiketku');
    }
  }
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      selectedItemColor: Colors.black,
      unselectedItemColor: Colors.grey,
      currentIndex: widget.activepage,
      onTap: getLink,
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home'
          ),
           BottomNavigationBarItem(
          icon: Icon(Icons.movie),
          label: 'Bioskop'
          ),
           BottomNavigationBarItem(
          icon: Icon(Icons.airplane_ticket),
          label: 'Tiket'
          ),
           BottomNavigationBarItem(
          icon: Icon(Icons.airplane_ticket),
          label: 'My Ticket'
          ),
      ]);
  }
}