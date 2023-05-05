import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:toriest/modules/sup_chat.dart';

class PassportScreen extends StatelessWidget {
  const PassportScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                top: 20.0,
                right: 20.0,
                left: 20.0
              ),
              child: Row(
                children: [
                  const Text(
                      'Passport',
                    style: TextStyle(
                      fontSize: 25.0,
                      fontWeight: FontWeight.w700,
                      letterSpacing: 2
                    ),
                  ),
                  const Expanded(child: SizedBox(width: null)),
                  IconButton(onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const ChatScreen(),));
                  }, icon: const Icon(Icons.help_outline))
                ],
              ),
            ),
            Lottie.asset("shard/local/animation/passport.json"),
            // const SizedBox(
            //   height: 30.0,
            // ),
            Padding(
              padding: const EdgeInsets.only(
                right: 20.0,
                left: 20.0,
                bottom: 20.0
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Name",
                    style: TextStyle(
                        fontSize: 20.0,
                      fontWeight: FontWeight.w500
                    ),
                  ),
                  const SizedBox(height: 10.0),
                  Container(
                    width: double.infinity,
                    height: 60.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0),
                        border: Border.all(
                            color: Colors.black26,
                            width: 2.0
                        )
                    ),
                    alignment: Alignment.centerLeft,
                    child: const Padding(
                      padding: EdgeInsets.only(
                        left: 10.0
                      ),
                      child: Text(
                          'Hazem Mohamed Elmasry',
                        style: TextStyle(
                          fontSize: 20.0,
                          fontFamily: "colasta"
                        ),
                              ),
                    ),
                  ),
                  const SizedBox(height: 20.0),
                  const Text(
                    "National ID",
                    style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.w500
                    ),
                  ),
                  const SizedBox(height: 10.0),
                  Container(
                    width: double.infinity,
                    height: 60.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0),
                        border: Border.all(
                            color: Colors.black26,
                            width: 2.0
                        )
                    ),
                    alignment: Alignment.centerLeft,
                    child: const Padding(
                      padding: EdgeInsets.only(
                          left: 10.0
                      ),
                      child: Text(
                        '2015769859021',
                        style: TextStyle(
                            fontSize: 20.0,
                            fontFamily: "colasta"
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20.0),
                  const Text(
                    "Birth Day",
                    style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.w500
                    ),
                  ),
                  const SizedBox(height: 10.0),
                  Container(
                    width: double.infinity,
                    height: 60.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0),
                        border: Border.all(
                            color: Colors.black26,
                            width: 2.0
                        )
                    ),
                    alignment: Alignment.centerLeft,
                    child: const Padding(
                      padding: EdgeInsets.only(
                          left: 10.0
                      ),
                      child: Text(
                        '2002/08/15',
                        style: TextStyle(
                            fontSize: 20.0,
                            fontFamily: "colasta"
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20.0),
                  const Text(
                    "Country",
                    style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.w500
                    ),
                  ),
                  const SizedBox(height: 10.0),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          // width: double.infinity,
                          height: 60.0,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15.0),
                              border: Border.all(
                                  color: Colors.black26,
                                  width: 2.0
                              )
                          ),
                          alignment: Alignment.centerLeft,
                          child: const Padding(
                            padding: EdgeInsets.only(
                                left: 10.0
                            ),
                            child: Text(
                              'Egypt',
                              style: TextStyle(
                                  fontSize: 20.0,
                                  fontFamily: "colasta"
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 15.0),
                      Expanded(
                        child: Container(
                          // width: double.infinity,
                          height: 60.0,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15.0),
                              border: Border.all(
                                  color: Colors.black26,
                                  width: 2.0
                              )
                          ),
                          alignment: Alignment.centerLeft,
                          child: const Padding(
                            padding: EdgeInsets.only(
                                left: 10.0
                            ),
                            child: Text(
                              'Giza',
                              style: TextStyle(
                                  fontSize: 20.0,
                                  fontFamily: "colasta"
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        )),
      ),
    );
  }
}
