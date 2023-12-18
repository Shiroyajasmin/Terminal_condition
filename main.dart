import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: zender(),));
}


class zender extends StatefulWidget {
  const zender({Key? key});

  @override
  State<zender> createState() => _zenderState();
}

class _zenderState extends State<zender> {
  bool isMaleSelected = false;
  bool isFemaleSelected = false;

  void selectMale() {
    setState(() {
      isMaleSelected = true;
      isFemaleSelected = false;
    });
  }

  void selectFemale() {
    setState(() {
      isMaleSelected = false;
      isFemaleSelected = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    // Get the screen size
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    // You can set up your responsive layout here based on screenWidth and screenHeight

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: screenHeight,
              width: screenWidth,
              color: Colors.black,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: screenHeight * 0.1,
                  ),
                  Center(
                    child: Column(
                      children: [

                        InkWell(
                          onTap: selectMale,
                          child: Container(
                            height: screenWidth * 0.4, // Adjust container size
                            width: screenWidth * 0.4, // Adjust container size
                            child: Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.male,
                                    size: 60, // Adjust icon size
                                    color: isMaleSelected
                                        ? Colors.black
                                        : Colors.white,
                                  ),
                                  SizedBox(
                                    height: screenHeight * 0.02,
                                  ),
                                  Text(
                                    "Male",
                                    style: TextStyle(
                                      fontSize: screenWidth * 0.05,
                                      // Adjust font size
                                      color: isMaleSelected
                                          ? Colors.black
                                          : Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(
                                  screenWidth * 0.20), // Adjust border radius
                              color: isMaleSelected
                                  ? Color(0xFF1EA87F)
                                  : Color(0xFF2C2C2E),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: screenHeight * 0.05,
                        ),
                        InkWell(
                          onTap: selectFemale,
                          child: Container(
                            height: screenWidth * 0.4, // Adjust container size
                            width: screenWidth * 0.4, // Adjust container size
                            child: Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.female,
                                    size:60, // Adjust icon size
                                    color:
                                    isFemaleSelected ? Colors.black : Colors.white,
                                  ),
                                  SizedBox(
                                    height: screenHeight * 0.02,
                                  ),
                                  Text(
                                    "Female",
                                    style: TextStyle(
                                      fontSize: screenWidth * 0.05, // Adjust font sizent size
                                      color:
                                      isFemaleSelected ? Colors.black : Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(screenWidth * 0.20), // Adjust border radius
                              color: isFemaleSelected
                                  ? Color(0xFF1EA87F)
                                  : Color(0xFF2C2C2E),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}




