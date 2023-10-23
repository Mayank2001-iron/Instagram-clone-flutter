import 'package:flutter/material.dart';
import 'package:flutter_application_1/exploreGrid.dart';

class search extends StatelessWidget {
  const search({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: ClipRRect(
          borderRadius: BorderRadius.circular(10.0),
          child: Container(
            padding: EdgeInsets.all(8.0),
            color: Colors.grey[400],
            child: Row(
              children: [
                Icon(
                  Icons.search,
                  color: Colors.grey[600],
                  ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  child: Text(
                    "Search",
                    style: TextStyle(
                      color:Colors.grey[600],
                    ),
                    ),
                ),
              ],
            ),
          ),
        ),
        ),


      body: ExploreGrid(),

    );
  }
}