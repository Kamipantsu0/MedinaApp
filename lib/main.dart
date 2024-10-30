import 'package:flutter/material.dart';
import 'package:flutter/services.dart'; // Import this for SystemChrome
import 'splashtop.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky); // Set fullscreen
    return const splashtop(); // Use your splash screen
  }
}
