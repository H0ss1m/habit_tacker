import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:habit_tacker/modules/login/login.dart';
import 'package:habit_tacker/shared/components/components.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(20),
          color: const Color(0xff292929),
          child: Column(
            children: [
              textStyle(
                  text:
                      "Meet Your Authentic Self, Discover the Ultimate Treasure",
                  size: 18),
              const SizedBox(
                height: 10,
              ),
              textStyle(
                  text:
                      "Congratulations on taking the first step towards transforming your life. let us guide you through it",
                  size: 18,
                  color: Colors.grey),
              const SizedBox(
                height: 10,
              ),
              DefoultButton(
                text: "Let's Unfold Your Path",
                onPress: () {},
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Have an account ?",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontFamily: "Poppins"),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Login()));
                    },
                    child: const Text(
                      "Sign in",
                      style: TextStyle(
                          color: Color(0xffefa803),
                          fontSize: 15,
                          fontFamily: "Poppins"),
                    ),
                  ),
                ],
              ),
              Expanded(
                child: Container(
                  width: double.infinity,
                  child: Stack(
                    alignment: AlignmentDirectional.bottomCenter,
                    children: [
                      SvgPicture.asset(
                        "assets/svg/girl_with_laptop.svg",
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
