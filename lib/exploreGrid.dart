import 'package:flutter/material.dart';

class ExploreGrid extends StatelessWidget {
  const ExploreGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: 20,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3), 
      itemBuilder: (context,index){
        return Padding(
          padding:const EdgeInsets.all(1.0),
          child: InkWell(
            onTap: () {
              print("Success");
            },
            child: Container(
              // color: Colors.grey,
              decoration: BoxDecoration(
                image:DecorationImage(
                  image: AssetImage('images/3.jpg'),
                  fit: BoxFit.cover
                ), 
                ),
            ),
          ),
          );
      },
      );
  }
}