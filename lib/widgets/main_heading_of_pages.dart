import "package:flutter/material.dart";
// import "package:flutter/widgets.dart";

// ignore: must_be_immutable
class MainHeadingOfPage extends StatelessWidget {
    String mainHeadingText;
    double fontsize;
   MainHeadingOfPage({super.key, required this.mainHeadingText , required this.fontsize});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
          left: 20,
          top: 8,
          bottom: 12),
      child: Expanded(
        child: Text(
          mainHeadingText,
          style: TextStyle(
            fontSize: fontsize, // Responsive text size
            color: Colors.white,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
