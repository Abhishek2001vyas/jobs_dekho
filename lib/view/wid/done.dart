import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jobs/view/login.dart';
import '../../uitils/clor.dart';

class Don extends StatefulWidget {
  const Don({super.key});

  @override
  State<Don> createState() => _DonState();
}

class _DonState extends State<Don> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Container(height: MediaQuery.of(context).size.height/2,
          width: MediaQuery.of(context).size.width*1

          ,child: Image.asset("assets/images/done.png",fit: BoxFit.fill),),
        Container(
          height: MediaQuery.of(context).size.height / 200,
            width: MediaQuery.of(context).size.width*1
            ,color: colors.primary,
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height / 15,
        ),
        Center(child: Text("Account Created",style: TextStyle(fontFamily: 'Poppins',fontSize: 40),)),
        Center(child: Text("Successfully",style: TextStyle(fontFamily: 'Poppins',fontSize: 40),)),
        SizedBox(
          height: MediaQuery.of(context).size.height / 8,
        ),
        Container(
          height: MediaQuery.of(context).size.height / 15,
          width: MediaQuery.of(context).size.width * .8,
          decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(15)),
          child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  primary: colors.primary,
                  // shape: StadiumBorder(),
                  shape: RoundedRectangleBorder(
                      borderRadius:
                      BorderRadius.all(Radius.circular(15))),
                  padding: EdgeInsets.only(
                    left: 100,
                    right: 100,
                  )),
              onPressed: () {
                Get.to(Login());
              },
              child: const Text(
                "Done",
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontFamily: 'MyriadPro',
                    fontWeight: FontWeight.w400),
              )),
        ),

      ]),
    );
  }
}
