import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
import 'package:travel_app_ui/widgets/background_of_ui.dart';
import 'package:travel_app_ui/widgets/card_image_with_text.dart';
import 'package:travel_app_ui/widgets/main_heading_of_pages.dart';
import 'package:travel_app_ui/widgets/menu_and_search_icon.dart';
import 'package:travel_app_ui/widgets/sorting_part.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    // final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Stack(
        children: [
          // Background of App(First container with color purple)

          Column(
            children: [
              // Background of App(First container with color purple)
              AppBackground(
                backgroundColor: const Color(0xff0F2948),
              ),
            ],
          ),

          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                MenuAndSearchIcon(
                    icon1: const Icon(Icons.arrow_back_ios),
                    searchIcon: const Icon(Icons.more_vert)),
            
                const SizedBox(
                  height: 15,
                ),
            
                //main heading of page
                MainHeadingOfPage(
                  mainHeadingText: "Mountain\nPackages",
                  fontsize: 35,
                ),
            
                // card section with Images
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                  child: Expanded(
                    child: Row(
                      // Main Row
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // first column where two cards in column
                        Expanded(
                          child: Column(
                            children: [
                              // first card (container)
                              CardImageWithText(
                                  imageScr: 'assets/images/trekking-image2.jpg',
                                  imageTitle: 'Trekking',
                                  imageSubtitle: 'Tour + Hotels'),
                    
                              const SizedBox(
                                height: 10,
                              ),
                    
                              // second card (container)
                              CardImageWithText(
                                  imageScr: 'assets/images/adventure-image1.jpg',
                                  imageTitle: 'Adventure',
                                  imageSubtitle: 'Tour + Flight'),

                                  const SizedBox(
                                height: 10,
                              ),
                    

                                  CardImageWithText(
                                  imageScr: 'assets/images/trekking-image.jpg',
                                  imageTitle: 'Adventure',
                                  imageSubtitle: 'Tour + Flight'),
                            ],
                          ),
                        ),
                    
                        const SizedBox(
                          width: 35,
                        ),
                    
                        // second column where two cards in column
                        Expanded(
                          child: Column(
                            children: [
                              // sort part
                              const SortingPart(),
                    
                              // first card (container)
                              CardImageWithText(
                                  imageScr: 'assets/images/camping.jpg',
                                  imageTitle: 'Camping',
                                  imageSubtitle: 'Tour + Flight'),
                    
                              const SizedBox(
                                height: 10,
                              ),
                    
                              // second card (container)
                              CardImageWithText(
                                  imageScr: 'assets/images/cycling-image.jpg',
                                  imageTitle: 'Cycling',
                                  imageSubtitle: 'Tour + cycle'),


                                  const SizedBox(
                                height: 10,
                              ),
                    

                                  CardImageWithText(
                                  imageScr: 'assets/images/hotels-image1.jpg',
                                  imageTitle: 'Adventure',
                                  imageSubtitle: 'Tour + Flight'),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
