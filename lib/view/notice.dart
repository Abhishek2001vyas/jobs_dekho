import 'package:flutter/material.dart';
import '../uitils/clor.dart';
import 'package:get/get.dart';

class notce1 extends StatefulWidget {
  const notce1({super.key});

  @override
  State<notce1> createState() => _notce1State();
}

class _notce1State extends State<notce1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colors.primary,
      appBar: PreferredSize(
          preferredSize:
              Size.fromHeight(MediaQuery.of(context).size.height * .1),
          child: AppBar(
            leading: IconButton(
                onPressed: () {
                  Get.back();
                },
                icon: Icon(Icons.menu)),
            title: Text("Notifications",
                style: TextStyle(
                    fontSize: 25,
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w500)),
            centerTitle: true,
            elevation: 0,
            backgroundColor: Colors.transparent,
          )),
      body: SingleChildScrollView(
        child: Column(children: [
          Container(
            width: MediaQuery.of(context).size.width * 1,
            height: MediaQuery.of(context).size.height * 1,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(topRight: Radius.circular(50))),
          )
        ]),
      ),
    );
  }
}
