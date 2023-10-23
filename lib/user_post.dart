import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class UserPosts extends StatefulWidget {
  const UserPosts({super.key});

  @override
  State<UserPosts> createState() => _UserPostsState();
}

class _UserPostsState extends State<UserPosts> {
  bool _isLike=false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        
        Padding(
          padding:const EdgeInsets.all(16.0),
          child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            InkWell(
                              onTap: () {
                                print("Success");
                              },
                              child: Container(
                                width: 40,
                                height: 40,
                                decoration: BoxDecoration(
                                  color: Theme.of(context).colorScheme.secondary,
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                    image: AssetImage('images/batman2.jpg'),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                          
                        
                            SizedBox(
                              width: 10,
                            ),
                            InkWell(
                              onTap: () {
                                print("Success");
                              },
                              child: Text('batman_theNightMare',
                              style: TextStyle(fontWeight: FontWeight.bold),)),
                            ],
                          ),
                           InkWell(
                            onTap: () {
                              print("Success");
                            },
                            child: Icon(Icons.more_vert)
                            ),
                          ]
                    ),
               ) ,
              InkWell(
                onDoubleTap: () {
                  _isLike=!_isLike;
                  setState(() {
                    
                  });
                  print("Success");
                },
                child: Container(
                
                  height: 300,
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.secondary,
                    image: DecorationImage(
                      image: AssetImage('images/batman.jpg'),
                      fit:BoxFit.cover
                    ),
                    ),
                ),
              ),

                    
              Padding(
                padding: const EdgeInsets.all(6.0),
                child: Row(
                  mainAxisAlignment:MainAxisAlignment.spaceBetween ,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(4, 0, 8, 0),
                          child:IconButton(
                            onPressed:(){
                              _isLike=!_isLike;
                              setState(() {
                                
                              });
                            }, 
                            icon:_isLike?Icon(Icons.favorite,color: Colors.red,):Icon(Icons.favorite_border), )
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
                          child: InkWell(onTap: () {
                            print("Success");
                          },child: FaIcon(FontAwesomeIcons.comment)),
                        ),
                        
                        Padding(
                          padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
                          child: InkWell(onTap: () {
                            print("Success");
                          },child: FaIcon(FontAwesomeIcons.paperPlane)),
                        ),
                      ],
                    ),
                    InkWell(onTap:() {
                      print("Success");
                    },child: FaIcon(FontAwesomeIcons.bookmark)),
                  ],
                ),
              ),


        Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(14.0),
              child: Text('Liked by Veronca and 50 others'),
            ),
          ],
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(14, 0, 14, 14),
              child: Container(
                child: RichText
                (
                  
                  text:TextSpan(
                    children: [
                      TextSpan(
                        text: 'I turn dirt thy throwing into riches till in filthy',
                        style: TextStyle(fontWeight: FontWeight.bold
                        ),
                      ),
                      TextSpan(
                        text: 'I turn dirt thy throwing into riches till in filthy',
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}