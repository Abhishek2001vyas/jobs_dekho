import 'package:flutter/material.dart';
import 'package:jobs/uitils/clor.dart';
import 'package:get/get.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:jobs/view/drawer.dart';
import 'package:jobs/view/editprofile.dart';
import 'package:jobs/view/notice.dart';
import 'package:jobs/view/signup.dart';
import 'package:jobs/view/wid/textform.dart';
import '../view/comapny deatils.dart';
import 'package:toggle_switch/toggle_switch.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';
import 'package:firebase_storage/firebase_storage.dart';

var uid = Get.arguments;
var y = uid.join('');
int iud = int.parse(y);

var uyt;

class Update1 extends StatefulWidget {
  const Update1({super.key});

  @override
  State<Update1> createState() => _Update1State();
}

class _Update1State extends State<Update1> {
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
                    Get.to(drawer());
                  },
                  icon: Icon(Icons.menu)),
              title: Text("My Profile",
                  style: TextStyle(
                      fontSize: 25,
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w500)),
              centerTitle: true,
              elevation: 0,
              backgroundColor: Colors.transparent,
            )),
        body: SingleChildScrollView(
            child: Container(
                // padding: EdgeInsets.only(left: 10,right: 10),
                width: MediaQuery.of(context).size.width * 1,
                // height: MediaQuery.of(context).size.height / 1.345,
                decoration: const BoxDecoration(
                    color: Color(0xffF6F6F6),
                    borderRadius:
                        BorderRadius.only(topRight: Radius.circular(50))),
                child: Column(children: [
                  SizedBox(height: MediaQuery.of(context).size.height / 50),
                  Center(
                    child: Stack(children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 20.0),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Card(
                                  shape: CircleBorder(side: BorderSide.none),
                                  elevation: 10,
                                  child: IconButton(
                                      onPressed: () {
                                        Get.to(Update2());
                                      },
                                      icon: Icon(
                                        Icons.edit,
                                        color: Colors.red,
                                      )))
                            ]),
                      ),
                      Center(
                        child: CircleAvatar(
                            backgroundColor: colors.primary,
                            radius: 70,
                            child: CircleAvatar(
                                backgroundColor: Colors.white,
                                maxRadius: 65,
                                child: CircleAvatar(
                                  backgroundImage:
                                      AssetImage("assets/images/done.png"),
                                  radius: 60,
                                ))),
                      ),
                      // Positioned(
                      //     left: 95,
                      //
                      //     top: MediaQuery.of(context).size.height / 10,
                      //     child: Material(
                      //         elevation: 5,
                      //         shape: CircleBorder(),
                      //         child: Container(
                      //             height:
                      //                 MediaQuery.of(context).size.height / 20,
                      //             decoration: BoxDecoration(
                      //                 shape: BoxShape.circle,
                      //                 color: Colors.white),
                      //             child: IconButton(
                      //                 onPressed: () {
                      //                   _showBottomSheet(context);
                      //                 },
                      //                 icon: Icon(
                      //                   Icons.linked_camera_outlined,
                      //                   color: colors.primary,
                      //                 ))))),
                    ]),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height / 50),
                  Container(
                    padding: EdgeInsets.only(left: 30, right: 30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text("Currently looking for a Job",
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 15,
                                    fontFamily: "Poppins",
                                    color: colors.primary)),
                            Container(
                                width: MediaQuery.of(context).size.width / 7,
                                height: MediaQuery.of(context).size.height / 45,
                                decoration: BoxDecoration(
                                    color: colors.primary,
                                    borderRadius: BorderRadius.circular(50),
                                    border: Border.all(
                                        color: colors.primary, width: 2)),
                                child: Center(
                                    child: Text(
                                  "Yes",
                                  style: TextStyle(
                                      fontFamily: "Poppins",
                                      color: colors.secondary),
                                ))
                                //important
                                // Row(
                                //   children: [
                                //     GestureDetector(
                                //       onTap: () {
                                //         setState(() {
                                //           yesno = 0;
                                //         });
                                //       },
                                //       child: Container(
                                //         child: Center(
                                //             child: Text(
                                //           "No",
                                //           style: TextStyle(
                                //               fontSize: 10,
                                //               color: yesno == 0
                                //                   ? colors.primary
                                //                   : colors.secondary),
                                //         )),
                                //         width: MediaQuery.of(context).size.width /
                                //             15.4,
                                //         height:
                                //             MediaQuery.of(context).size.height /
                                //                 50,
                                //         decoration: BoxDecoration(
                                //             color: yesno == 1
                                //                 ? colors.primary
                                //                 : colors.secondary,
                                //             borderRadius:
                                //                 BorderRadius.circular(50)),
                                //       ),
                                //     ),
                                //     GestureDetector(
                                //       onTap: () {
                                //         setState(() {
                                //           yesno = 1;
                                //         });
                                //       },
                                //       child: Container(
                                //         child: Center(
                                //             child: Text(
                                //           "yes",
                                //           style: TextStyle(
                                //               fontSize: 10,
                                //               color: yesno == 1
                                //                   ? colors.primary
                                //                   : colors.secondary),
                                //         )),
                                //         width: MediaQuery.of(context).size.width /
                                //             15.4,
                                //         height:
                                //             MediaQuery.of(context).size.height /
                                //                 50,
                                //         decoration: BoxDecoration(
                                //             color: yesno == 0
                                //                 ? colors.primary
                                //                 : colors.secondary,
                                //             borderRadius:
                                //                 BorderRadius.circular(50)),
                                //       ),
                                //     )
                                //   ],
                                // ),
                                ),
                          ],
                        ),
                        SizedBox(
                            height: MediaQuery.of(context).size.height / 50),
                        Row(
                          children: [
                            SizedBox(
                              width: MediaQuery.of(context).size.width / 18,
                            ),
                            Text("Personal Deatils",
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontFamily: "Poppins",
                                    color: colors.primary,
                                    fontSize: 18)),
                          ],
                        ),
                        SizedBox(
                            height: MediaQuery.of(context).size.height / 30),
                        // first name
                        Row(
                          children: [
                            SizedBox(
                              width: MediaQuery.of(context).size.width / 10,
                            ),
                            Text(
                              "First name*",
                              style: TextStyle(
                                  color: colors.hinttext,
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.w500,
                                  fontSize: 15),
                            )
                          ],
                        ),
                        SizedBox(
                            height: MediaQuery.of(context).size.height / 200),
                        Row(
                          children: [
                            SizedBox(
                              width: MediaQuery.of(context).size.width / 20,
                            ),
                            Tex2(
                              tex2: 'Abhishek vyas',
                              textcolor: colors.primary,
                              textfamily: "Poppins",
                            ),
                          ],
                        ),
                        SizedBox(
                            height: MediaQuery.of(context).size.height / 50),
                        //last
                        Row(
                          children: [
                            SizedBox(
                              width: MediaQuery.of(context).size.width / 10,
                            ),
                            Text(
                              "Last name*",
                              style: TextStyle(
                                  color: colors.hinttext,
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.w500,
                                  fontSize: 15),
                            )
                          ],
                        ),
                        SizedBox(
                            height: MediaQuery.of(context).size.height / 200),
                        Row(
                          children: [
                            SizedBox(
                              width: MediaQuery.of(context).size.width / 20,
                            ),
                            Tex2(
                              tex2: 'vyas',
                              textcolor: colors.primary,
                              textfamily: "Poppins",
                            ),
                          ],
                        ),

                        SizedBox(
                            height: MediaQuery.of(context).size.height / 50),
                        // gender
                        Row(
                          children: [
                            SizedBox(
                              width: MediaQuery.of(context).size.width / 10,
                            ),
                            Text(
                              "Gender*",
                              style: TextStyle(
                                  color: colors.hinttext,
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.w500,
                                  fontSize: 15),
                            )
                          ],
                        ),
                        SizedBox(
                            height: MediaQuery.of(context).size.height / 200),
                        Row(
                          children: [
                            SizedBox(
                              width: MediaQuery.of(context).size.width / 20,
                            ),
                            Tex2(
                              tex2: 'MAle',
                              textcolor: colors.primary,
                              textfamily: "Poppins",
                            ),
                          ],
                        ),

                        SizedBox(
                            height: MediaQuery.of(context).size.height / 50),
                        // email
                        Row(
                          children: [
                            SizedBox(
                              width: MediaQuery.of(context).size.width / 10,
                            ),
                            Text(
                              "Email*",
                              style: TextStyle(
                                  color: colors.hinttext,
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.w500,
                                  fontSize: 15),
                            )
                          ],
                        ),
                        SizedBox(
                            height: MediaQuery.of(context).size.height / 200),
                        Row(
                          children: [
                            SizedBox(
                              width: MediaQuery.of(context).size.width / 20,
                            ),
                            Tex2(
                              tex2: 'abhishek@gamil.com',
                              textcolor: colors.primary,
                              textfamily: "Poppins",
                            ),
                          ],
                        ),
                        SizedBox(
                            height: MediaQuery.of(context).size.height / 50),
                        // mobile
                        Row(
                          children: [
                            SizedBox(
                              width: MediaQuery.of(context).size.width / 10,
                            ),
                            Text(
                              "Mobile*",
                              style: TextStyle(
                                  color: colors.hinttext,
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.w500,
                                  fontSize: 15),
                            )
                          ],
                        ),
                        SizedBox(
                            height: MediaQuery.of(context).size.height / 200),
                        Row(
                          children: [
                            SizedBox(
                              width: MediaQuery.of(context).size.width / 20,
                            ),
                            Tex2(
                              tex2: '1234567898',
                              textcolor: colors.primary,
                              textfamily: "Poppins",
                            ),
                          ],
                        ),
                        SizedBox(
                            height: MediaQuery.of(context).size.height / 50),
                        // year passing
                        Row(
                          children: [
                            SizedBox(
                              width: MediaQuery.of(context).size.width / 10,
                            ),
                            Text(
                              "Year of Passing*",
                              style: TextStyle(
                                  color: colors.hinttext,
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.w500,
                                  fontSize: 15),
                            )
                          ],
                        ),
                        SizedBox(
                            height: MediaQuery.of(context).size.height / 200),
                        Row(
                          children: [
                            SizedBox(
                              width: MediaQuery.of(context).size.width / 20,
                            ),
                            Tex2(
                              tex2: '2023',
                              textcolor: colors.primary,
                              textfamily: "Poppins",
                            ),
                          ],
                        ),
                        SizedBox(
                            height: MediaQuery.of(context).size.height / 50),
                        //address
                        Row(
                          children: [
                            SizedBox(
                              width: MediaQuery.of(context).size.width / 10,
                            ),
                            Text(
                              "Current Address*",
                              style: TextStyle(
                                  color: colors.hinttext,
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.w500,
                                  fontSize: 15),
                            )
                          ],
                        ),
                        SizedBox(
                            height: MediaQuery.of(context).size.height / 200),
                        Row(
                          children: [
                            SizedBox(
                              width: MediaQuery.of(context).size.width / 20,
                            ),
                            Tex2(
                              tex2: 'Vijay nagar',
                              textcolor: colors.primary,
                              textfamily: "Poppins",
                            ),
                          ],
                        ),
                        SizedBox(
                            height: MediaQuery.of(context).size.height / 50),
                        //location
                        Row(
                          children: [
                            SizedBox(
                              width: MediaQuery.of(context).size.width / 10,
                            ),
                            Text(
                              "location*",
                              style: TextStyle(
                                  color: colors.hinttext,
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.w500,
                                  fontSize: 15),
                            )
                          ],
                        ),
                        SizedBox(
                            height: MediaQuery.of(context).size.height / 200),
                        Row(
                          children: [
                            SizedBox(
                              width: MediaQuery.of(context).size.width / 20,
                            ),
                            Tex2(
                              tex2: 'pune',
                              textcolor: colors.primary,
                              textfamily: "Poppins",
                            ),
                          ],
                        ),
                        SizedBox(
                            height: MediaQuery.of(context).size.height / 50),
                        //cuctc
                        Row(
                          children: [
                            SizedBox(
                              width: MediaQuery.of(context).size.width / 10,
                            ),
                            Text(
                              "Current CTC*",
                              style: TextStyle(
                                  color: colors.hinttext,
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.w500,
                                  fontSize: 15),
                            )
                          ],
                        ),
                        SizedBox(
                            height: MediaQuery.of(context).size.height / 200),
                        Row(
                          children: [
                            SizedBox(
                              width: MediaQuery.of(context).size.width / 20,
                            ),
                            Tex2(
                              tex2: '5 LPA',
                              textcolor: colors.primary,
                              textfamily: "Poppins",
                            ),
                          ],
                        ),
                        SizedBox(
                            height: MediaQuery.of(context).size.height / 50),
                        //exctc
                        Row(
                          children: [
                            SizedBox(
                              width: MediaQuery.of(context).size.width / 10,
                            ),
                            Text(
                              "Expected CTC*",
                              style: TextStyle(
                                  color: colors.hinttext,
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.w500,
                                  fontSize: 15),
                            )
                          ],
                        ),
                        SizedBox(
                            height: MediaQuery.of(context).size.height / 200),
                        Row(
                          children: [
                            SizedBox(
                              width: MediaQuery.of(context).size.width / 20,
                            ),
                            Tex2(
                              tex2: '10 LPA',
                              textcolor: colors.primary,
                              textfamily: "Poppins",
                            ),
                          ],
                        ),
                        SizedBox(
                            height: MediaQuery.of(context).size.height / 50),
                        //job type
                        Row(
                          children: [
                            SizedBox(
                              width: MediaQuery.of(context).size.width / 10,
                            ),
                            Text(
                              "job Role*",
                              style: TextStyle(
                                  color: colors.hinttext,
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.w500,
                                  fontSize: 15),
                            )
                          ],
                        ),
                        SizedBox(
                            height: MediaQuery.of(context).size.height / 200),
                        Row(
                          children: [
                            SizedBox(
                              width: MediaQuery.of(context).size.width / 20,
                            ),
                            Tex2(
                              tex2: "Developer",
                              textcolor: colors.primary,
                              textfamily: "Poppins",
                            ),
                          ],
                        ),
                        SizedBox(
                            height: MediaQuery.of(context).size.height / 50),
                        //desgination
                        Row(
                          children: [
                            SizedBox(
                              width: MediaQuery.of(context).size.width / 10,
                            ),
                            Text(
                              "Designation**",
                              style: TextStyle(
                                  color: colors.hinttext,
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.w500,
                                  fontSize: 15),
                            )
                          ],
                        ),
                        SizedBox(
                            height: MediaQuery.of(context).size.height / 200),
                        Row(
                          children: [
                            SizedBox(
                              width: MediaQuery.of(context).size.width / 20,
                            ),
                            Tex2(
                              tex2: 'pune',
                              textcolor: colors.primary,
                              textfamily: "Poppins",
                            ),
                          ],
                        ),
                        SizedBox(
                            height: MediaQuery.of(context).size.height / 50),
                        //current jobtype
                        Row(
                          children: [
                            SizedBox(
                              width: MediaQuery.of(context).size.width / 10,
                            ),
                            Text(
                              "current job Role*",
                              style: TextStyle(
                                  color: colors.hinttext,
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.w500,
                                  fontSize: 15),
                            )
                          ],
                        ),
                        SizedBox(
                            height: MediaQuery.of(context).size.height / 200),
                        Row(
                          children: [
                            SizedBox(
                              width: MediaQuery.of(context).size.width / 20,
                            ),
                            Tex2(
                              tex2: 'developer',
                              textcolor: colors.primary,
                              textfamily: "Poppins",
                            ),
                          ],
                        ),
                        SizedBox(
                            height: MediaQuery.of(context).size.height / 50),
                        //key skill
                        Row(
                          children: [
                            SizedBox(
                              width: MediaQuery.of(context).size.width / 10,
                            ),
                            Text(
                              "Key Skills*",
                              style: TextStyle(
                                  color: colors.hinttext,
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.w500,
                                  fontSize: 15),
                            )
                          ],
                        ),
                        SizedBox(
                            height: MediaQuery.of(context).size.height / 200),
                        Row(
                          children: [
                            SizedBox(
                              width: MediaQuery.of(context).size.width / 20,
                            ),
                            Tex2(
                              tex2: 'Flutter',
                              textcolor: colors.primary,
                              textfamily: "Poppins",
                            ),
                          ],
                        ),
                        SizedBox(
                            height: MediaQuery.of(context).size.height / 50),
                        // cgpa
                        Row(
                          children: [
                            SizedBox(
                              width: MediaQuery.of(context).size.width / 10,
                            ),
                            Text(
                              "Percentage/CGPA*",
                              style: TextStyle(
                                  color: colors.hinttext,
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.w500,
                                  fontSize: 15),
                            )
                          ],
                        ),
                        SizedBox(
                            height: MediaQuery.of(context).size.height / 200),
                        Row(
                          children: [
                            SizedBox(
                              width: MediaQuery.of(context).size.width / 20,
                            ),
                            Tex2(
                              tex2: '7.3',
                              textcolor: colors.primary,
                              textfamily: "Poppins",
                            ),
                          ],
                        ),
                        SizedBox(
                            height: MediaQuery.of(context).size.height / 50),
                        //work
                        Row(
                          children: [
                            SizedBox(
                              width: MediaQuery.of(context).size.width / 10,
                            ),
                            Text(
                              "Work Experience*",
                              style: TextStyle(
                                  color: colors.hinttext,
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.w500,
                                  fontSize: 15),
                            )
                          ],
                        ),
                        SizedBox(
                            height: MediaQuery.of(context).size.height / 200),
                        Row(
                          children: [
                            SizedBox(
                              width: MediaQuery.of(context).size.width / 20,
                            ),
                            Tex2(
                              tex2: 'fresher',
                              textcolor: colors.primary,
                              textfamily: "Poppins",
                            ),
                          ],
                        ),
                        SizedBox(
                            height: MediaQuery.of(context).size.height / 50),
                        //special
                        Row(
                          children: [
                            SizedBox(
                              width: MediaQuery.of(context).size.width / 10,
                            ),
                            Text(
                              "Specialization*",
                              style: TextStyle(
                                  color: colors.hinttext,
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.w500,
                                  fontSize: 15),
                            )
                          ],
                        ),
                        SizedBox(
                            height: MediaQuery.of(context).size.height / 200),
                        Row(
                          children: [
                            SizedBox(
                              width: MediaQuery.of(context).size.width / 20,
                            ),
                            Tex2(
                              tex2: 'fresher',
                              textcolor: colors.primary,
                              textfamily: "Poppins",
                            ),
                          ],
                        ),
                        SizedBox(
                            height: MediaQuery.of(context).size.height / 50),
                        //notice //age
                        Row(
                          children: [
                            SizedBox(
                              width: MediaQuery.of(context).size.width / 10,
                            ),
                            Text(
                              "Notice*",
                              style: TextStyle(
                                  color: colors.hinttext,
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.w500,
                                  fontSize: 15),
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width / 4,
                            ),
                            Text(
                              "Age*",
                              style: TextStyle(
                                  color: colors.hinttext,
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.w500,
                                  fontSize: 15),
                            )
                          ],
                        ),
                        SizedBox(
                            height: MediaQuery.of(context).size.height / 200),
                        Row(
                          children: [
                            SizedBox(
                              width: MediaQuery.of(context).size.width / 20,
                            ),
                            Material(
                              elevation: 10,
                              borderRadius: BorderRadius.circular(50),
                              child: Container(
                                padding: EdgeInsets.only(
                                    left: 20, top: 10, bottom: 10),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50)),
                                width: MediaQuery.of(context).size.width / 3,
                                height: MediaQuery.of(context).size.height / 20,
                                child: Text("3 Months",
                                    style: TextStyle(
                                      fontFamily: "Poppins",
                                      color: colors.primary,
                                    )),
                              ),
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width / 20,
                            ),
                            Material(
                              elevation: 10,
                              borderRadius: BorderRadius.circular(50),
                              child: Container(
                                padding: EdgeInsets.only(
                                    left: 20, top: 10, bottom: 10),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50)),
                                width: MediaQuery.of(context).size.width / 3,
                                height: MediaQuery.of(context).size.height / 20,
                                child: Text("22 year",
                                    style: TextStyle(
                                      fontFamily: "Poppins",
                                      color: colors.primary,
                                    )),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                            height: MediaQuery.of(context).size.height / 50),
                        //resume
                        Row(
                          children: [
                            SizedBox(
                              width: MediaQuery.of(context).size.width / 10,
                            ),
                            Text(
                              "Resume*",
                              style: TextStyle(
                                  color: colors.hinttext,
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.w500,
                                  fontSize: 15),
                            )
                          ],
                        ),
                        SizedBox(
                            height: MediaQuery.of(context).size.height / 200),
                        Row(
                          children: [
                            SizedBox(
                              width: MediaQuery.of(context).size.width / 20,
                            ),
                            Tex2(
                              tex2: 'Resume.abhi.file',
                              textcolor: colors.primary,
                              textfamily: "Poppins",
                            ),
                          ],
                        ),

                        SizedBox(
                            height: MediaQuery.of(context).size.height / 10),
                      ],
                    ),
                  )
                ]))));
    // );
    // ));
  }

  var yesno = 0;

  // var qua;
  var uplo;

  // var notice;
  // var we;
  // var sp;
  // var pl;
  // var jr;
  // var ec;
  // var cc;
  // var gender;
  // var loca;

  String? selectedImage;
  String? _chosenValue;
  String? selectedOption;

  String? locationOption;
  String? CctcOption;

  String? EctcOption;

  String? jobOption;
  String? jobOption2;
  String? jobOption3;
  String? jobOption4;

  String? designationOption;

  String? jobRoleOption;

  List<String> dropdownItems = ['Option 1', 'Option 2', 'Option 3', 'Option 4'];

  List<String> qualification = [
    '10th'
        '12th',
    'Graduated',
    'Post Graduated',
  ];

  TextEditingController emailj = TextEditingController();
  TextEditingController firstj = TextEditingController();
  TextEditingController lastj = TextEditingController();
  TextEditingController mobilej = TextEditingController();
  TextEditingController yp = TextEditingController();
  TextEditingController ca = TextEditingController();
  TextEditingController age = TextEditingController();
  TextEditingController cgpa = TextEditingController();
  TextEditingController ks = TextEditingController();

  File? image;

  Future cam() async {
    final image = await ImagePicker().pickImage(source: ImageSource.camera);
    if (image == null) return;
    final imageTemporary = File(image.path);
    print('$imageTemporary');
    setState(() {
      this.image = imageTemporary;
    });
  }

  void _showBottomSheet(BuildContext context) {
    showModalBottomSheet(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(40), topLeft: Radius.circular(40))),
      context: context,
      builder: (BuildContext context) {
        return Container(
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20),
              Container(
                margin: EdgeInsets.only(left: 20),
                child: Text(
                  'Job Portal: Take Image From',
                  style: TextStyle(
                    fontSize: 17,
                    color: Colors.black,
                  ),
                ),
              ),
              SizedBox(height: 20),
              ListTile(
                leading: Icon(
                  Icons.camera_alt,
                  color: Color(0xff7F62B0),
                ),
                title: Text('Camera',
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.w500)),
                onTap: () {
                  cam();
                  // pickImage(ImageSource!.camera,);
                },
              ),
              ListTile(
                leading: Icon(
                  Icons.image,
                  color: Color(0xff7F62B0),
                ),
                title: Text('Gallary',
                    style: TextStyle(
                        fontWeight: FontWeight.w500, color: Colors.black)),
                onTap: () {
                  Navigator.of(context).pop();
                  // pickImage(ImageSource!.gallery);
                },
              ),
              ListTile(
                leading: Icon(Icons.cancel_outlined, color: Color(0xff7F62B0)),
                title: Text('Cancel',
                    style: TextStyle(
                        fontWeight: FontWeight.w500, color: Colors.black)),
                onTap: () {
                  // Implement share functionality
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        );
      },
    );
  }

  final FirebaseStorage _storage = FirebaseStorage.instance;
  final firestore1 = FirebaseFirestore.instance
      .collection("user")
      .doc("jobs_seeker")
      .collection("userj")
      .doc(uyt);

  Future upload(String childname, image) async {
    Reference ref = _storage
        .ref()
        .child(childname + DateTime.now().microsecondsSinceEpoch.toString());
    UploadTask uploadtask = ref.putFile(image);
    // putData(image);
    TaskSnapshot snapshot = await uploadtask;
    String downloadurl = await snapshot.ref.getDownloadURL();
    print('$downloadurl');
    return downloadurl;
  }

  String _btn = "Email";
  int ePress = 1;
  int mPress = 0;
  String? qualificationValue = "10th";
  List list = [];

  @override
  void initState() {
    // TODO: implement initState
    fetch();
    super.initState();
  }

  final firestore = FirebaseFirestore.instance
      .collection('user')
      .doc('jobs_seeker')
      .collection('userj')
      .snapshots();

  CollectionReference ref = FirebaseFirestore.instance
      .collection('user')
      .doc('jobs_seeker')
      .collection('userj');

  fetch() async {
    QuerySnapshot snap = await FirebaseFirestore.instance
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
  }
}
