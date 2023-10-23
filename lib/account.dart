import 'package:flutter/material.dart';
import 'package:flutter_application_1/accountTab1.dart';
import 'package:flutter_application_1/accountTab2.dart';

class Account extends StatelessWidget {
  const Account({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
    
        appBar: AppBar(
          elevation: 0,
          backgroundColor:Theme.of(context).colorScheme.background,
          title:Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Icon(Icons.lock),
              SizedBox(width: 10,),
              Text('ironman_mark2',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),
              ),
              SizedBox(width: 10,),
              Icon(Icons.arrow_drop_down),
              SizedBox(width:280),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Icon(Icons.add_box_outlined),
                  SizedBox(width:20),
                  Icon(Icons.menu),
                ],
              ),
            ],
          ) ,
        ),
        body: Container(
          color: Theme.of(context).colorScheme.background,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(
                              color: Theme.of(context).colorScheme.secondary,
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                image: AssetImage('images/iron.jpg'),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                      Text('Tony Stark',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize:15,
                        ),
                        ),
                      ],
                    ),
                  Column(
                    children:[
                    Text('11',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize:24,
                    ),
                    ),
                    Text('Posts',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize:15,
                    ),),
                    ],
                  ),
                  Column(
                    children:[
                    Text('11',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize:24,
                    ),),
                    Text('Followers',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize:15,
                    ),),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 20, 0),
                    child: Column(
                      children:[
                      Text('11',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize:24,
                      ),),
                      Text('Following',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize:15,
                      ),
                      ),
                      ],
                    ),
                  ),
                  ],
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Container(
                      child: Text('Bio'),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: Row(
                  children: [
                    Expanded(
                      flex: 3,
                      child: Container(
                        height: 30,
                        child: Center(
                          child: Text('Edit Profile'),
                        ),
                        decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.primary,
                          border: Border.all(
                            width: 0.4,
                            color: Colors.grey,
                          ),
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                     Expanded(
                     flex: 3,
                      child: Container(
                        height: 30,
                        child: Center(
                          child: Text('Share Profile'),
                        ),
                        decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.primary,
                          border: Border.all(
                            width: 0.4,
                            color: Colors.grey,
                          ),
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                        height: 30,
                        child: Center(
                          child: Icon(Icons.person_add_alt_outlined),
                        ),
                        decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.primary,
                          border: Border.all(
                            width: 0.4,
                            color: Colors.grey,
                          ),
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                    ),
                    
                    
                  ],
                ),
              ),
              SizedBox(height:10),
              Padding(
                padding: const EdgeInsets.fromLTRB(10,0, 10,0),
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [  
                      Text('Story Highlights'),
                      Icon(Icons.arrow_drop_down_sharp),
                    ]
                    ),
                    
                ),
              ),
            
             TabBar(
              tabs: [
                Tab(
                  icon:Icon(Icons.grid_on) ,
                  ),
                Tab(
                  icon: Icon(Icons.account_box_rounded),
                ),
              ],
              ),
              Expanded(
                child: TabBarView(
                  children:[
                    AccountTab1(),
                    AccountTab2(),
                    ]
                  ),
            
              ),
            
            ],
            ),
        ),
      ),
    );
  }
}