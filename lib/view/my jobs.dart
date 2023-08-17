import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jobs/view/wid/card2.dart';
import '../uitils/clor.dart';
import 'drawer.dart';

class Myjobs extends StatefulWidget {
  const Myjobs({super.key});

  @override
  State<Myjobs> createState() => _MyjobsState();
}

class _MyjobsState extends State<Myjobs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colors.primary,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(children: [
              IconButton(
                  onPressed: () {
                    Get.to(drawer());
                  },
                  icon: Icon(
                    Icons.menu,
                    color: Colors.white,
                  )),
              SizedBox(width: MediaQuery.of(context).size.width / 9),
              Container(
                  child: Image.asset(
                "assets/images/home logo.png",
              )),
              SizedBox(width: MediaQuery.of(context).size.width / 20),
              IconButton(
                  onPressed: () {
                    Get.to(drawer());
                  },
                  icon: Icon(
                    Icons.search,
                    color: Colors.white,
                  )),
              IconButton(
                  onPressed: () {
                    Get.to(drawer());
                  },
                  icon: Icon(
                    Icons.filter_alt,
                    color: Colors.white,
                  ))
            ]),
            Container(
              padding: EdgeInsets.only(top: 20, left: 30, right: 40),
              width: MediaQuery.of(context).size.width * 1,
              height: MediaQuery.of(context).size.height * 1,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius:
                      BorderRadius.only(topRight: Radius.circular(50))),
              child: Column(children: [
                Row(
                  children: [
                    CircleAvatar(
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(100),
                          child: Image.asset("assets/images/done.png",
                              fit: BoxFit.fill)),
                      radius: 30,
                    ),
                    SizedBox(width: MediaQuery.of(context).size.width /50),
                    Column(mainAxisAlignment: MainAxisAlignment.end,crossAxisAlignment: CrossAxisAlignment.start,children: [
                      Text("Welcome Back!"),
                      Text("Abhishek",style: TextStyle(color: colors.primary,fontFamily: "Nobel",fontSize: 30)),

                    ],)
                  ],
                ),
                SizedBox(height: MediaQuery.of(context).size.height /30,),
                Car2(
                  id: 7,
                  role: "Exicutive",
                ),
                SizedBox(height: MediaQuery.of(context).size.height /50,),
                Car2(
                  id: 8,
                  role: "Assistant Manager",
                ),
                SizedBox(height: MediaQuery.of(context).size.height /50,),
                Car2(
                  id: 9,
                  role: "Assistant Manager",
                ),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
