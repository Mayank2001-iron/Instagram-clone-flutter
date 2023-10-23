import 'package:flutter/material.dart';
import 'package:flutter_application_1/bubble_stories.dart';
import 'package:flutter_application_1/user_post.dart';
import 'package:flutter_application_1/user_post.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class UserHome extends StatefulWidget {
  UserHome({super.key});

  @override
  State<UserHome> createState() => _UserHomeState();
}

class _UserHomeState extends State<UserHome> {
  final List people=['Superman','ironman','Captain America','batman','Hulk','Arrow','Hackeye'];

  bool _isTheme=true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

        appBar: AppBar(
          elevation: 0,
          backgroundColor: Theme.of(context).colorScheme.background,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Text(
                    'Instagram',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25),
                    ),
                  Icon(Icons.arrow_drop_down),
                ],
              ),
              Row(
                children: [
                  IconButton(
                    onPressed: (){
                      _isTheme=!_isTheme;
                      setState(() {
                        
                      });
                    }, 
                    icon: _isTheme?Icon(Icons.wb_sunny):Icon(Icons.nights_stay),
                    ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: InkWell(onTap:() {
                      print("Success");
                    },child: FaIcon(FontAwesomeIcons.heart),),
                  ),
                  InkWell(onTap: () {
                    print("Success");
                  },child: FaIcon(FontAwesomeIcons.facebookMessenger)),
                ],)
            ],)
         ),


        body:Container(
          color: Theme.of(context).colorScheme.background,
          child:Column(
          children: [
            Container(
              height: 100,
              child:ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: people.length,
                itemBuilder: (context,index){
                  return BubbleStories(text: people[index]);
                },
                )
            
            ),
            Container(
              height: 480,
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: 5,
                itemBuilder: (context, index) {
                  return UserPosts();
                },
               ),
            )
          ],
        ),
    ),


        );
  }
}