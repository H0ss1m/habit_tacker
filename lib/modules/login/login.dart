import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:habit_tacker/shared/components/components.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

var formKey = GlobalKey<FormState>();
var emailController = TextEditingController();
var passwordController = TextEditingController();

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: const Color(0xff181818),
      leading: Container(
            padding: const EdgeInsets.all(10),
            child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.arrow_back_ios,
                  color: Colors.white,
                ))),),
      body: Container(
        padding: const EdgeInsets.all(20),
        width: double.infinity,
        decoration: const BoxDecoration(color: Color(0xff181818)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              children: [
                SizedBox(
                  width: double.infinity,
                  child: textStyle(
                      text: "Sign In to The Holistic Path",
                      size: 25,
                      weight: FontWeight.w600),
                ),
                const SizedBox(
                  height: 5,
                ),
                textStyle(
                    text:
                        "Share your details so we can make an account for you",
                    size: 18,
                    color: Colors.grey)
              ],
            ),
            Form(
              key: formKey,
              child: Column(
                children: [
                  const SizedBox(
                    height: 40,
                  ),
                  textForm(
                      text: "Email Address",
                      errorMessage: "Please enter your email address",
                      controller: emailController,
                      keyboardType: TextInputType.emailAddress,
                      prefix: const Icon(
                        Icons.email_outlined,
                        color: Colors.grey,
                      )),
                  const SizedBox(
                    height: 20,
                  ),
                  textForm(
                      prefix:
                          const Icon(Icons.lock_outline, color: Colors.grey),
                      text: "Password",
                      errorMessage: "Please enter your password",
                      controller: passwordController,
                      keyboardType: TextInputType.visiblePassword,
                      suffix: true),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      const Expanded(child: SizedBox()),
                      TextButton(
                          onPressed: () {},
                          child: textStyle(
                              text: "Forgot Password?",
                              size: 13,
                              color: const Color(0xffefa803)))
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  DefoultButton(
                      onPress: () {
                        if (formKey.currentState!.validate()) {
                          // ignore: avoid_print
                          return print("Valid");
                        } else {
                          // ignore: avoid_print
                          return print("Invalid");
                        }
                      },
                      text: "Sign in",
                      weight: FontWeight.w600)
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            SizedBox(
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  textStyle(text: "or  Continue With", size: 15),
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                          height: 60,
                          width: 60,
                          child: IconButton(
                              onPressed: () {},
                              icon: Image.asset(
                                "assets/images/facebook2.png",
                              ))),
                      const SizedBox(
                        width: 30,
                      ),
                      Container(
                          height: 60,
                          width: 60,
                          child: IconButton(
                              onPressed: () {},
                              icon: Image.asset(
                                "assets/images/google logo.png",
                              ))),
                    ],
                  ),
                  // Container(
                  //   width: double.infinity,
                  //   height: 100,
                  // decoration: const BoxDecoration(image: DecorationImage(image: AssetImage("assets/images/google logo.png"))),
                  // child: Stack(
                  //   alignment: AlignmentDirectional.bottomCenter,
                  //   children: [SvgPicture.asset("assets/svg/city.svg")],
                  // ),
                  // ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
