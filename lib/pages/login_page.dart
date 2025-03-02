import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:xyrox/Components/input_field.dart';
import 'package:xyrox/colors.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            top: -MediaQuery.of(context).size.height * 0.88, // Adjusting dynamically
            left: -MediaQuery.of(context).size.width * 0.9,
            child: Container(
              alignment: Alignment.bottomCenter,
              height: 1000,
              width: 1000,
              decoration: BoxDecoration(
                  color: AppColors.primary,
                  borderRadius: BorderRadius.circular(1000)),
              child: Text(
                "XYROX\nXYROX\nXYROX",
                style: GoogleFonts.anton(
                    fontSize: 150, color: const Color.fromARGB(25, 255, 255, 255),
                    height: 0.92
                ),
              ),
            ),
          ),
          Positioned(
            top: 120,
            left: 20,
            child: Container(
              height: 14,
              width: 14,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white
              ),
            )
          ),
          Positioned(
            top: 80,
            left: 140,
            child: Container(
              height: 20,
              width: 20,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: const Color.fromARGB(166, 255, 255, 255)
              ),
            )
          ),
          Positioned(
            top: 210,
            right: 120,
            child: Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    const Color.fromARGB(255, 209, 152, 255),
                    const Color.fromARGB(255, 162, 48, 255)
                  ]
                )
              ),
            )
          ),
          Positioned(
            top: 80,
            right: 70,
            child: Image.asset("lib/assets/login-details1.png", height: 60,)
          ),
          Positioned(
            top: 160,
            left: 50,
            child: Image.asset("lib/assets/login-details2.png", height: 80,)
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.43,
            child: Column(
              children: [
                Text("Sign In", style: GoogleFonts.leagueSpartan(
                  fontSize: 36,
                  color: AppColors.primary,
                  fontWeight: FontWeight.w500,
                ),)
              ],
            )
          ),
          Column(
            children: [
              SizedBox(height: MediaQuery.of(context).size.height * 0.51,),
              InputField(hintText: "Email", image: "email.png",),
              InputField(hintText: "Password", image: "password.png"),
              SizedBox(height: 8),
              Container(
                alignment: Alignment.center,
                width: MediaQuery.of(context).size.width - 36,
                decoration: BoxDecoration(
                  color: AppColors.primary,
                  borderRadius: BorderRadius.circular(20),

                ),
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Text("Signin", style: GoogleFonts.leagueSpartan(fontSize: 20, color: Colors.white),),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 36, vertical: 10),
                child: Divider(color: const Color.fromARGB(255, 221, 221, 221),)
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don't have an account ? ", style: GoogleFonts.leagueSpartan(
                    fontSize: 16,
                    color: const Color.fromARGB(255, 169, 169, 169),
                  ),),
                  GestureDetector(
                    onTap: () {
                      
                    },
                    child: Text("Create Account", style: GoogleFonts.leagueSpartan(
                      fontSize: 16,
                      color: AppColors.primary,
                    ),),
                  )
                ],
              ),
              SizedBox(height: 20,),
              Container(
                alignment: Alignment.center,
                width: MediaQuery.of(context).size.width - 36,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 242, 242, 242),
                  borderRadius: BorderRadius.circular(20),

                ),
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Text("Continue with Google", style: GoogleFonts.leagueSpartan(fontSize: 16, color: const Color.fromARGB(255, 125, 125, 125))),
              ),
            ],
          )
        ],
      ),
    );
  }
}
