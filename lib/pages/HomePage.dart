import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    // Hides the status bar and navigation bar when the widget is initialized
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: [SystemUiOverlay.bottom]);
  }

  @override
  Widget build(BuildContext context) {

        // Get the screen dimensions for responsive design
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;


    return Scaffold(
      body: Stack(
        children: [
          // column 1 for division of 2 parts purple and white color 
          Column(
            children: [
              // container 1 with dark purple color 
              Container(
                height: MediaQuery.of(context).size.height/2,
                color: const Color(0xff0F2948),
              )
            ],
          ),

          //column 2 fr the wigdets and all of UI stuff
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              // row for the icon of menu and search icon
              SafeArea(
                child: Padding(
                  padding: const EdgeInsets.only(top: 12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(onPressed: (){}, icon: Icon(Icons.menu ,color:Colors.white, size: screenWidth * 0.09,)),
                      IconButton(onPressed: (){}, icon: Icon(Icons.search, color: Colors.white,size: screenWidth * 0.09)),
                    ],
                  ),
                ),
              ),

              // Text of main heading
              Padding(
                padding: const EdgeInsets.only(left: 16),
                child: Text("Explore\nthe world", style: TextStyle(fontSize: screenWidth * 0.11 , color: Colors.white),),
              ),
            ],
          )
        ],
      ),
    );
  }
}
