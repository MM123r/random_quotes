import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';




class CustomButtonBlac extends StatelessWidget {
  const CustomButtonBlac({super.key, required this.onPressed, required this.text});
  final VoidCallback onPressed;
  final String text;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 54,
      child: TextButton(
        style: TextButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              16,
            ),
          ),
          backgroundColor: Colors.black,
          
        ),
        onPressed: onPressed,
        child: Text(
          text,
          style: const TextStyle(color: Colors.white,fontSize: 18),
        ),
      ),
    );
  }
}