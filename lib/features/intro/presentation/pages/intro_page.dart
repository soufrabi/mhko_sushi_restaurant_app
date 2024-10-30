import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mk_sushi_restaurant_app/core/widgets/custom_button.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 138, 60, 55),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                "SUSHI MAN",
                style: GoogleFonts.dmSerifDisplay(
                  color: Colors.white,
                  fontSize: 32,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(50.0),
                child: Image.asset("assets/salmon_eggs.png"),
              ),
              Text(
                "THE TASTE OF JAPANESE FOOD",
                style: GoogleFonts.dmSerifDisplay(
                  color: Colors.white,
                  fontSize: 40,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Feel the taste of the most popular Japanese Food from anywhere and anyone",
                style: TextStyle(
                  color: Colors.white,
                  height: 2,
                ),
              ),
              CustomButton(
                text: "Get Started",
                onTap: () {
                  Navigator.pushNamed(context, "/menu");
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
