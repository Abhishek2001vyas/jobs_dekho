import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:jobs/view/profile.dart';
import 'package:jobs/view/signup.dart';
import 'package:pinput/pinput.dart';
import 'package:get/get.dart';

import '../uitils/clor.dart';
import 'login.dart';



class Verfiy extends StatefulWidget {
  const Verfiy({super.key});

  @override
  State<Verfiy> createState() => _VerfiyState();
}

class _VerfiyState extends State<Verfiy> {
  var code="";

  // get auth => null;

  @override


  Widget build(BuildContext context) {
    final FirebaseAuth auth= FirebaseAuth.instance;

    final defaultPinTheme = PinTheme(
      width: 56,
      height: 56,
      textStyle: TextStyle(
          fontSize: 20,
          color: Color.fromRGBO(30, 60, 87, 1),
          fontWeight: FontWeight.w600),
      decoration: BoxDecoration(
        border: Border.all(color: Color.fromRGBO(234, 239, 243, 1)),
        borderRadius: BorderRadius.circular(20),
      ),
    );

    final focusedPinTheme = defaultPinTheme.copyDecorationWith(
      border: Border.all(color: Color.fromRGBO(114, 178, 238, 1)),
      borderRadius: BorderRadius.circular(8),
    );

    final submittedPinTheme = defaultPinTheme.copyWith(
      decoration: defaultPinTheme.decoration?.copyWith(
        color: Color.fromRGBO(234, 239, 243, 1),
      ),
    );
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        centerTitle: true,
        title: Text("Verification",style: TextStyle(color: colors.primary)),
        backgroundColor: Colors.transparent,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios_rounded,
            color: colors.primary,
          ),
        ),
        elevation: 0,
      ),
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.only(left: 25, right: 25),
          child: SingleChildScrollView(
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [

                SizedBox(
                  height: MediaQuery.of(context).size.height/20,
                ),
                Text(
                  "Code has sent to",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.normal,color: colors.primary),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height/50,
                ),
                Text(
                  "+911234567899",
                  style: TextStyle(
                    fontSize: 25,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height/10,
                ),
                Pinput(
                  length: 6,
                  onChanged: (value){
                    code=value;
                  }
                  ,

                  // defaultPinTheme: defaultPinTheme,
                  // focusedPinTheme: focusedPinTheme,
                  // submittedPinTheme: submittedPinTheme,

                  showCursor: true,
                  onCompleted: (pin) => print(pin),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height/20,
                ),
                Text("Haven't received the verification code?",style: TextStyle(color: colors.primary,fontSize: 19),),
                SizedBox(
                  height: MediaQuery.of(context).size.height/100,
                ),
                Text("Resent",style: TextStyle(color: Colors.black,fontSize: 19),),
                SizedBox(
                  height: MediaQuery.of(context).size.height/10,
                ),
                SizedBox(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height/15,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary:colors.primary,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10))),
                      onPressed: ()
                      async{
                        PhoneAuthCredential credential = PhoneAuthProvider.credential(verificationId: Login.verify, smsCode: code);

                        // Sign the user in
                        // (or link) with the credential

                        await auth.signInWithCredential(credential);
                        Get.offAll(Update1());

                      },
                      child: Text("Verify Phone Number")),
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
