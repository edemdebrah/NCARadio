import 'package:flutter/material.dart';

class RectangleNeu extends StatelessWidget {
  const RectangleNeu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      //the outter white contaianer
      padding: const EdgeInsets.all(20.0),
      child: Container(
        height: 200,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30),
          boxShadow: [
            BoxShadow(
              offset: const Offset(4, 4),
              color: Colors.grey.shade700,
              blurRadius: 15,
              //spreadRadius: 1,
            ),
            const BoxShadow(
              offset: Offset(-4, -4),
              color: Colors.white,
              blurRadius: 15,
              //spreadRadius: 1,
            ),
          ],
        ),
        //the inner grey container
        child: Padding(
          padding: const EdgeInsets.all(6.0),
          child: Container(
            height: 200,
            decoration: BoxDecoration(
              color: Colors.grey[300],
              borderRadius: BorderRadius.circular(30),
              boxShadow: const [
                BoxShadow(
                  offset: Offset(-4, -4),
                  color: Colors.white,
                  blurRadius: 15,
                  //spreadRadius: 1,
                ),
              ],
            ),
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    Image.asset(
                      'assets/images/DAB.png',
                      height: 80,
                      width: 90,
                    ),
                    Text('Listen to your Favorite Ghanaian DAB channels!'),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
