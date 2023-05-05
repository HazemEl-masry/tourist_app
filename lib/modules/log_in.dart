// ignore_for_file: avoid_print
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
// import 'package:toriest/modules/home.dart';
import 'package:toriest/modules/sign_up.dart';

import '../layout/navi_bar.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final formKey = GlobalKey<FormState>();
  bool isPassword = true;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(
              left: 20.0,
              right: 20.0,
            ),
            child: Form(
              key: formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Lottie.asset("shard/local/animation/login.json"),
                  const Text(
                    "Login",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 35.0,
                      letterSpacing: 3.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(
                    height: 40.0,
                  ),
                  TextFormField(
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Email must not be empty';
                      }
                      return null;
                    },
                    keyboardType: TextInputType.emailAddress,
                    decoration: const InputDecoration(
                        labelText: "Email",
                        prefixIcon: Icon(Icons.email),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(15.0))
                        )
                    ),
                  ),
                  const SizedBox(
                    height: 30.0,
                  ),
                  TextFormField(
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Password must not be empty';
                      }
                      return null;
                    },
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: isPassword,
                    decoration: InputDecoration(
                        labelText: "Password",
                        prefixIcon: const Icon(Icons.lock),
                        suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {
                                isPassword = !isPassword;
                              });
                            },
                            icon: isPassword ? const Icon(Icons.visibility) : const Icon(Icons.visibility_off)
                        ),
                        border: const OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(15.0)))
                    ),
                  ),
                  const SizedBox(
                    height: 30.0,
                  ),
                  Center(
                    child: Container(
                      width: 200,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                          color: Colors.blue
                      ),
                      child: MaterialButton(
                        onPressed: () {
                          if(formKey.currentState!.validate()){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => const NaviScreen(),));
                          }
                        },
                        child: const Text(
                          "Login",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 22.0,
                              fontWeight: FontWeight.w600
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Center(
                    child: Container(
                      decoration: const BoxDecoration(
                          border: Border(
                              bottom: BorderSide(
                                  color: Colors.black,
                                  width: 2.0
                              )
                          )
                      ),
                      child: const Text(
                        "or",
                        style: TextStyle(
                          fontSize: 22.0,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: () {},
                        child: const SizedBox(
                            width: 60.0,
                            height: 40.0,
                            child: CircleAvatar(backgroundImage: AssetImage("shard/local/img/icons/facebook.png")
                            )
                        ),
                      ),
                      const SizedBox(
                        width: 20.0,
                      ),
                      InkWell(
                        onTap: () {},
                        child: const SizedBox(
                            width: 60.0,
                            height: 40.0,
                            child: CircleAvatar(
                                backgroundColor: Colors.white,
                                backgroundImage: AssetImage("shard/local/img/icons/google.png")
                            )
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children:[
                      const Text(
                        "Don't Have Account",
                        style: TextStyle(
                            fontSize: 18.0,
                            fontFamily: "colasta"
                        ),
                      ),
                      TextButton(onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const SignupScreen(),
                            ));
                      }, child: const Text(
                        "Sign up",
                        style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.w600
                        ),
                      ))
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
