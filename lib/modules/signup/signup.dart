import 'package:flutter/material.dart';
import 'package:habit_tacker/modules/login/login.dart';
import 'package:habit_tacker/shared/components/components.dart';

// ignore: must_be_immutable
class SignUp extends StatelessWidget {
  var formKey = GlobalKey<FormState>();
  var userNameController = TextEditingController();
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var confirmPasswordController = TextEditingController();

  SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff181818),
      appBar: AppBar(
        backgroundColor: const Color(0xff181818),
        leading: Container(
            padding: const EdgeInsets.all(10),
            child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.arrow_back_ios,
                  color: Colors.white,
                ))),
      ),
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
                      text: "Sign up to Lorem ipsum",
                      size: 25,
                      weight: FontWeight.w600),
                ),
                const SizedBox(
                  height: 5,
                ),
                textStyle(
                    text:
                        "Lorem ipsum is simply dummy text of the pindling and typesetting",
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
                      text: "Username",
                      errorMessage: "Please enter your username",
                      controller: emailController,
                      keyboardType: TextInputType.emailAddress,
                      prefix: const Icon(
                        Icons.person_2_outlined,
                        color: Colors.grey,
                      )),
                  const SizedBox(
                    height: 20,
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
                    height: 20,
                  ),
                  textForm(
                      prefix:
                          const Icon(Icons.lock_outline, color: Colors.grey),
                      text: "Confirm Password",
                      errorMessage: "Please confirm the password",
                      controller: passwordController,
                      keyboardType: TextInputType.visiblePassword,
                      suffix: true),
                  const SizedBox(
                    height: 20,
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
                      text: "Sign Up",
                      weight: FontWeight.w600),
                ],
              ),
            ),
            const Expanded(
              child: SizedBox(
                height: 30,
              ),
            ),
            SizedBox(
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  textStyle(text: "Have an Account?", size: 15),
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            DialogRoute(
                              context: context,
                              builder: (context) => Login(),
                            ));
                      },
                      child: textStyle(
                          text: "Sign In",
                          size: 15,
                          color: const Color(0xffefa803)))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
