import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:toriest/modules/passport.dart';
import 'package:toriest/modules/ticket_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                left: 20.0,
                top: 10.0
              ),
              child: Row(
                children: [
                  InkWell(
                    onTap: () {},
                    child: const SizedBox(
                      width: 80.0,
                      height: 100.0,
                      child: CircleAvatar(
                        backgroundImage: AssetImage("shard/local/img/avatar/me.jpg"),
                      ),
                    ),
                  ),
                  const Expanded(
                    child: SizedBox(
                      width: null,
                    ),
                  ),
                  IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
                  InkWell(
                    onTap: () {},
                    child: Lottie.asset(
                        "shard/local/animation/icon_alert_bell.json",
                      height: 80.0,
                      width: 110.0
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            Padding(
              padding: const EdgeInsets.only(
                right: 20.0,
                left: 20.0
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 15.0,
                  ),
                  const Text(
                    "Services",
                    style: TextStyle(
                      fontSize: 22.0,
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        InkWell(
                          onTap: () {},
                          child: Column(
                            children: [
                              Lottie.asset(
                                  "shard/local/animation/traelling.json",
                                  width: 180.0,
                                  height: 120.0
                              ),
                              const Text(
                                "Travel",
                                style: TextStyle(
                                  fontSize: 20.0,
                                ),
                              )
                            ],
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => const PassportScreen(),));
                          },
                          child: Column(
                            children: [
                              Lottie.asset(
                                  "shard/local/animation/passport.json",
                                  width: 180.0,
                                  height: 120.0
                              ),
                              const Text(
                                "Passport",
                                style: TextStyle(
                                  fontSize: 20.0,
                                ),
                              )
                            ],
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => const TicketScreen(),));
                          },
                          child: Column(
                            children: [
                              Lottie.asset(
                                  "shard/local/img/item_home/tiket.json",
                                  width: 180.0,
                                  height: 120.0
                              ),
                              const Text(
                                "Ticket",
                                style: TextStyle(
                                  fontSize: 20.0,
                                ),
                              )
                            ],
                          ),
                        ),
                        InkWell(
                          onTap: () {},
                          child: Column(
                            children: [
                              Lottie.asset(
                                  "shard/local/img/item_home/car_trans.json",
                                  width: 180.0,
                                  height: 120.0
                              ),
                              const Text(
                                "Transport",
                                style: TextStyle(
                                  fontSize: 20.0,
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        )),
      ),
    );
  }
}
