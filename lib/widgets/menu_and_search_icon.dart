import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MenuAndSearchIcon extends StatelessWidget {

  Icon icon1;
  Icon searchIcon;
   MenuAndSearchIcon({super.key, required this.icon1 , required this.searchIcon});

  @override
  Widget build(BuildContext context) {
    // final screenHeight = MediaQuery.of(context).size.height;
    // final screenWidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(
            top: 12,
            left: 10,
            right: 10),
        child: Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                onPressed: () {},
                icon: icon1, 
                iconSize: 32,
                    color: Colors.white,
                    ) ,
              
              IconButton(
                onPressed: () {},
                icon: searchIcon,
                iconSize: 32,
                    color: Colors.white,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
