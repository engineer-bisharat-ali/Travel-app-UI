import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:travel_app_ui/widgets/background_of_ui.dart';
import 'package:travel_app_ui/widgets/listview_builder_images.dart';
import 'package:travel_app_ui/widgets/main_heading_of_pages.dart';
import 'package:travel_app_ui/widgets/menu_and_search_icon.dart';

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
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: [SystemUiOverlay.bottom]);
  }

  @override
  Widget build(BuildContext context) {
    // Get screen dimensions
    // final screenHeight = MediaQuery.of(context).size.height;
    // final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              // Background color with two parts: purple and white
              AppBackground(
                backgroundColor: const Color(0xff0F2948),
              ),
            ],
          ),
          // Main UI content
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Menu and search icons
              MenuAndSearchIcon(
                icon1: const Icon(Icons.menu),
                searchIcon: const Icon(Icons.search),
              ),
              // Heading text
               MainHeadingOfPage(mainHeadingText: "Explore\nthe world", fontsize: 45,),
              const SizedBox(height: 50,),
              // List View for Images
              const ListviewBuilderImages(),
              const SizedBox(height: 45,)
            ],
          ),
        ],
      ),
    );
  }
}
