import 'package:flutter/material.dart';
import 'package:flutter_application_1/reelInfo.dart';
import 'package:flutter_application_1/reelsAction.dart';
import 'package:flutter_application_1/reelsBody.dart';

class Reels extends StatelessWidget {
  const Reels({super.key});

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        centerTitle: false,
        title: Text(
          'Reels',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 25,
          ),),
        actions: [
          IconButton(
          onPressed: (){},
          icon:Icon(Icons.camera_alt_outlined),
          )
        ],
      ),
      body: PageView.builder(
        scrollDirection: Axis.vertical,
        itemCount: 10,
        itemBuilder: (context, index) {
        return Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/4.jpg'),
              fit: BoxFit.contain,
            ),
          ),
          child: Stack(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Flexible(
                        flex: 10,
                        child: ReelsInfo(),
                      ),
                      Flexible(
                        flex: 0,
                        child:Container(
                          height: 290,
                          // color: Colors.purple,
                          child: ReelsAction(),
                        ), 
                        ),
                    ],
                  ),
                ],
              ),
            ],
          ),
         
        
          
        );
        
        },
      )
    
    );
  }
}