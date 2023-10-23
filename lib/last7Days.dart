import 'package:flutter/material.dart';

class Last7Days extends StatelessWidget {
  const Last7Days({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        print("Success");
      },
      child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                      height: 60,
                      width:60,
                      decoration: BoxDecoration(
                        shape:BoxShape.circle,
                        // color: Colors.grey,
                        image: DecorationImage(
                        image: AssetImage('images/4.jpg'),
                        fit: BoxFit.cover
                      )
                      ),
                    ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Captian_america ',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'liked youe story',
                    ),
                  ],
                ),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.all(14.0),
                  child: Container(
                    height: 50,
                    width: 35,
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      // color: Colors.grey,
                      image: DecorationImage(
                        image: AssetImage('images/4.jpg'),
                        fit: BoxFit.cover
                      )
                    ),
                  ),
                )
              ],
            ),
    );
  }
}