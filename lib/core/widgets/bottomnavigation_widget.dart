import 'package:bookstoreapp/features/favorites/presentation/screens/Favourite_Screen.dart';
import 'package:bookstoreapp/features/home/presentation/screens/home_screen.dart';
import 'package:bookstoreapp/features/profile/presentation/screens/Profile_Screen.dart';
import 'package:flutter/material.dart';

class BottomnavigationWidget extends StatelessWidget {
  const BottomnavigationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Screens[currentindex];
  }
}

int currentindex = 0;

List<Widget> Screens=[
HomeScreen(),
FavouriteScreen(),
ProfileScreen()
];

Widget bottomnav()
{ 
  return BottomNavigationBar(
   
    items: [
      BottomNavigationBarItem(
        icon: Icon(Icons.book_rounded),
        label: "Home"),
      BottomNavigationBarItem(
        icon: Icon(Icons.favorite_border_rounded),
        label: "Favourites"),
      BottomNavigationBarItem(
        icon: Icon(Icons.person_outline_rounded),
        label: "Profile"),
    ],    
     
  );

}