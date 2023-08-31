import 'package:flutter/material.dart';

class SmallRoundNeu extends StatelessWidget {
  final IconData icon;
  final Color color;

  const SmallRoundNeu({
    super.key,
    required this.icon,
    this.color = Colors.grey,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[500],
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade600,
            offset: const Offset(15, 15),
            blurRadius: 20,
            spreadRadius: 4.0,
          ),
          const BoxShadow(
            color: Colors.white,
            offset: Offset(-4, -4),
            blurRadius: 10,
            spreadRadius: 0.0,
          )
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Container(
          height: 80,
          width: 80,
          decoration: BoxDecoration(
            color: Colors.black,
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade700,
                offset: const Offset(15, 15),
                blurRadius: 20,
                spreadRadius: 4.0,
              ),
              const BoxShadow(
                color: Colors.white,
                offset: Offset(-4, -4),
                blurRadius: 10,
                spreadRadius: 0.0,
              )
            ],
          ),
          child: Center(
            child: Icon(
              icon,
              size: 40,
              color: color,
            ),
          ),
        ),
      ),
    );
  }
}
