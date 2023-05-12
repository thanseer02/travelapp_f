import 'package:flutter/material.dart';
import 'package:travelapp/attraction.dart';
import 'package:travelapp/home.dart';
import 'package:travelapp/hotels.dart';
import 'package:travelapp/profile.dart';
class nav extends StatefulWidget {
   nav({Key? key}) : super(key: key);

  @override
  State<nav> createState() => _navState();
}

class _navState extends State<nav> {
  int current_index=0;
  List travel=[
    home(),
    attraction(),
    hotels(),
    profile(),

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: travel[current_index],
       bottomNavigationBar:BottomNavigationBar(
         selectedItemColor: Colors.teal,
         unselectedIconTheme: IconThemeData(color: Colors.grey),
         selectedIconTheme: IconThemeData(color: Colors.teal),
         currentIndex:current_index,
         onTap: (index){
           setState(() {
             current_index=index;
           });
         },
         items: [
        BottomNavigationBarItem(icon: Icon(Icons.home,),label: 'home'),
        BottomNavigationBarItem(icon: Icon(Icons.location_on,),label: 'Attraction'),
           BottomNavigationBarItem(icon: Icon(Icons.local_hotel,),label: 'Hotels'),
           BottomNavigationBarItem(icon: Icon(Icons.person_sharp,),label: 'Profile'),





         ],),
    );
  }
}
