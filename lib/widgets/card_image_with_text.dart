import "package:flutter/material.dart";

// ignore: must_be_immutable
class CardImageWithText extends StatelessWidget {

  
    String imageScr;
    String imageTitle;
    String imageSubtitle;

   CardImageWithText({super.key,
   required this.imageScr,
   required this.imageTitle,
   required this.imageSubtitle,
   });

  @override
  Widget build(BuildContext context) {

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: double.infinity,
          height: 220,
          // color: Colors.amber,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              imageScr,
              fit: BoxFit.cover,
            ),
          ),
        ),
         Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Text(
            imageTitle,
            style:  TextStyle(fontSize: 24 , color: Colors.black),
          ),
        ),
         Row(
          children: [
            Text(
              imageSubtitle,
              style: const TextStyle(color: Colors.grey),
            )
          ],
        )
      ],
    );
  }
}
