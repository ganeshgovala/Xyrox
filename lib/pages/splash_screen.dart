import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:xyrox/colors.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Image.asset("lib/assets/Logo-Dark.png", height: 130,)
          ),
          SizedBox(height: 20,),
          Center(
            child: Text("XYROX", style:GoogleFonts.leagueSpartan(
              fontSize: 30,
              color: Colors.white,
              fontWeight: FontWeight.w600,
              letterSpacing: 6
            ),
          ))
        ],
      ),
    );
  }
}