import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jobs/view/wid/card.dart';

import '../uitils/clor.dart';
import 'drawer.dart';
class All extends StatefulWidget {
  const All({super.key});

  @override
  State<All> createState() => _AllState();
}

class _AllState extends State<All> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colors.primary,

      appBar: PreferredSize(
          preferredSize:
          Size.fromHeight(MediaQuery.of(context).size.height * .1),
          child: AppBar(
            actions: [IconButton(onPressed: (){}, icon: Icon(Icons.search))],
            leading: IconButton(onPressed: () {
              Get.to(drawer());
            }, icon: Icon(Icons.menu)),
            title: Text("All Recruiters",
                style: TextStyle(
                    fontSize: 20,
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w500)),
            centerTitle: true,
            elevation: 0,
            backgroundColor: Colors.transparent,
          )),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(padding: EdgeInsets.only(top: 20, left: 40, right: 40),
                width: MediaQuery.of(context).size.width * 1,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius:
                    BorderRadius.only(topRight: Radius.circular(50))),child: Column(children: [
                      SizedBox(height: MediaQuery.of(context).size.height /15, ),
                      Car3(),
                  SizedBox(height: MediaQuery.of(context).size.height /30, ),
                  Car3(),
                  SizedBox(height: MediaQuery.of(context).size.height /30, ),
                  Car3(),
                  SizedBox(height: MediaQuery.of(context).size.height /30, ),

                ],)),
          ],
        ),
      ),

    );
  }
}
