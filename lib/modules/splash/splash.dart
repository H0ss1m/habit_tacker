import 'package:another_flutter_splash_screen/another_flutter_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:habit_tacker/modules/welcome/welcome.dart';
import 'package:lottie/lottie.dart';

class Splash extends StatelessWidget {
  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
    return FlutterSplashScreen(
          useImmersiveMode: true,
          duration: const Duration(milliseconds: 5000),
          nextScreen: const Welcome(),
          backgroundColor: Colors.white,
          splashScreenBody: Center(
            child: Container(
              color: const Color(0xff292929),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Lottie.asset(
                    "assets/lottie/rw1YwLKeI4.json",
                    repeat: false,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    "Habit tacker",
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w600,
                        fontFamily: "Poppins",
                        color: Colors.white),
                  ),
                ],
              ),
            ),
          ),
        );
  }
}
