import 'package:flutter/material.dart';
import 'splash.dart';
import 'package:google_fonts/google_fonts.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'eWallet',
      theme: ThemeData(
        primaryColor: const Color(0xFF40C64E),
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF40C64E)),
        textTheme: GoogleFonts.poppinsTextTheme(),
      ),
      home: SplashScreen(),
    );
  }
}
