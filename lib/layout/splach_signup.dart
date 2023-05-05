import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:toriest/modules/home.dart';

import 'navi_bar.dart';

class SplachSignup extends StatefulWidget {
  const SplachSignup({Key? key}) : super(key: key);

  @override
  State<SplachSignup> createState() => _SplachSignupState();
}

class _SplachSignupState extends State<SplachSignup> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 3),() {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const NaviScreen(),));
    },);
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(child: Container(
            color: Colors.white,
            child: Center(
                child: Lottie.asset("shard/local/animation/thanks.json"),
            ),
          ),
          ),
        ],
      ),
    );
  }
}
