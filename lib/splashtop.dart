import 'package:flutter/material.dart';
import 'mainpage.dart'; // Import your existing main page
import 'dart:math'; // Import for random number generation

class splashtop extends StatelessWidget {
  const splashtop({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color.fromARGB(255, 18, 32, 47),
      ),
      home: const SplashTop(),
    );
  }
}

class SplashTop extends StatefulWidget {
  const SplashTop({Key? key}) : super(key: key);

  @override
  _SplashTopState createState() => _SplashTopState();
}

class _SplashTopState extends State<SplashTop> {
  final List<String> _quotes = [
    "Leadership is not about a title or a designation. It's about impact, influence, and inspiration.",
    "AIESEC is about making a positive impact in society through leadership development.",
    "Change starts with you. Be the change you want to see in the world.",
    "We are a global community of young people who believe in peace and fulfillment of humankind's potential.",
    "Your time is limited, don’t waste it living someone else’s life. Take action and make a difference!",
    "Every journey begins with a single step. Take that step with AIESEC!",
    "Together we can create a better world. Join us in making an impact.",
    "Unlock your potential. Discover the leader within you with AIESEC."
  ];

  late String _randomQuote; // Variable to hold the random quote

  @override
  void initState() {
    super.initState();
    _randomQuote = _getRandomQuote(); // Get a random quote
    _navigateToMainPage();
  }

  String _getRandomQuote() {
    final random = Random();
    return _quotes[random.nextInt(_quotes.length)]; // Get a random quote from the list
  }

  void _navigateToMainPage() async {
    // Wait for 4 seconds
    await Future.delayed(const Duration(seconds: 3));

    // Navigate to the main page with a fade transition
    Navigator.of(context).pushReplacement(
      PageRouteBuilder(
        pageBuilder: (context, animation, secondaryAnimation) => const mainpage(),
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          const curve = Curves.easeInOut; // Smoother animation curve

          var opacityTween = Tween(begin: 0.0, end: 1.0).chain(CurveTween(curve: curve));

          var opacityAnimation = animation.drive(opacityTween);

          return FadeTransition(
            opacity: opacityAnimation,
            child: child,
          );
        },
        transitionDuration: const Duration(milliseconds: 300), // Adjust duration if necessary
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // Get the height and width of the screen
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    final gifHeight = 281.0;

    return Scaffold(
      body: Container(
        width: screenWidth,
        height: screenHeight,
        color: const Color(0xFF037EF3),
        child: Stack(
          children: [
            Positioned(
              left: screenWidth * 0.02,
              right: screenWidth * 0, // Center the GIF horizontally
              top: screenHeight * 0.25,
              child: Container(
                width: 500,
                height: gifHeight,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("lib/Assets/aiesec.gif"),
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ),
            // Position the quote directly below the GIF
            Positioned(
              bottom: screenHeight * 0.34, // Adjusts position based on the GIF height
              left: 0,
              right: 0,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  _randomQuote,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(const splashtop());
}
