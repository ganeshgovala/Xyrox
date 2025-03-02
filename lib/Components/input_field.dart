import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:xyrox/colors.dart';

class InputField extends StatelessWidget {
  final String hintText;
  final String image;
  const InputField({
    required this.hintText,
    required this.image,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
      child: Container(
        alignment: Alignment.topCenter,
        child: TextField(
          style: GoogleFonts.leagueSpartan(
            fontSize: 18
          ),
          decoration: InputDecoration(
            prefixIcon: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 14),
              child: Image.asset("lib/assets/${image}", height: 2,),
            ),
            contentPadding: EdgeInsets.symmetric(vertical: 1, horizontal: 20),
            hintText: hintText,
            floatingLabelStyle: GoogleFonts.leagueSpartan(
              fontSize: 18,
              color: AppColors.primary
            ),
            hintStyle: GoogleFonts.leagueSpartan(
              fontSize: 20,
              fontWeight: FontWeight.w400,
              color: const Color.fromARGB(255, 152, 152, 152)
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                width: 2,
                color: AppColors.primary,
              ),
              borderRadius: BorderRadius.circular(20),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                width: 2,
                color: AppColors.primary,
              ),
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
      ),
    );
  }
}