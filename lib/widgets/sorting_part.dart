import 'package:flutter/material.dart';

class SortingPart extends StatelessWidget {
  const SortingPart({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(bottom: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Column(
            children: [
              Text(
                "Sort by",
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
              Text(
                "price",
                style: TextStyle(color: Colors.yellow, fontSize: 16),
              ),
            ],
          ),
          SizedBox(
            width: 6,
          ),
          Icon(
            Icons.arrow_downward_sharp,
            color: Colors.white,
            size: 26,
          ),
        ],
      ),
    );
  }
}
