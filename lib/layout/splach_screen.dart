import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../modules/log_in.dart';

class SplachScreen extends StatefulWidget {
  const SplachScreen({Key? key}) : super(key: key);

  @override
  State<SplachScreen> createState() => _SplachScreenState();
}

class _SplachScreenState extends State<SplachScreen> {

  @override
  void initState() {
    Future.delayed(const Duration(seconds: 3,milliseconds: 700),() {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const LoginScreen(),));
    },);
    // TODO: implement initState
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(bottom: 20.0),
        child: Column(
          children: [
            Expanded(child:
            Center(child: Lottie.asset("shard/local/animation/travelworld.json"))
            ),
            const Text(
              "Developed By Hazem Elmasry",
              style: TextStyle(
                  fontSize: 15.0,
                  fontFamily: "colasta"
              ),
            ),
          ],
        ),
      ),
    );
  }
}
