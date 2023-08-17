import 'dart:async';
import 'dart:convert';
import 'package:jobs/view/profile.dart';
import 'package:jobs/view/verfiy.dart';
import '../modle.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/material.dart';
import 'package:jobs/view/signup.dart';
import 'package:jobs/view/wid/textform.dart';
import '../uitils/clor.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../uitils/noti.dart';
class Login extends StatefulWidget {
  const Login({super.key});
  static String verify="";

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {


  final _formkey = GlobalKey<FormState>();

  String button = 'Phone';
  String qwe = 'email';
  int q = 0;
  int w = 0;
  List list = [];
  TextEditingController mobile = TextEditingController();
  TextEditingController pass = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController countryController = TextEditingController();
  @override
  void initState() {
    // TODO: implement initState
    notificationsServices.initialiseNotification();
    countryController.text = "+91";
    super.initState();
  }

  // final firebase = FirebaseFirestore.instance.collection('user');

  final firestore = FirebaseFirestore.instance
      .collection('user')
      .doc('jobs_seeker')
      .collection('userj')
      .snapshots();

  CollectionReference ref = FirebaseFirestore.instance
      .collection('user')
      .doc('jobs_seeker')
      .collection('userj');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colors.primary,
      body: Form(
        key: _formkey,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * .1,
              ),
              Center(
                  child: Image.asset(
                "assets/images/home logo.png",
              )),
              Container(
                width: MediaQuery.of(context).size.width * 1,
                // height: MediaQuery.of(context).size.height / 1.345,
                decoration: const BoxDecoration(
                    color: colors.secondary,
                    borderRadius:
                        BorderRadius.only(topRight: Radius.circular(50))),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10.0, top: 30),
                      child: Text(
                        "Sign In",
                        style:
                            TextStyle(fontSize: 40, fontFamily: 'nasalization'),
                      ),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 90),
                          child: Row(
                            children: [
                              Radio(
                                  activeColor: Color(0xff7F62B0),
                                  value: "Phone",
                                  groupValue: button,
                                  onChanged: (value) {
                                    setState(() {
                                      q = 0;
                                      button = value.toString();
                                    });
                                  }),
                              Text("Job Seeker",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontFamily: 'Poppins',
                                      color: q == 0
                                          ? colors.primary
                                          : colors.hinttext)),
                              Radio(
                                  activeColor: Color(0xff7F62B0),
                                  value: "Recruiter",
                                  groupValue: button,
                                  onChanged: (value) {
                                    setState(() {
                                      q = 1;
                                      button = value.toString();
                                    });
                                  }),
                              Text(
                                "Recruiter",
                                style: TextStyle(
                                    fontSize: 15,
                                    fontFamily: 'Poppins',
                                    color: q == 1
                                        ? colors.primary
                                        : colors.hinttext),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 90),
                          child: Row(
                            children: [
                              Radio(
                                  activeColor: Color(0xff7F62B0),
                                  value: "email",
                                  groupValue: qwe,
                                  onChanged: (value) {
                                    setState(() {
                                      w = 0;
                                      qwe = value.toString();
                                    });
                                  }),
                              Text("Email",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontFamily: 'Poppins',
                                      color: w == 0
                                          ? colors.primary
                                          : colors.hinttext)),
                              SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * .1),
                              Radio(
                                  activeColor: Color(0xff7F62B0),
                                  value: "mobile",
                                  groupValue: qwe,
                                  onChanged: (value) {
                                    setState(() {
                                      w = 1;
                                      qwe = value.toString();
                                    });
                                  }),
                              Text(
                                "Mobile No.",
                                style: TextStyle(
                                    fontSize: 15,
                                    fontFamily: 'Poppins',
                                    color: w == 1
                                        ? colors.primary
                                        : colors.hinttext),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height / 40),
                    q == 0 && w == 0
                        ? Column(
                            children: [
                              Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Material(
                                      borderRadius: BorderRadius.circular(18),
                                      elevation: 10,
                                      child: Container(
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(0)),
                                        width:
                                            MediaQuery.of(context).size.width /
                                                7,
                                        height:
                                            MediaQuery.of(context).size.height /
                                                15,
                                        child: Icon(
                                          Icons.email_rounded,
                                          size: 30,
                                          color: colors.primary,
                                        ),
                                      ),
                                    ),
                                    Material(
                                      borderRadius: BorderRadius.circular(18),
                                      elevation: 10,
                                      child: Container(
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(20)),
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width /
                                              1.5,
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height /
                                              15,
                                          child: Padding(
                                            padding: const EdgeInsets.all(10.0),
                                            child: TextFormField(
                                              controller: email,

                                              decoration: InputDecoration(
                                                  hintText: "Email",
                                                  hintStyle: TextStyle(
                                                      color: colors.hinttext),
                                                  border: InputBorder.none),
                                            ),
                                          )),
                                    ),
                                  ]),
                              SizedBox(
                                  height:
                                      MediaQuery.of(context).size.height / 50),
                              Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Material(
                                      borderRadius: BorderRadius.circular(18),
                                      elevation: 10,
                                      child: Container(
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(15)),
                                        width:
                                            MediaQuery.of(context).size.width /
                                                7,
                                        height:
                                            MediaQuery.of(context).size.height /
                                                15,
                                        child: Icon(
                                          Icons.lock,
                                          color: colors.primary,
                                          size: 30,
                                        ),
                                      ),
                                    ),
                                    Material(
                                      borderRadius: BorderRadius.circular(18),
                                      elevation: 10,
                                      child: Container(
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(20)),
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width /
                                              1.5,
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height /
                                              15,
                                          child: Padding(
                                            padding: const EdgeInsets.all(10.0),
                                            child: TextFormField(
                                              controller: pass,
                                              decoration: InputDecoration(
                                                  hintText: "password",
                                                  hintStyle: TextStyle(
                                                      color: colors.hinttext),
                                                  border: InputBorder.none),
                                            ),
                                          )),
                                    ),
                                  ]),
                              SizedBox(
                                  height:
                                      MediaQuery.of(context).size.height / 50),
                              Row(
                                children: [
                                  SizedBox(
                                      width: MediaQuery.of(context).size.width /
                                          1.69),
                                  TextButton(
                                      onPressed: () {},
                                      child: Text("Forget Password?",
                                          style: TextStyle(
                                              color: colors.hinttext))),
                                ],
                              ),
                            ],
                          )
                        : q == 0 && w == 1
                            ? Column(children: [
                                SizedBox(
                                    height: MediaQuery.of(context).size.height /
                                        50),
                                Tex(
                                    controller: mobile,
                                    icon: Icons.call,
                                    // keyboard: TextInputType.number,
                                    hint: 'Mobile no',
                                    // a: 10,
                                    color: colors.primary),
                              ])
                            : q == 1 && w == 1
                                ? Column(children: [
                                    SizedBox(
                                        height:
                                            MediaQuery.of(context).size.height /
                                                50),
                                    Tex(
                                        controller: mobile,
                                        icon: Icons.call,
                                        keyboard: TextInputType.number,
                                        hint: 'Mobile no',
                                        color: colors.primary),
                                  ])
                                : Column(
                                    children: [
                                      Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Material(
                                              borderRadius:
                                                  BorderRadius.circular(18),
                                              elevation: 10,
                                              child: Container(
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            0)),
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width /
                                                    7,
                                                height: MediaQuery.of(context)
                                                        .size
                                                        .height /
                                                    15,
                                                child: Icon(
                                                  Icons.email_rounded,
                                                  size: 30,
                                                  color: colors.primary,
                                                ),
                                              ),
                                            ),
                                            Material(
                                              borderRadius:
                                                  BorderRadius.circular(18),
                                              elevation: 10,
                                              child: Container(
                                                  decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              20)),
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width /
                                                      1.5,
                                                  height: MediaQuery.of(context)
                                                          .size
                                                          .height /
                                                      15,
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            10.0),
                                                    child: TextFormField(
                                                      controller: email,


                                                      decoration: InputDecoration(
                                                          hintText: "Email",
                                                          hintStyle: TextStyle(
                                                              color: colors
                                                                  .hinttext),
                                                          border:
                                                              InputBorder.none),
                                                    ),
                                                  )),
                                            ),
                                          ]),
                                      SizedBox(
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height /
                                              50),
                                      Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Material(
                                              borderRadius:
                                                  BorderRadius.circular(18),
                                              elevation: 10,
                                              child: Container(
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            15)),
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width /
                                                    7,
                                                height: MediaQuery.of(context)
                                                        .size
                                                        .height /
                                                    15,
                                                child: Icon(
                                                  Icons.lock,
                                                  color: colors.primary,
                                                  size: 30,
                                                ),
                                              ),
                                            ),
                                            Material(
                                              borderRadius:
                                                  BorderRadius.circular(18),
                                              elevation: 10,
                                              child: Container(
                                                  decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              20)),
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width /
                                                      1.5,
                                                  height: MediaQuery.of(context)
                                                          .size
                                                          .height /
                                                      15,
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            10.0),
                                                    child: TextFormField(
                                                      controller: pass,
                                                      decoration: InputDecoration(
                                                          hintText: "password",
                                                          hintStyle: TextStyle(
                                                              color: colors
                                                                  .hinttext),
                                                          border:
                                                              InputBorder.none),
                                                    ),
                                                  )),
                                            ),
                                          ]),
                                      SizedBox(
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height /
                                              50),
                                      Row(
                                        children: [
                                          SizedBox(
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width /
                                                  1.69),
                                          TextButton(
                                              onPressed: () {},
                                              child: Text("Forget Password?",
                                                  style: TextStyle(
                                                      color: colors.hinttext))),
                                        ],
                                      ),
                                    ],
                                  )

                    // q==1&&w==1?
                    // Column(children: [
                    //
                    //   Row(
                    //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    //       children: [
                    //         Material(
                    //           borderRadius: BorderRadius.circular(18),
                    //           elevation: 10,
                    //           child: Container(
                    //             decoration: BoxDecoration(
                    //                 borderRadius: BorderRadius.circular(0)),
                    //             width: MediaQuery.of(context).size.width /7,
                    //             height: MediaQuery.of(context).size.height/15,
                    //             child: Icon(
                    //               Icons.email_rounded,
                    //               size: 30,
                    //               color: colors.primary,
                    //             ),
                    //           ),
                    //         ),
                    //         Material(
                    //           borderRadius: BorderRadius.circular(18),
                    //           elevation: 10,
                    //           child: Container(
                    //               decoration: BoxDecoration(
                    //                   borderRadius: BorderRadius.circular(20)),
                    //               width: MediaQuery.of(context).size.width/1.5,
                    //               height: MediaQuery.of(context).size.height/15,
                    //               child: Padding(
                    //                 padding: const EdgeInsets.all(10.0),
                    //                 child: TextFormField(keyboardType: TextInputType.emailAddress,
                    //                   decoration: InputDecoration(hintText: "Email",
                    //                       hintStyle: TextStyle(color: colors.hinttext),
                    //                       border: InputBorder.none),
                    //                 ),
                    //               )),
                    //         ),
                    //       ]),
                    //   SizedBox(height: MediaQuery.of(context).size.height/50),
                    //   Row(
                    //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    //       children: [
                    //         Material(
                    //           borderRadius: BorderRadius.circular(18),
                    //           elevation: 10,
                    //           child: Container(
                    //             decoration: BoxDecoration(
                    //                 borderRadius: BorderRadius.circular(15)),
                    //             width: MediaQuery.of(context).size.width /7,
                    //             height: MediaQuery.of(context).size.height/15,
                    //             child: Icon(
                    //               Icons.lock,
                    //               color: colors.primary,
                    //               size: 30,
                    //
                    //             ),
                    //           ),
                    //         ),
                    //         Material(
                    //           borderRadius: BorderRadius.circular(18),
                    //           elevation: 10,
                    //           child: Container(
                    //               decoration: BoxDecoration(
                    //                   borderRadius: BorderRadius.circular(20)),
                    //               width: MediaQuery.of(context).size.width/1.5,
                    //               height: MediaQuery.of(context).size.height/15,
                    //               child: Padding(
                    //                 padding: const EdgeInsets.all(10.0),
                    //                 child: TextFormField(keyboardType: TextInputType.number,
                    //                   decoration: InputDecoration(
                    //                       hintText: "password",
                    //                       hintStyle: TextStyle(color: colors.hinttext),
                    //                       border: InputBorder.none),
                    //                 ),
                    //               )),
                    //         ),
                    //       ]),
                    //   SizedBox(height: MediaQuery.of(context).size.height/50),
                    //   Row(
                    //     children: [SizedBox(width: MediaQuery.of(context).size.width/1.69),
                    //       TextButton(onPressed: (){},child: Text("Forget Password?",style: TextStyle(color: colors.hinttext))),
                    //     ],
                    //   ),],):
                    //
                    // Column(children: [
                    //   SizedBox(
                    //       height: MediaQuery.of(context).size.height / 50),
                    //   Tex(
                    //       icon: Icons.call,
                    //       keyboard: TextInputType.number,
                    //       hint: 'Mobile no',
                    //       color: colors.primary),
                    // ]),

                    ,
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 19.5,
                    ),
                    w == 0
                        ? Container(
                            height: MediaQuery.of(context).size.height / 15,
                            width: MediaQuery.of(context).size.width * .8,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15)),
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    primary: colors.primary,
                                    // shape: StadiumBorder(),
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(15))),
                                    padding: EdgeInsets.only(
                                      left: 100,
                                      right: 100,
                                    )),
                                onPressed: () async{
                                  list.clear();
                                  QuerySnapshot snap = await FirebaseFirestore
                                      .instance
                                      .collection('user')
                                      .doc('jobs_seeker')
                                      .collection('userj')
                                      .get();
                                  snap.docs.forEach((document) {
                                    // print(document.data());
                                    // print(document.data().toString());

                                    setState(() {
                                      list.add(document.data());
                                    });
                                  });
                                  // var qwe =await ref.doc().snapshots();
                                  // final mo=qwe.length;
                                  //       // await ref.doc().get();
                                  //   print(mo);

                                  //
                                  // QuerySnapshot asd = await ref.snapshots().first;
                                  // print(asd.toString());

                                  // final datw = doc.data();
//                                   var use=ref.get().then((DocumentSnapshot doc){
// final data= doc.data();
//                                   } as FutureOr Function(QuerySnapshot<Object?> value));

                                  // if (_formkey.currentState!.validate()) {
                                  //   Get.to(Verfiy());
                                  // }
                                  print(list.toString());
                                  // QuerySnapshot<Map<String,dynamic>>
                                  // final use=mobile.docs.map((userj) => User(mobile: userj['mobile'])).toList();

                                  // //  // var mobliedata=await ref.doc().get();
                                  // //
                                  //  DocumentSnapshot<Map<String,dynamic>> mobliedata = await firebase.doc("jobs seeker").get();
                                  // //  // final Map<String, dynamic> jsonData = json.decode(mobliedata as String);
                                  // setState(() {
                                  //  list!.add(qwe);
                                  //
                                  // });
                                  // var d=list?.map((e){
                                  //   mobile:;
                                  //
                                  // });
                                  var t = pass.text.toString();
                                  var u=email.text.toString();
                                  int trendIndex =
                                  list.indexWhere((f) => f['pass'] == t);
                                  int ind =
                                  list.indexWhere((f) => f['email'] == u);


                                  print("--------------------");
                                  // print(list.elementAt(trendIndex).toString());
                                  print(ind);
                                  print(trendIndex);
                                  if(t.isEmpty && u.isEmpty) {
                                    Fluttertoast.showToast(
                                        msg: 'please enter ',
                                        toastLength: Toast.LENGTH_SHORT,
                                        gravity: ToastGravity.BOTTOM,
                                        timeInSecForIosWeb: 1,
                                        backgroundColor: colors.primary,
                                        textColor: Colors.yellow
                                    );
                                  }
                                 else if(ind==-1 || trendIndex==-1){
                                    Fluttertoast.showToast(
                                        msg: 'email or passwaord not register',
                                        toastLength: Toast.LENGTH_SHORT,
                                        gravity: ToastGravity.BOTTOM,
                                        timeInSecForIosWeb: 1,
                                        backgroundColor: colors.primary,
                                        textColor: Colors.yellow
                                    );
                                  }
                                  else{
                                    final SharedPreferences qwe = await SharedPreferences.getInstance();
                                    qwe.setString('email', email.text);
                                    Get.to(Update1(),arguments: [
                                    trendIndex
                                  ]);
                                    notificationsServices.sendNotification("Jobs Dekho", 'Account sucessfull login' );
                                  }



                                },
                                child: const Text(
                                  "Sign In",
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.white,
                                      fontFamily: 'MyriadPro',
                                      fontWeight: FontWeight.w400),
                                )),
                          )
                        : Container(
                            height: MediaQuery.of(context).size.height / 15,
                            width: MediaQuery.of(context).size.width * .8,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15)),
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    primary: colors.primary,
                                    // shape: StadiumBorder(),
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(15))),
                                    padding: EdgeInsets.only(
                                      left: 100,
                                      right: 100,
                                    )),
                                onPressed: () async {
                                  list.clear();
                                  QuerySnapshot snap = await FirebaseFirestore
                                      .instance
                                      .collection('user')
                                      .doc('jobs_seeker')
                                      .collection('userj')
                                      .get();
                                  snap.docs.forEach((document) {
                                    // print(document.data());
                                    // print(document.data().toString());

                                    setState(() {
                                      list.add(document.data());
                                    });
                                  });
                                  // var qwe =await ref.doc().snapshots();
                                  // final mo=qwe.length;
                                  //       // await ref.doc().get();
                                  //   print(mo);

                                  //
                                  // QuerySnapshot asd = await ref.snapshots().first;
                                  // print(asd.toString());

                                  // final datw = doc.data();
//                                   var use=ref.get().then((DocumentSnapshot doc){
// final data= doc.data();
//                                   } as FutureOr Function(QuerySnapshot<Object?> value));

                                  // if (_formkey.currentState!.validate()) {
                                  //   Get.to(Verfiy());
                                  // }
                                  print(list.toString());
                                  // QuerySnapshot<Map<String,dynamic>>
                                  // final use=mobile.docs.map((userj) => User(mobile: userj['mobile'])).toList();

                                  // //  // var mobliedata=await ref.doc().get();
                                  // //
                                  //  DocumentSnapshot<Map<String,dynamic>> mobliedata = await firebase.doc("jobs seeker").get();
                                  // //  // final Map<String, dynamic> jsonData = json.decode(mobliedata as String);
                                  // setState(() {
                                  //  list!.add(qwe);
                                  //
                                  // });
                                  // var d=list?.map((e){
                                  //   mobile:;
                                  //
                                  // });
                                    var d = mobile.text.toString();
                                  int trendIndex =
                                      list.indexWhere((f) => f['mobile'] == d);

                                  print("--------------------");
                                  print(trendIndex);

                                   trendIndex==-1?
                                   Fluttertoast.showToast(
                                       msg: 'number not register',
                                       toastLength: Toast.LENGTH_SHORT,
                                       gravity: ToastGravity.BOTTOM,
                                       timeInSecForIosWeb: 1,
                                       backgroundColor: colors.primary,
                                       textColor: Colors.yellow
                                   )  :


                                   await FirebaseAuth.instance.verifyPhoneNumber(
                                     phoneNumber:
                                     '${countryController.text + mobile.text} ',
                                     verificationCompleted:
                                         (PhoneAuthCredential credential) {},
                                     verificationFailed: (FirebaseAuthException e) {},
                                     codeSent:
                                         (String verificationId, int? resendToken) {
                                       Login.verify = verificationId;
                                       Get.to(Verfiy());


                                     },
                                     codeAutoRetrievalTimeout:
                                         (String verificationId) {},
                                   );



                                  print(list.length);
                                },
                                child: const Text(
                                  "Sent OTP",
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.white,
                                      fontFamily: 'MyriadPro',
                                      fontWeight: FontWeight.w400),
                                )),
                          ),
                    w == 0
                        ? Column(
                            children: [
                              SizedBox(
                                height: MediaQuery.of(context).size.height / 15,
                              ),
                              Padding(
                                padding: EdgeInsets.all(10),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    const Text(
                                      "don't have an account?",
                                      style: TextStyle(
                                          fontSize: 15,
                                          color: colors.hinttext,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.normal),
                                    ),
                                    TextButton(
                                      child: Text('signup',
                                          textAlign: TextAlign.justify,
                                          style: TextStyle(
                                              color: colors.primary,
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.w600)),
                                      onPressed: () {
                                        Get.to(Signup());
                                      },
                                    )
                                  ],
                                ),
                              ),
                            ],
                          )
                        : Column(
                            children: [
                              SizedBox(
                                height: MediaQuery.of(context).size.height / 5,
                              ),
                              Padding(
                                padding: EdgeInsets.all(10),
                                child:
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    const Text(
                                      "don't have an account?",
                                      style: TextStyle(
                                          fontSize: 15,
                                          color: colors.hinttext,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.normal),
                                    ),
                                    TextButton(
                                      child: Text('signup',
                                          textAlign: TextAlign.justify,
                                          style: TextStyle(
                                              color: colors.primary,
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.w600)),
                                      onPressed: () {
                                        Get.to(Signup());
                                      },
                                    )
                                  ],
                                ),
                              ),
                            ],
                          )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
  notification notificationsServices =notification();

// Future<StreamBuilder<QuerySnapshot<Map<String, dynamic>>>> fetch() async {
//   return StreamBuilder(stream: firestore,builder: (BuildContext context, AsyncSnapshot<QuerySnapshot>snapshot) {
//     return ListView.builder(
//       itemCount: snapshot.data!.docs.length,
//       itemBuilder: (context, index) {
//         return null;
//
//
//           // title:Text(snapshot.data!.docs[index]['Title'].toString()) ,
//
//       },);
//   },);
//
//
// }
// Future<List<Map<String, dynamic>>?> fetch() async {
//   try {
//     var querySnapshot = await FirebaseFirestore.instance
//         .collection('users')
//         .doc('jobs_seeker')
//         .collection('posts')
//         .get();
//
//     List<Map<String, dynamic>> posts = [];
//
//     querySnapshot.docs.forEach((doc) {
//       list!.add(doc.data().values.first);
//     });
//     print(list!.length);
//     return list;
//   } catch (e) {
//     print("Error fetching posts: $e");
//     return [];
//
//   }
}
// fetch (){
//  final data=firebase.doc("jobs seeker").get() ;
//   mapRecords(data as QuerySnapshot<Map<String, dynamic>>);
// }
// mapRecords(QuerySnapshot<Map<String,dynamic>>data){
//   var r= data.docs.map((user)=>User(mobile:user['mobile'])).toList();
//   setState(() {
//     list=r;
//   });
//   print(list);
// }
