import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:toriest/layout/splach_signup.dart';
import 'log_in.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final formKey = GlobalKey<FormState>();
  bool isPassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(
              right: 20.0,
              left: 20.0,
            ),
            child: Form(
              key: formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Lottie.asset(
                      "shard/local/animation/regist.json",
                      height: 300,
                      width: double.infinity
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  const Text(
                    "Sign up",
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
                  Row(
                    children: [
                      Expanded(
                        child: TextFormField(
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'This field must not be empty';
                            }
                            return null;
                          },
                          keyboardType: TextInputType.name,
                          decoration: InputDecoration(
                              labelText: "Name",
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20.0)
                              )
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 20.0,
                      ),
                      Expanded(
                        child: TextFormField(
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'This field must not be empty';
                            }
                            return null;
                          },
                          keyboardType: TextInputType.name,
                          decoration: InputDecoration(
                              labelText: "Last name",
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20.0)
                              )
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 30.0,
                  ),
                  TextFormField(
                    validator: (value) {
                      if(value == null || value.isEmpty){
                        return 'This field must not be empty';
                      }
                      return null;
                    },
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                        labelText: "Email",
                        prefixIcon: const Icon(Icons.email),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15.0)
                        )
                    ),
                  ),
                  const SizedBox(
                    height: 30.0,
                  ),
                  TextFormField(
                    validator: (value) {
                      if(value == null || value.isEmpty){
                        return 'This field must not be empty';
                      }
                      return null;
                    },
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: isPassword,
                    decoration: InputDecoration(
                        labelText: "Password",
                        suffixIcon: IconButton(onPressed: () {
                          setState(() {
                            isPassword = !isPassword;
                          });
                        }, icon: isPassword ? const Icon(Icons.visibility) : const Icon(Icons.visibility_off)),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15.0)
                        )
                    ),
                  ),
                  const SizedBox(
                    height: 30.0,
                  ),
                  Center(
                    child: SizedBox(
                      width: 200,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 0),
                        child: Material(
                          shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(20.0) ),
                          color: Colors.blue,
                          child: MaterialButton(onPressed: () {
                            if(formKey.currentState!.validate()){
                              Navigator.push(context, MaterialPageRoute(builder: (context) => const SplachSignup(),));
                            }
                          },
                            child: const Text(
                              "Sign up",
                              style: TextStyle(
                                  fontSize: 20.0,
                                  color: Colors.white
                              ),
                            ),
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
                        "Already Have an Account",
                        style: TextStyle(
                            fontSize: 18.0,
                            fontFamily: "colasta"
                        ),
                      ),
                      TextButton(onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const LoginScreen(),
                            ));
                      }, child: const Text(
                        "Login",
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
