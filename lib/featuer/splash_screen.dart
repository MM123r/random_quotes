import 'package:flutter/material.dart';
import 'package:random_quotes/core/custom_button_blac.dart';
import 'package:random_quotes/core/navigation.dart';
import 'package:random_quotes/featuer/qoute_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

  }

 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Logo/Image
            Image.asset(
              "assets/images/quote-logo-png.png",
              width: double.infinity,
              height: 180,
            ),
            // Replace with your logo path ),
            const SizedBox(height: 20),
            // App Title
            const Text(
              "Welcome to Quote",
              style: TextStyle(
                color: Colors.black,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            // App Subtitle
            const Text(
              "Get inspired, every day!",
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),

              const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: CustomButtonBlac(
                onPressed: () {
                  pushTo(context, const QuoteScreen());
                },
                text: "Start Now",),
            )
          ],
        ),
      ),
    );
  }
}
