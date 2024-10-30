import 'package:flutter/material.dart';

class mainpage extends StatelessWidget {
  const mainpage({super.key}); // Keep the class name as specified

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color.fromARGB(255, 18, 32, 47),
      ),
      home: Scaffold(
        body: MainpageContent(), // Changed to call MainpageContent
      ),
    );
  }
}

class MainpageContent extends StatelessWidget { // Renamed this class to avoid conflicts
  @override
  Widget build(BuildContext context) {
    // Get the height and width of the screen
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Stack(
      children: [
        Container(
          width: screenWidth,
          height: screenHeight,
          decoration: const BoxDecoration(color: Colors.white),
        ),
        Positioned(
          left: 0,
          top: 0,
          child: Container(
            width: screenWidth,
            height: 100, // 10% of screen height
            decoration: const BoxDecoration(color: Color(0xFF037EF3)),
          ),
        ),
        Positioned(
          right: 0,
          left: 0,
          bottom: 0, // Position at the bottom of the screen
          child: Container(
            width: screenWidth,
            height: 50,
            decoration: ShapeDecoration(
              gradient: LinearGradient(
                begin: Alignment(0.00, -1.00),
                end: Alignment(0, 1),
                colors: const [Color(0xFF037EF3), Color(0xFF6CB2F4)],
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(150), // 25% of screen width
                  topRight: Radius.circular(150), // 15% of screen width
                ),
              ),
            ),
          ),
        ),
        Positioned(
          left: screenWidth * 0.03, // 2% of screen width
          top: 25, // 2% of screen height
          child: Container(
            width: 49, // 10% of screen width
            height: 49, // 10% of screen width
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("lib/Assets/Menu.png"),
                fit: BoxFit.contain,
              ),
            ),
          ),
        ),
        Positioned(
          right: screenWidth * 0.02,
          top: 25, // 2% of screen height
          child: Container(
            width: 49, // 10% of screen width
            height: 49, // 10% of screen width
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("lib/Assets/Search.png"),
                fit: BoxFit.contain,
              ),
            ),
          ),
        ),
        Positioned(
          right: screenWidth * 0.03,
          top: screenHeight * 0.75, // Adjust position dynamically
          child: Container(
            width: 70, // 15% of screen width
            height: 70, // 15% of screen width
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("lib/Assets/Messaging.png"),
                fit: BoxFit.contain,
              ),
            ),
          ),
        ),

        Positioned(
          left: 80,
          right: 80,
          top: 0,
          child: Container(
            width: 350, // 45% of screen width
            height: 100, // 20% of screen height
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("lib/Assets/medina2.png"),
                fit: BoxFit.contain,
              ),
            ),
            child: ColorFiltered(
              colorFilter: ColorFilter.mode(
                Colors.black.withOpacity(1), // Change to desired color and opacity
                BlendMode.srcATop,
              ),
              child: Image.asset("lib/Assets/medina2.png", fit: BoxFit.contain),
            ),
          ),
        ),
      ],
    );
  }
}
