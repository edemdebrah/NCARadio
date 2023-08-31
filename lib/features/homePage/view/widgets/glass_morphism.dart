import 'dart:ui';

import 'package:flutter/material.dart';

class GlassMorphism extends StatelessWidget {
  final double height;
  final double width;
  final Widget child;

  const GlassMorphism({
    super.key,
    required this.child,
    required this.height,
    required this.width,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(
        25,
      ),
      child: Container(
        margin: const EdgeInsets.symmetric(
          vertical: 5,
        ),
        height: height,
        width: width,
        //color: Colors.purple,
        child: Stack(children: [
          //blur background
          BackdropFilter(
            filter: ImageFilter.blur(
              sigmaX: 3,
              sigmaY: 3,
            ),
            child: Container(),
          ),

          //gradient fill
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                25,
              ),
              border: Border.all(
                color: Colors.white.withOpacity(
                  0.6,
                ),
              ),
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Colors.white.withOpacity(0.4),
                  Colors.white.withOpacity(0.1),
                ],
              ),
            ),
          ),

          Center(child: child

              // Text(
              //   child,
              //   style: TextStyle(
              //     fontSize: 30,
              //     color: Colors.white,
              //     fontWeight: FontWeight.bold,

              //   ),
              //   textAlign: TextAlign.center,
              // ),
              ),

          //Text/Icon
        ]),
      ),
    );
  }
}
