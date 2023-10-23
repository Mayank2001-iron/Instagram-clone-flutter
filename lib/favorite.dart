import 'package:flutter/material.dart';
import 'package:flutter_application_1/last7Days.dart';

class Favorite extends StatelessWidget {
  const Favorite({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Theme.of(context).colorScheme.background,
        title: Text('Notification',
        style: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.bold,
          ),
          ),
      ),

      body:Container(
          color: Theme.of(context).colorScheme.background,
      child:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Container(
                    height: 60,
                    width:60,
                    decoration: BoxDecoration(
                      shape:BoxShape.circle,
                      color: Theme.of(context).colorScheme.secondary,
                      image: DecorationImage(
                        image: AssetImage('images/4.jpg'),
                      )
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Folllow Request',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),),
                        SizedBox(height: 5,),
                        Text('Approve or ignore requests',),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('New',
              style: TextStyle(
                fontWeight: FontWeight.normal,
                fontSize: 20,
              ),),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Theme.of(context).colorScheme.secondary,
                      image: DecorationImage(
                        image: AssetImage('images/4.jpg'),
                      )
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'name',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text('requested to follow you.'),
                      ],
                    ),
                  ),
                  // SizedBox(width: 150,),
                  Spacer(),
                  Container(
                    height:50,
                    width:200,
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                                      
                            Expanded(
                              child:InkWell(
                                onTap: () {
                                  print("Success");
                                },
                                child: Container(
                                  child: Center(child: Text('Confirm')),
                                  decoration: BoxDecoration(
                                    color: Colors.blue,
                                    shape:BoxShape.rectangle,
                                    borderRadius:BorderRadius.circular(5),
                                    
                                    ),
                                ),
                              ),
                              ),
                              SizedBox(width: 10,),
                              Expanded(
                              child:InkWell(
                                onTap:(){
                                  print("Success");
                                },
                                child: Container(
                                  child: Center(child: Text('Delete')),
                                  decoration: BoxDecoration(
                                    color: Theme.of(context).colorScheme.secondary,
                                    shape:BoxShape.rectangle,
                                    borderRadius:BorderRadius.circular(5) 
                                    ),
                                ),
                              ),
                              ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  
                ],
              ),
            ),
             
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      // color: Colors.grey,
                      image: DecorationImage(
                        image: AssetImage('images/4.jpg'),
                      )
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      // mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'name',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text('requested to follow you.'),
                      ],
                    ),
                  ),
                  Spacer(),
                  Container(
                    height:50,
                    width:200,
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                                      
                            Expanded(
                              child:InkWell(
                                onTap: ()
                                {
                                  print("Success");
                                },
                                child: Container(
                                  child: Center(child: Text('Confirm')),
                                  decoration: BoxDecoration(
                                    color: Colors.blue,
                                    shape:BoxShape.rectangle,
                                    borderRadius:BorderRadius.circular(5),
                                    
                                    ),
                                ),
                              ),
                              ),
                              SizedBox(width: 10,),
                              Expanded(
                              child:InkWell(
                                onTap: () {
                                  print("Success");
                                },
                                child: Container(
                                  child: Center(child: Text('Delete')),
                                  decoration: BoxDecoration(
                                    color: Theme.of(context).colorScheme.secondary,
                                    shape:BoxShape.rectangle,
                                    borderRadius:BorderRadius.circular(5) 
                                    ),
                                ),
                              ),
                              ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  
                ],
              ),
            ),
            
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Last & days',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),),
            ),

            Container(
              height: 268,
              child: ListView.builder(
                itemCount: 10,
                itemBuilder:(context,index){
                  return Last7Days();
                }
                ),
            ),

            
               
                
            
          ]
          ),
      ),
  
    );
  }
}