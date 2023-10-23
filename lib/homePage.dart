import 'package:flutter/material.dart';
import 'package:flutter_application_1/account.dart';
import 'package:flutter_application_1/favorite.dart';
import 'package:flutter_application_1/UserHome.dart';
import 'package:flutter_application_1/reels.dart';
import 'package:flutter_application_1/search.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  int _selectedIndex=0;
  void _navigateBottomNavBar(int index)
  {
    setState(() {
    _selectedIndex=index;
    });
  }

  final List<Widget> _children=[
    Center(child:UserHome()),
    Center(child:search()),
    Center(child:Reels()),
    Center(child:Favorite()),
    Center(child:Account()),
  ];


  Widget build(BuildContext context) {
    return Scaffold(

      body: _children[_selectedIndex],

      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Theme.of(context).colorScheme.background,
        currentIndex: _selectedIndex,
        onTap:_navigateBottomNavBar,
        type: BottomNavigationBarType.fixed,
        items: [
                BottomNavigationBarItem(icon: Icon(Icons.home_outlined,weight: 0.1),label: 'home'),
                BottomNavigationBarItem(icon: Icon(Icons.search_outlined),label:'Explore'),
                BottomNavigationBarItem(icon: Icon(Icons.video_call_outlined),label:'Reels'),
                BottomNavigationBarItem(icon: Icon(Icons.favorite_border),label:'Favorite'),
                BottomNavigationBarItem(icon: Icon(Icons.person_outline_rounded),label:'Account'),
              ],
      ),

    );
  }
}