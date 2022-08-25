import 'package:flutter/material.dart';
import 'package:meetup/helpers/appcolors.dart';

// ignore: camel_case_types
class user_ui extends StatelessWidget {
  const user_ui({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(title: const Text("HI")),
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(),
              image: DecorationImage(
                  image: AssetImage("assets/images/a1.jpg"), fit: BoxFit.fill),
            ),
            child: Container(
              width: double.infinity,
              height: 250,
            ),
          ),
          Transform.translate(
            offset: const Offset(0.0, 120),
            child: Container(
                child: Container(
                    height: double.infinity,
                    width: size.width,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: const BorderRadius.vertical(
                            top: Radius.circular(20),
                            bottom: Radius.circular(0)),
                        border: Border.all(
                          color: Colors.white,
                          width: size.width * 0.01,
                        )))),
          ),
          Transform.translate(
            offset: Offset(0.0, 0),
            child: Container(
              width: double.infinity,
              height: 200,
              child: Container(
                height: 300,
                alignment: const Alignment(0.0, 0.7),
                child: const CircleAvatar(
                  backgroundImage: AssetImage("assets/images/A.jpg"),
                  radius: 70.0,
                ),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(0, 200, 0, 0),
            alignment: Alignment.center,
            child: Column(children: [
              const Text(
                "User124971240",
                style: TextStyle(fontSize: 20),
              ),
              const Text("@user1111", style: TextStyle(fontSize: 15)),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    height: 40,
                    child: const Center(
                        child: Text("Posts",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold))),
                  ),
                  Container(
                    height: 40,
                    child: const Center(
                        child: Text("Followers",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold))),
                  ),
                  Container(
                    height: 40,
                    child: const Center(
                        child: Text("Following",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold))),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    height: 22,
                    child: const Center(
                        child: Text(
                      "10",
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    )),
                  ),
                  Container(
                    height: 22,
                    child: const Center(
                        child: Text("235",
                            style: TextStyle(
                                fontSize: 24, fontWeight: FontWeight.bold))),
                  ),
                  Container(
                    height: 22,
                    child: const Center(
                        child: Text("100",
                            style: TextStyle(
                                fontSize: 24, fontWeight: FontWeight.bold))),
                  ),
                ],
              ),
              SizedBox(
                height: 90,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                        onPressed: () {},
                        child: const Text(
                          "Follow",
                          style: TextStyle(fontSize: 20),
                        ),
                        style: ElevatedButton.styleFrom(
                          onPrimary: Colors.black,
                          primary: AppColors.MAIN_COLOR,
                          //onSurface: Colors.grey,
                          //side: BorderSide(color: Colors.black, width: 1),
                          elevation: 20,
                          minimumSize: Size(250, 50),
                          //shadowColor: Colors.teal,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25)),
                        )),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.chat_bubble_outline_outlined,
                          size: 40,
                        ))
                  ],
                ),
              )
            ]),
          ),
        ],
      ),
    );
  }
}
