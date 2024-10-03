import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ListviewBuilderImages extends StatefulWidget {
  const ListviewBuilderImages({super.key});

  @override
  State<ListviewBuilderImages> createState() => _ListviewBuilderImagesState();
}

class _ListviewBuilderImagesState extends State<ListviewBuilderImages> {
  int currentButton = 0;

  List<String> button01Images = [
    'assets/images/mountain-image1.jpg',
    'assets/images/mountain-image4.jpg',
    'assets/images/mountain-image2.jpg',
    'assets/images/mountain-image3.jpg',
  ];

  List<String> button02Images = [
    'assets/images/flight-image5.jpg',
    'assets/images/flight-image2.jpg',
    'assets/images/flight-image3.jpg',
    'assets/images/flight-image4.jpg',
  ];

  List<String> button03Images = [
    'assets/images/hotels-image1.jpg',
    'assets/images/hotels-image2.jpg',
    'assets/images/hotels-image3.jpg',
    'assets/images/hotels-image4.jpg',
  ];

  List<String> mountainText = [
    'Mountain 1',
    'Mountain 2',
    'Mountain 3',
    'Mountain 4',
  ];

  List<String> flightText = [
    'Flight 1',
    'Flight 2',
    'Flight 3',
    'Flight 4',
  ];

  List<String> hotelstText = [
    'Hotel 1',
    'Hotel 2',
    'Hotel 3',
    'Hotel 4',
  ];

  // main list to store images when click on rotate button (navigation)
  List<String> mainListImages = [];

  // main list to store Text when click on rotate button (navigation)
  List<String> mainListTexts = [];

  @override
  void initState() {
    mainListImages = button01Images;
    mainListTexts = mountainText;
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: mainListImages.length,
        itemBuilder: (context, index) {
          if (index == 0) {
            // These 3 button will visible on one time when index is 0 (when card image is at one position)
            return Row(
              children: [
                rotateNavigation(button01Images, button02Images, button03Images,
                    mountainText, flightText, hotelstText),
                imagecardWithtext(index, mainListImages, mainListTexts),
              ],
            );
          } else {
            return imagecardWithtext(index, mainListImages, mainListTexts);
          }
        },
      ),
    );
  }

  Widget imagecardWithtext(
    int helperIndex,
    List<String> mainListImagepara,
    List<String> mainListTextpara,
  ) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Container(
            // Images container
            margin: const EdgeInsets.all(10),
            width: 255,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(15)),
            child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.asset(
                  mainListImagepara[helperIndex],
                  fit: BoxFit.cover,
                )),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Text(
            mainListTextpara[helperIndex],
            style: const TextStyle(fontSize: 26),
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(left: 20),
          child: Row(
            children: [
              Icon(
                Icons.pin_drop,
                color: Colors.amber,
              ),
              Text(
                "Lorem ipsum",
                style: TextStyle(color: Colors.grey, fontSize: 16),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 30,
        )
      ],
    );
  }

  Widget rotateNavigation(
    List<String> button01Imagespara,
    List<String> button02Imagespara,
    List<String> button03Imagespara,
    List<String> mountainTextpara,
    List<String> flightTextpara,
    List<String> hotelTextpara,
  ) {
    return RotatedBox(
      quarterTurns: 3,
      child: Padding(
        padding:
            const EdgeInsets.only(top: 25, left: 20, right: 20, bottom: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            GestureDetector(
                onTap: () {
                  setState(() {
                    currentButton = 2;
                    mainListImages =
                        button03Imagespara; // Use the parameter names here
                    mainListTexts =
                        hotelTextpara; // Use the parameter names here
                  });
                },
                child: Text("Hotels",
                    style: TextStyle(
                        fontSize: 16,
                        color: currentButton == 2
                            ? Colors.amber
                            : Colors.grey.shade600))),
            const SizedBox(
              width: 100,
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  currentButton = 1;
                  mainListImages = button02Imagespara;
                  mainListTexts = flightTextpara;
                });
              },
              child: Text(
                "Flight",
                style: TextStyle(
                    fontSize: 16,
                    color: currentButton == 1
                        ? Colors.amber
                        : Colors.grey.shade600),
              ),
            ),
            const SizedBox(
              width: 100,
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  currentButton = 0;
                  mainListImages = button01Imagespara;
                  mainListTexts = mountainTextpara;
                });
              },
              child: Text(
                "Packages ",
                style: TextStyle(
                    fontSize: 16,
                    color: currentButton == 0 ? Colors.amber : Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
