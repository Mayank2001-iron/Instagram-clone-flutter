import 'package:flutter/material.dart';

class AccountTab1 extends StatelessWidget {
  const AccountTab1({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: 5,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3), 
      itemBuilder: (content,index){
        return Padding(
          padding:EdgeInsets.all(2),
          child: InkWell(
            onTap: () {
              print("Success");
            },
            child: Container(
              
              // color: Colors.blue[100]),
              decoration: BoxDecoration(
                image: DecorationImage(
                        image: AssetImage('images/5.jpg'),
                        fit: BoxFit.cover
                      )
              ),
          ), 
          ),
        );
      }
      );
  }
}