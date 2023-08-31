import 'package:flutter/material.dart';

class NeuBox extends StatelessWidget {
  final child;
  const NeuBox({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.grey[300],
          boxShadow: [
            BoxShadow(blurRadius: 15, spreadRadius: 1, offset: const Offset(4, 4), color: Colors.grey.shade700),
            const BoxShadow(
              blurRadius: 15,
              spreadRadius: 1,
              offset: Offset(-4, -4),
              color: Colors.white,
            ),
          ],
        ),
        child: Center(
          child: child,
        ),
      ),
    );
  }
}
