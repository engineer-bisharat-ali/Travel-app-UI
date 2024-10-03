import 'package:flutter/material.dart';

// ignore: must_be_immutable
class AppBackground extends StatelessWidget {
  Color  backgroundColor = const Color(0xff0F2948);

   AppBackground({super.key, required this.backgroundColor});

  @override
  Widget build(BuildContext context) {
      final screenHeight = MediaQuery.of(context).size.height;
    return Container(
      height: (screenHeight / (2)), // Responsive height
      color: backgroundColor,
    
      // 0xff0F2948
    );
  }
}
