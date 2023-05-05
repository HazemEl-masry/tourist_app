import 'package:flutter/material.dart';

class About extends StatelessWidget {
  const About({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                  "About",
                style: TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.w700
                ),
              ),
              const SizedBox(height: 50.0),
              Container(
                width: 400.0,
                height: 500.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  border: Border.all(
                      color: Colors.black38,
                    width: 3.5
                  )
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: const [
                      Center(
                        child: SizedBox(
                          height: 120.0,
                          width: 160.0,
                          child: CircleAvatar(
                            backgroundImage: AssetImage("shard/local/img/avatar/me.jpg"),
                          ),
                        ),
                      ),
                      SizedBox(height: 30.0),
                      Text(
                          "Hazem Elmasry",
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.w600,
                            fontFamily: "colasta"
                        ),
                      ),
                      SizedBox(height: 20.0),
                      Text(
                        "Mobile Application Developer",
                        style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.w600,
                            fontFamily: "colasta"
                        ),
                      ),
                      SizedBox(height: 30.0),
                      Text(
                        "Tourist is an application to make you comfortable and helping you and given to you an a special Travel with a lot of services and easy to get help and felling Safety .",
                        style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.w400,
                            fontFamily: "colasta"
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {},
                    child: const SizedBox(
                        width: 80.0,
                        height: 60.0,
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
                        width: 80.0,
                        height: 60.0,
                        child: CircleAvatar(
                            backgroundColor: Colors.white,
                            backgroundImage: AssetImage("shard/local/img/icons/google.png")
                        )
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 40.0),
              const Center(child: Text("2023 © Hazem Elmasry"))
            ],
          ),
        ),
      ),
    );
  }
}
