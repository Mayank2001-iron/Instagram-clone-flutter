import 'package:flutter/material.dart';
import 'package:expandable_text/expandable_text.dart';

class ReelsInfo extends StatelessWidget {
  const ReelsInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
                          height: 170,

                          color: Colors.transparent,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  children: [
                                    Container(
                                      height: 60,
                                      width: 60,
                                      decoration: BoxDecoration(
                                        color: Colors.transparent,
                                        shape: BoxShape.circle,
                                        image: DecorationImage(
                                          image: AssetImage('images/iron.jpg'),
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(12.0),
                                      child: Text('ironMan'),
                                    ),
                                    Container(
                                      color: Colors.transparent,
                                      child: ElevatedButton(
                                        
                                        onPressed: (){}, 
                                        child: Text('Follow',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                        ),
                                        ),
                                        ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: ExpandableText(
                                  'Aveners Assembleeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee',
                                  expandText: 'more',
                                  collapseText: 'less',
                                  expandOnTextTap: true,
                                  collapseOnTextTap: true,
                                  maxLines: 2,
                                  linkColor: Colors.grey,
                                  ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  children:[
                                     Icon(Icons.equalizer_rounded),
                                     Text('Music_Title',),
                                    Icon(Icons.circle,size: 5,),
                                    Text('Orignal audio',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                    
                                    )
                                    ],
                                ),
                              ),

                            ],
                          ),
                        );
  }
}