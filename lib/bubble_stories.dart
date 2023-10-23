import 'package:flutter/material.dart';


class BubbleStories extends StatelessWidget {
  final String text;
  BubbleStories({required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          InkWell(
            onTap: () {
              print("Success");
            },
            child: Container(
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.secondary,
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage('images/2.jpg'),
                  fit :BoxFit.cover
                ),
                ),
            ),
          ),
          Text(text),
        ],
      ),
    
      );
  }
}