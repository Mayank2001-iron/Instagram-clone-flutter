import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ReelsAction extends StatelessWidget {
  const ReelsAction({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        // height: 250,
        // width: 50,
        // color: Colors.pink,
        child:Column(
          children: [
            IconButton(
              onPressed:(){}, 
              icon: Icon(Icons.favorite_border),
              ),
            SizedBox(height: 5,),
            Text('Likes',),
            SizedBox(height: 5,),
            IconButton(
              onPressed: (){}, 
              icon:Icon(Icons.messenger_outline), 
              ),
            SizedBox(height: 5,),
            Text('22',),
            SizedBox(height: 5,),
            IconButton(
              onPressed:(){} , 
              icon:FaIcon(FontAwesomeIcons.paperPlane),
              ),
            SizedBox(height: 5,),
            IconButton(
              onPressed: (){}, 
              icon: Icon(Icons.more_horiz),
              ),
            SizedBox(height: 5,),
    
            Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                border: Border.all(color: Colors.white),
                
                image: DecorationImage(
                  image: AssetImage('images/2.jpg',),
                  fit: BoxFit.cover
                ),
              ),
            ),
    
          ],
          ),
      ),
    );
  }
}