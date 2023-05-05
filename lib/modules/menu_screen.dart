import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({Key? key}) : super(key: key);

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
                        "Services",
                        style: TextStyle(
                            fontSize: 25.0,
                            fontWeight: FontWeight.w700,
                            letterSpacing: 2
                        ),
                      ),
                      const Expanded(child: SizedBox(width: null)),
                      IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
                      IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert)),
                    ],
                  ),
                  const SizedBox(height: 30.0),
                  const Text(
                      "Country Services",
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.w500
                    ),
                  ),
                  const SizedBox(height: 10.0),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        InkWell(
                          onTap: () {},
                          child: SizedBox(
                            width: 180.0,
                            height: 130.0,
                            child: Lottie.asset("shard/local/animation/restaurant.json"),
                          ),
                        ),
                        InkWell(
                          onTap: () {},
                          child: SizedBox(
                            width: 180.0,
                            height: 130.0,
                            child: Lottie.asset("shard/local/animation/delivery.json"),
                          ),
                        ),
                        InkWell(
                          onTap: () {},
                          child: SizedBox(
                            width: 180.0,
                            height: 130.0,
                            child: Lottie.asset("shard/local/img/item_home/car_trans.json"),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
        ),
      ),
    );
  }
}
