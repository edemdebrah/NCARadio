import 'package:flutter/material.dart';

class BigRoundNeu extends StatelessWidget {
  final Color color;

  const BigRoundNeu({
    super.key,
    this.color = Colors.grey,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[350],
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade600,
            offset: Offset(15, 15),
            blurRadius: 20,
            spreadRadius: 4.0,
          ),
          BoxShadow(
            color: Colors.white,
            offset: Offset(-4, -4),
            blurRadius: 10,
            spreadRadius: 0.0,
          )
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Container(
          height: 200,
          width: 200,
          decoration: BoxDecoration(
            color: Colors.black,
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade600,
                offset: Offset(15, 15),
                blurRadius: 20,
                spreadRadius: 4.0,
              ),
              BoxShadow(
                color: color,
                offset: Offset(-4, -4),
                blurRadius: 10,
                spreadRadius: 0.0,
              )
            ],
          ),
          child: Center(
            child: Icon(
              Icons.multitrack_audio,
              size: 80,
              color: color,
            ),
          ),
        ),
      ),
    );
  }
}
