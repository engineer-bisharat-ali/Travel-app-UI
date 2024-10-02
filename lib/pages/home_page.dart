import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:travel_app_ui/widgets/listview_builder_images.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    // Hide status and navigation bar when the widget is initialized
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: [SystemUiOverlay.bottom]);
  }

  @override
  Widget build(BuildContext context) {
    // Get screen dimensions
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Stack(
        children: [
          // Background color with two parts: purple and white
          Column(
            children: [
              Container(
                height: screenHeight / 2, // Responsive height
                color: const Color(0xff0F2948),
              ),
            ],
          ),
          // Main UI content
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Menu and search icons
              SafeArea(
                child: Padding(
                  padding: EdgeInsets.only(top: screenHeight * 0.015, left: screenWidth * 0.03, right: screenWidth * 0.03),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.menu, color: Colors.white, size: screenWidth * 0.09),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.search, color: Colors.white, size: screenWidth * 0.09),
                      ),
                    ],
                  ),
                ),
              ),
              // Heading text
              Padding(
                padding: EdgeInsets.only(left: screenWidth * 0.05, top: screenHeight * 0.05, bottom: screenHeight * 0.05),
                child: Text(
                  "Explore\nthe world",
                  style: TextStyle(
                    fontSize: screenWidth * 0.1, // Responsive text size
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              // List View for Images
              const ListviewBuilderImages(),
            ],
          ),
        ],
      ),
    );
  }
}
