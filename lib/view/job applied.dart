import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jobs/view/wid/card2.dart';
import '../uitils/clor.dart';
import 'drawer.dart';

class jobsapllied extends StatefulWidget {
  const jobsapllied({super.key});

  @override
  State<jobsapllied> createState() => _jobsaplliedState();
}

class _jobsaplliedState extends State<jobsapllied> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colors.primary,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 1,
                height: MediaQuery.of(context).size.height * .1,
                child: Row(
                  children: [
                    IconButton(
                        onPressed: () {
                          Get.to(drawer());
                        },
                        icon: Icon(
                          Icons.menu,
                          color: Colors.white,
                        )),
                    Container(
                        width: MediaQuery.of(context).size.width * .8,
                        child: Center(
                            child: Text(
                          "Applied",
                          style: TextStyle(color: Colors.white,fontSize: 20),
                        ))),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 20, left: 30, right: 40),
                width: MediaQuery.of(context).size.width * 1,
                height: MediaQuery.of(context).size.height * 1,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius:
                        BorderRadius.only(topRight: Radius.circular(50))),
                child: Column(children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 30,
                  ),
                  Car2(
                    id: 7,
                    role: "Exicutive",
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 50,
                  ),
                  Car2(
                    id: 8,
                    role: "Assistant Manager",
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 50,
                  ),
                  Car2(
                    id: 9,
                    role: "Assistant Manager",
                  ),
                ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
