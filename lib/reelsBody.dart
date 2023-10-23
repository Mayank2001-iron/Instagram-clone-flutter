import 'package:flutter/material.dart';

class reelsBody extends StatelessWidget {
  const reelsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 200,
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/4.jpg'),
                fit: BoxFit.contain,
              ),
            ),
          )
        ],
      ),
    );
  }
}