import 'package:flutter/material.dart';
import 'package:toriest/modules/about.dart';
import 'package:toriest/modules/credit_card.dart';
import 'package:toriest/modules/sup_chat.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.only(
                right: 20.0,
                left: 20.0,
                top: 20.0
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      const Text(
                          "Settings",
                        style: TextStyle(
                          fontSize: 25.0,
                          fontWeight: FontWeight.w700,
                          letterSpacing: 2
                        ),
                      ),
                      const Expanded(child: SizedBox(width: null,)),
                      IconButton(
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => const ChatScreen(),));
                          },
                          icon: const Icon(Icons.help_outline)
                      )
                    ],
                  ),
                  InkWell(
                    onTap: () {},
                    child: Row(
                      children: [
                        const SizedBox(
                          width: 100.0,
                          height: 80.0,
                          child: CircleAvatar(
                            backgroundImage: AssetImage("shard/local/img/avatar/me.jpg"),
                          ),
                        ),
                        const SizedBox(width: 20.0),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                                "Hazem Elmasry",
                              style: TextStyle(
                                fontSize: 18.0,
                                fontWeight: FontWeight.w500
                              ),
                            ),
                            SizedBox(height: 10.0),
                            Text("hazemelmasry@gmail.com")
                          ],
                        )
                      ],
                    ),
                  ),
                  const SizedBox(height: 50.0),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: Colors.blueAccent,
                          borderRadius: BorderRadius.circular(15.0)
                      ),
                      height: 50.0,
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 20.0,
                            right: 20.0
                        ),
                        child: Row(
                          children: const [
                            Icon(Icons.security,color: Colors.white),
                            SizedBox(width: 20.0),
                            Text(
                              "Privacy",
                              style: TextStyle(
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20.0),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: Colors.blueAccent,
                          borderRadius: BorderRadius.circular(15.0)
                      ),
                      height: 50.0,
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 20.0,
                            right: 20.0
                        ),
                        child: Row(
                          children: const [
                            Icon(Icons.language_outlined,color: Colors.white),
                            SizedBox(width: 20.0),
                            Text(
                              "Language",
                              style: TextStyle(
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20.0),
                  InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => CreditScreen(),));
                    },
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: Colors.blueAccent,
                          borderRadius: BorderRadius.circular(15.0)
                      ),
                      height: 50.0,
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 20.0,
                            right: 20.0
                        ),
                        child: Row(
                          children: const [
                            Icon(Icons.credit_card,color: Colors.white),
                            SizedBox(width: 20.0),
                            Text(
                              "Credit Card",
                              style: TextStyle(
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20.0),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: Colors.blueAccent,
                          borderRadius: BorderRadius.circular(15.0)
                      ),
                      height: 50.0,
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 20.0,
                            right: 20.0
                        ),
                        child: Row(
                          children: const [
                            Icon(Icons.support_outlined,color: Colors.white),
                            SizedBox(width: 20.0),
                            Text(
                              "Embassy Support",
                              style: TextStyle(
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20.0),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: Colors.blueAccent,
                          borderRadius: BorderRadius.circular(15.0)
                      ),
                      height: 50.0,
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 20.0,
                            right: 20.0
                        ),
                        child: Row(
                          children: const [
                            Icon(Icons.policy,color: Colors.white),
                            SizedBox(width: 20.0),
                            Text(
                              "Policy",
                              style: TextStyle(
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20.0),
                  InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const About(),));
                    },
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.blueAccent,
                        borderRadius: BorderRadius.circular(15.0)
                      ),
                      height: 50.0,
                      child: Padding(
                        padding: const EdgeInsets.only(
                          left: 20.0,
                          right: 20.0
                        ),
                        child: Row(
                          children: const [
                            Icon(Icons.info_outline,color: Colors.white),
                            SizedBox(width: 20.0),
                            Text(
                                "About",
                              style: TextStyle(
                                fontSize: 18.0,
                                fontWeight: FontWeight.w500,
                                color: Colors.white
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )),
      ),
    );
  }
}
