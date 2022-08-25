import 'dart:ui';

import 'package:flutter/material.dart';

class create_post extends StatefulWidget {
  const create_post({Key? key}) : super(key: key);

  @override
  State<create_post> createState() => _create_postState();
}

class _create_postState extends State<create_post> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(children: [
          Container(
            //color: Colors.pink,
            height: 90,
            child: Row(
              //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  width: 30,
                ),
                Container(
                  child: const Text("Create Post",
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
                ),
                SizedBox(
                  width: 120,
                ),
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.gps_fixed_outlined,
                      size: 40,
                    ))
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Color.fromARGB(255, 182, 177, 174),
                ),
                // ignore: sort_child_properties_last
                child: Row(children: [
                  const SizedBox(
                    width: 2,
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.photo_camera),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  // ignore: prefer_const_constructors
                  Text(
                    "Photos",
                    style: const TextStyle(
                        fontSize: 15, fontWeight: FontWeight.bold),
                  )
                ]),
                height: 40,
                width: 154,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Color.fromARGB(255, 182, 177, 174),
                ),
                // ignore: sort_child_properties_last
                child: Row(children: [
                  const SizedBox(
                    width: 2,
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.videocam),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  // ignore: prefer_const_constructors
                  Text(
                    "Videos",
                    style: const TextStyle(
                        fontSize: 15, fontWeight: FontWeight.bold),
                  )
                ]),
                height: 40,
                width: 154,
              )
            ],
          ),
          const SizedBox(
            width: 20,
          ),
          Container(
            alignment: Alignment.bottomLeft,
            child: Text("Caption",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            margin: EdgeInsets.all(20),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              maxLines: 10,
              decoration: InputDecoration(
                enabledBorder: myinputborder(),
                //fillColor: Colors.pink,
                //filled: true,

                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(color: Colors.green, width: 2)),
                hintText: "Add caption...", hintStyle: TextStyle(fontSize: 20),
              ),
            ),
          )
        ]),
      ),
    );
  }

  OutlineInputBorder myinputborder() {
    //return type is OutlineInputBorder
    return const OutlineInputBorder(
        //Outline border type for TextFeild
        borderRadius: BorderRadius.all(Radius.circular(20)),
        borderSide: BorderSide(
          color: Color.fromARGB(255, 10, 206, 232),
          width: 2,
        ));
  }
}
