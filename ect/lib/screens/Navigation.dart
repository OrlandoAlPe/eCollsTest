import 'package:ect/screens/Favs.dart';
import 'package:ect/screens/Home.dart';
import 'package:ect/screens/profileConfig.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Navigation extends StatefulWidget {
  const Navigation({ Key? key }) : super(key: key);

  @override
  _NavigationState createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  int _currentIndex=0;
  final List<Widget>_Screens=[
    Home(),
    Favorites(),
    ProfileConfig()
  ];
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: tapBar,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.star), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: '')
        ],
         selectedIconTheme: IconThemeData(color: Colors.black, size: 35),
         elevation: 0,
      ),
      
      body: _Screens[_currentIndex],
    );
  }
   void tapBar(int index)=>{
    setState((){
      _currentIndex = index;
    })
  };
}