import 'package:flutter/material.dart';
import 'package:jobs/view/drawer.dart';
import '../uitils/clor.dart';
import 'package:get/get.dart';

class changepass extends StatefulWidget {
  const changepass({super.key});

  @override
  State<changepass> createState() => _changepassState();
}

class _changepassState extends State<changepass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colors.primary,
      appBar: PreferredSize(
          preferredSize:
              Size.fromHeight(MediaQuery.of(context).size.height * .115),
          child: AppBar(
            leading: IconButton(
                onPressed: () {
                  Get.to(drawer());
                },
                icon: Icon(Icons.menu)),
            title: Text("Change Password",
                style: TextStyle(
                    fontSize: 20,
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w500)),
            centerTitle: true,
            elevation: 0,
            backgroundColor: Colors.transparent,
          )),
      body: Column(children: [
        Container(
          padding: EdgeInsets.only(top: 60, left: 40, right: 50),
          width: MediaQuery.of(context).size.width * 1,
          height: MediaQuery.of(context).size.height / 1.18,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(topRight: Radius.circular(50))),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(
              "Old Password",
              style: TextStyle(color: colors.hinttext),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 100,
            ),
            Material(
                elevation: 10,
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                        decoration: InputDecoration(border: InputBorder.none)),
                  ),
                )),
            SizedBox(
              height: MediaQuery.of(context).size.height / 70,
            ),
            Text(
              "New Password",
              style: TextStyle(color: colors.hinttext),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 100,
            ),
            Material(
                elevation: 10,
                borderRadius: BorderRadius.circular(20),
                child: Container(
                    child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(
                            decoration:
                                InputDecoration(border: InputBorder.none))))),
            SizedBox(
              height: MediaQuery.of(context).size.height / 70,
            ),
            Text(
              "Comfirm Password",
              style: TextStyle(color: colors.hinttext),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 100,
            ),
            Material(
                elevation: 10,
                borderRadius: BorderRadius.circular(20),
                child: Container(
                    child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(
                            decoration:
                                InputDecoration(border: InputBorder.none))))),
            SizedBox(
              height: MediaQuery.of(context).size.height / 10,
            ),
            Container(
                width: MediaQuery.of(context).size.width * .8,
                height: MediaQuery.of(context).size.height /15,

                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(20)),
                child: ElevatedButton(
                    style: ButtonStyle(backgroundColor: MaterialStatePropertyAll<Color>(Color(0xff7F62B0)),
                        shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15)))),
                    onPressed: () {},
                    child: Text("Update")))
          ]),
        )
      ]),
    );
  }
}
