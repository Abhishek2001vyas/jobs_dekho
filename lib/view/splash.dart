import 'dart:async';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'login.dart';
import 'my jobs.dart';



var finalname;
class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {

  @override
  void initState() {
    // TODO: implement initState
    getvali().whenComplete(()async{
      Timer(Duration(seconds: 3),()=> Navigator.push(context, MaterialPageRoute(builder: (context) {
        return  finalname == null ? Login():Myjobs ();
      },))
        // ( finalname ==null ? Sh(): Mapp()));
      );});
    super.initState();

  }
  Future getvali() async{
    final SharedPreferences qwe = await SharedPreferences.getInstance();
    var obtain = qwe.getString('email');

    setState(() {
      finalname = obtain;

    });
    print(finalname);

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: MediaQuery.of(context).size.width * 1,
      height: MediaQuery.of(context).size.height * 1,
          child: Image.asset('assets/images/splash screen 123.png',fit: BoxFit.fill),
    ));
  }
}
