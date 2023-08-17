import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:jobs/uitils/clor.dart';
import 'package:get/get.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:jobs/view/drawer.dart';
import 'package:jobs/view/splash.dart';
import 'package:jobs/view/wid/textform.dart';
import 'dart:io';
import 'package:file_picker/file_picker.dart';
import 'package:image_picker/image_picker.dart';
import 'package:firebase_storage/firebase_storage.dart';

var uid = Get.arguments;
var y = uid.join('');
int iud = int.parse(y);

var uyt;

class Update2 extends StatefulWidget {
  const Update2({super.key});

  @override
  State<Update2> createState() => _Update2State();
}

class _Update2State extends State<Update2> {
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
                      image != null
                          ? CircleAvatar(
                              radius: 70,
                              child: CircleAvatar(
                                radius: 65,
                                backgroundColor: Colors.white,
                                child: CircleAvatar(
                                  radius: 60,
                                  backgroundImage: FileImage(image!),
                                  // radius: 80,
                                  // AssetImage('assets/images/profile.jpg'),
                                  // backgroundImage:
                                  // child: Image.file(image!,
                                  //     alignment: Alignment.center),
                                ),
                              ),
                            )
                          : CircleAvatar(
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
                      Positioned(
                          left: 95,
                          top: MediaQuery.of(context).size.height / 10,
                          child: Material(
                              elevation: 5,
                              shape: CircleBorder(),
                              child: Container(
                                  height:
                                      MediaQuery.of(context).size.height / 20,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.white),
                                  child: IconButton(
                                      onPressed: () {
                                        _showBottomSheet(context);
                                      },
                                      icon: Icon(
                                        Icons.linked_camera_outlined,
                                        color: colors.primary,
                                      ))))),
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
                              child: Row(
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        yesno = 0;
                                      });
                                    },
                                    child: Container(
                                      child: Center(
                                          child: Text(
                                        "No",
                                        style: TextStyle(
                                            fontSize: 10,
                                            color: yesno == 0
                                                ? colors.primary
                                                : colors.secondary),
                                      )),
                                      width: MediaQuery.of(context).size.width /
                                          15.4,
                                      height:
                                          MediaQuery.of(context).size.height /
                                              50,
                                      decoration: BoxDecoration(
                                          color: yesno == 1
                                              ? colors.primary
                                              : colors.secondary,
                                          borderRadius:
                                              BorderRadius.circular(50)),
                                    ),
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        yesno = 1;
                                      });
                                    },
                                    child: Container(
                                      child: Center(
                                          child: Text(
                                        "yes",
                                        style: TextStyle(
                                            fontSize: 10,
                                            color: yesno == 1
                                                ? colors.primary
                                                : colors.secondary),
                                      )),
                                      width: MediaQuery.of(context).size.width /
                                          15.4,
                                      height:
                                          MediaQuery.of(context).size.height /
                                              50,
                                      decoration: BoxDecoration(
                                          color: yesno == 0
                                              ? colors.primary
                                              : colors.secondary,
                                          borderRadius:
                                              BorderRadius.circular(50)),
                                    ),
                                  )
                                ],
                              ),
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
                            Material(
                              borderRadius: BorderRadius.circular(18),
                              elevation: 10,
                              child: Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20)),
                                  width:
                                      MediaQuery.of(context).size.width / 1.37,
                                  height:
                                      MediaQuery.of(context).size.height / 20,
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                        left: 20, top: 20, bottom: 5),
                                    child: TextFormField(
                                        keyboardType: TextInputType.text,
                                        controller: firstj,
                                        decoration: InputDecoration(
                                          hintText: "First Name",
                                          hintStyle:
                                              TextStyle(color: colors.hinttext),
                                          border: InputBorder.none,
                                        )),
                                  )),
                            )
                          ],
                        ),
                        SizedBox(
                            height: MediaQuery.of(context).size.height / 50),
                        // Tex3(hint: "name"),
                        // //last
                        Tex4(
                          le: 20,
                          key1: TextInputType.text,
                          hint: "Last name",
                          Con: lastj,
                        ),

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
                            Container(
                                child: Row(
                              children: [
                                Radio(
                                    value: 'Male',
                                    groupValue: _btn,
                                    activeColor: colors.primary,
                                    fillColor: MaterialStateColor.resolveWith(
                                        (states) => colors.primary),
                                    onChanged: (value) {
                                      setState(() {
                                        _btn = value.toString();
                                        ePress = 1;
                                        mPress = 0;
                                      });
                                    }),
                                Text(
                                  "Male",
                                  style: TextStyle(color: colors.primary),
                                )
                              ],
                            )),
                            SizedBox(
                              width: MediaQuery.of(context).size.width / 20,
                            ),
                            Container(
                                child: Row(
                              children: [
                                Radio(
                                    value: 'female',
                                    groupValue: _btn,
                                    activeColor: colors.primary,
                                    fillColor: MaterialStateColor.resolveWith(
                                        (states) => colors.primary),
                                    onChanged: (value) {
                                      setState(() {
                                        _btn = value.toString();
                                        ePress = 1;
                                        mPress = 0;
                                      });
                                    }),
                                Text(
                                  "Female",
                                  style: TextStyle(color: colors.primary),
                                )
                              ],
                            )),
                          ],
                        ),
                        //Important
                        // Row(
                        //     children: [
                        //       SizedBox(
                        //         width: MediaQuery.of(context).size.width / 20,
                        //       ),
                        //   Container(child:
                        //   Row(children: [
                        //     Radio(
                        //       value: 'Male',
                        //       groupValue: _btn,
                        //       activeColor: colors.primary,
                        //       fillColor: MaterialStateColor.resolveWith(
                        //               (states) => colors.primary),
                        //       onChanged: (value) {
                        //         setState(() {
                        //           _btn = value.toString();
                        //           ePress = 1;
                        //           mPress = 0;
                        //         });
                        //       }),
                        //     Text(
                        //       "Male",
                        //       style:
                        //       TextStyle(color: colors.primary),
                        //     )],)),
                        //       SizedBox(
                        //         width: MediaQuery.of(context).size.width / 20,
                        //       ),
                        //   Container(child:
                        //   Row(children: [
                        //     Radio(
                        //         value: 'female',
                        //         groupValue: _btn,
                        //         activeColor: colors.primary,
                        //         fillColor: MaterialStateColor.resolveWith(
                        //                 (states) => colors.primary),
                        //         onChanged: (value) {
                        //           setState(() {
                        //             _btn = value.toString();
                        //             ePress = 1;
                        //             mPress = 0;
                        //           });
                        //         }),
                        //     Text(
                        //       "Female",
                        //       style:
                        //       TextStyle(color: colors.primary),
                        //     )],)),
                        //
                        // ]),
                        //Important
                        SizedBox(
                            height: MediaQuery.of(context).size.height / 50),
                        // email
                        Tex4(
                            le: 40,
                            Con: emailj,
                            hint: "Email",
                            key1: TextInputType.emailAddress),
                        // mobile
                        Tex4(
                          le: 10,
                          key1: TextInputType.number,
                          hint: "Mobile",
                          Con: mobilej,
                        ),
                        //qualification
                        Row(
                          children: [
                            SizedBox(
                              width: MediaQuery.of(context).size.width / 10,
                            ),
                            Text(
                              "Qualification*",
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
                              borderRadius: BorderRadius.circular(20),
                              child: Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20)),
                                  width:
                                      MediaQuery.of(context).size.width / 1.37,
                                  height:
                                      MediaQuery.of(context).size.height / 19,
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 20, top: 5, bottom: 5),
                                    child: DropdownButton(
                                      underline: Container(),
                                      value: _chosenValue,
                                      icon: Padding(
                                          padding: EdgeInsets.only(left: 100),
                                          child: Icon(Icons.arrow_drop_down)),
                                      hint: Text(
                                        "Qualification",
                                        style: TextStyle(
                                            color: colors.hinttext,
                                            fontSize: 14,
                                            fontWeight: FontWeight.w500),
                                      ),
                                      items: qualification.map((_items) {
                                        return DropdownMenuItem(
                                          value: _items,
                                          child: Text(_items),
                                        );
                                      }).toList(),
                                      onChanged: (String? newValue) {
                                        setState(() {
                                          _chosenValue = newValue!;
                                        });
                                      },
                                    ),
                                  )),
                            ),
                          ],
                        ),
                        SizedBox(
                            height: MediaQuery.of(context).size.height / 50),
                        // year passing
                        Tex4(
                          le: 4,
                          key1: TextInputType.number,
                          hint: "Passing year",
                          Con: yp,
                        ),
                        //address
                        Tex4(
                          le: 30,
                          key1: TextInputType.text,
                          Con: ca,
                          hint: "Current Address",
                        ),
                        //location
                        Row(
                          children: [
                            SizedBox(
                              width: MediaQuery.of(context).size.width / 10,
                            ),
                            Text(
                              "Location*",
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
                              borderRadius: BorderRadius.circular(20),
                              child: Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20)),
                                  width:
                                      MediaQuery.of(context).size.width / 1.37,
                                  height:
                                      MediaQuery.of(context).size.height / 19,
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 20, top: 5, bottom: 5),
                                    child: DropdownButton(
                                      icon: Padding(
                                          padding: EdgeInsets.only(left: 150),
                                          child: Icon(Icons.arrow_drop_down)),
                                      value: _locationOption,
                                      underline: Container(),
                                      hint: Text(
                                        "Location",
                                        style: TextStyle(
                                            color: colors.hinttext,
                                            fontSize: 14,
                                            fontWeight: FontWeight.w500),
                                      ),
                                      items: location.map((_items1) {
                                        return DropdownMenuItem(
                                          value: _items1,
                                          child: Text(_items1),
                                        );
                                      }).toList(),
                                      onChanged: (String? newValue1) {
                                        setState(() {
                                          _locationOption = newValue1!;
                                        });
                                      },
                                      // icon: Padding(
// padding: EdgeInsets.only(left: 130),
// // Adjust the right padding as needed
// child: Icon(
// Icons.arrow_drop_down,
// size: 30,
// color: Colors.grey,
// ),
                                    ),
                                  )),
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
                            Material(
                              elevation: 10,
                              borderRadius: BorderRadius.circular(20),
                              child: Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20)),
                                  width:
                                      MediaQuery.of(context).size.width / 1.37,
                                  height:
                                      MediaQuery.of(context).size.height / 19,
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 20, top: 5, bottom: 5),
                                    child: DropdownButton(
                                      icon: Padding(
                                          padding: EdgeInsets.only(left: 90),
                                          child: Icon(Icons.arrow_drop_down)),
                                      value: _cctcOption,
                                      underline: Container(),
                                      hint: Text(
                                        "Current Ctc",
                                        style: TextStyle(
                                            color: colors.hinttext,
                                            fontSize: 14,
                                            fontWeight: FontWeight.w500),
                                      ),
                                      items: currentCTC.map((_items1) {
                                        return DropdownMenuItem(
                                          value: _items1,
                                          child: Text(_items1),
                                        );
                                      }).toList(),
                                      onChanged: (String? newValue1) {
                                        setState(() {
                                          _cctcOption = newValue1!;
                                        });
                                      },
                                    ),
                                  )),
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
                            Material(
                              elevation: 10,
                              borderRadius: BorderRadius.circular(20),
                              child: Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20)),
                                  width:
                                      MediaQuery.of(context).size.width / 1.37,
                                  height:
                                      MediaQuery.of(context).size.height / 19,
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 20, top: 5, bottom: 5),
                                    child: DropdownButton(
                                      icon: Padding(
                                          padding: EdgeInsets.only(left: 90),
                                          child: Icon(Icons.arrow_drop_down)),
                                      value: _ectcOption,
                                      underline: Container(),
                                      hint: Text(
                                        "Expected Ctc",
                                        style: TextStyle(
                                            color: colors.hinttext,
                                            fontSize: 14,
                                            fontWeight: FontWeight.w500),
                                      ),
                                      items: expectedCTC.map((_items1) {
                                        return DropdownMenuItem(
                                          value: _items1,
                                          child: Text(_items1),
                                        );
                                      }).toList(),
                                      onChanged: (String? newValue1) {
                                        setState(() {
                                          _ectcOption = newValue1!;
                                        });
                                      },
                                    ),
                                  )),
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
                            Material(
                              elevation: 10,
                              borderRadius: BorderRadius.circular(20),
                              child: Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20)),
                                  width:
                                      MediaQuery.of(context).size.width / 1.37,
                                  height:
                                      MediaQuery.of(context).size.height / 19,
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 20, top: 5, bottom: 5),
                                    child: DropdownButton(
                                      icon: Padding(
                                          padding: EdgeInsets.only(left: 90),
                                          child: Icon(Icons.arrow_drop_down)),
                                      value: _ectcOption,
                                      underline: Container(),
                                      hint: Text(
                                        "Expected Ctc",
                                        style: TextStyle(
                                            color: colors.hinttext,
                                            fontSize: 14,
                                            fontWeight: FontWeight.w500),
                                      ),
                                      items: expectedCTC.map((_items1) {
                                        return DropdownMenuItem(
                                          value: _items1,
                                          child: Text(_items1),
                                        );
                                      }).toList(),
                                      onChanged: (String? newValue1) {
                                        setState(() {
                                          _ectcOption = newValue1!;
                                        });
                                      },
                                    ),
                                  )),
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
                            Material(
                              elevation: 10,
                              borderRadius: BorderRadius.circular(20),
                              child: Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20)),
                                  width:
                                      MediaQuery.of(context).size.width / 1.37,
                                  height:
                                      MediaQuery.of(context).size.height / 19,
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 20, top: 5, bottom: 5),
                                    child: DropdownButton(
                                      icon: Padding(
                                          padding: EdgeInsets.only(left: 90),
                                          child: Icon(Icons.arrow_drop_down)),
                                      value: _designationOption,
                                      underline: Container(),
                                      hint: Text(
                                        "Desgination",
                                        style: TextStyle(
                                            color: colors.hinttext,
                                            fontSize: 14,
                                            fontWeight: FontWeight.w500),
                                      ),
                                      items: desgination.map((_items1) {
                                        return DropdownMenuItem(
                                          value: _items1,
                                          child: Text(_items1),
                                        );
                                      }).toList(),
                                      onChanged: (String? newValue1) {
                                        setState(() {
                                          _designationOption = newValue1!;
                                        });
                                      },
                                    ),
                                  )),
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
                            Material(
                              elevation: 10,
                              borderRadius: BorderRadius.circular(20),
                              child: Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20)),
                                  width:
                                      MediaQuery.of(context).size.width / 1.37,
                                  height:
                                      MediaQuery.of(context).size.height / 19,
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 20, top: 5, bottom: 5),
                                    child: DropdownButton(
                                      icon: Padding(
                                          padding: EdgeInsets.only(left: 90),
                                          child: Icon(Icons.arrow_drop_down)),
                                      value: _currentJobRoleOption,
                                      underline: Container(),
                                      hint: Text(
                                        "CurrentJobRole",
                                        style: TextStyle(
                                            color: colors.hinttext,
                                            fontSize: 14,
                                            fontWeight: FontWeight.w500),
                                      ),
                                      items: currentJobRole.map((_items1) {
                                        return DropdownMenuItem(
                                          value: _items1,
                                          child: Text(_items1),
                                        );
                                      }).toList(),
                                      onChanged: (String? newValue1) {
                                        setState(() {
                                          _currentJobRoleOption = newValue1!;
                                        });
                                      },
                                    ),
                                  )),
                            ),
                          ],
                        ),
                        SizedBox(
                            height: MediaQuery.of(context).size.height / 50),
                        //key skill
                        Tex4(
                            le: 50,
                            key1: TextInputType.text,
                            hint: "Key skill",
                            Con: ks),
                        // cgpa
                        Tex4(
                            le: 4,
                            Con: cgpa,
                            hint: "Percentage/Cgpa",
                            key1: TextInputType.number),
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
                            Material(
                              elevation: 10,
                              borderRadius: BorderRadius.circular(20),
                              child: Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20)),
                                  width:
                                      MediaQuery.of(context).size.width / 1.37,
                                  height:
                                      MediaQuery.of(context).size.height / 19,
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 20, top: 5, bottom: 5),
                                    child: DropdownButton(
                                      icon: Padding(
                                          padding: EdgeInsets.only(left: 90),
                                          child: Icon(Icons.arrow_drop_down)),
                                      value: _workexpOption,
                                      underline: Container(),
                                      hint: Text(
                                        "Work Expercience",
                                        style: TextStyle(
                                            color: colors.hinttext,
                                            fontSize: 14,
                                            fontWeight: FontWeight.w500),
                                      ),
                                      items: workexp.map((_items1) {
                                        return DropdownMenuItem(
                                          value: _items1,
                                          child: Text(_items1),
                                        );
                                      }).toList(),
                                      onChanged: (String? newValue1) {
                                        setState(() {
                                          _workexpOption = newValue1!;
                                        });
                                      },
                                    ),
                                  )),
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
                            Material(
                              elevation: 10,
                              borderRadius: BorderRadius.circular(20),
                              child: Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20)),
                                  width:
                                      MediaQuery.of(context).size.width / 1.37,
                                  height:
                                      MediaQuery.of(context).size.height / 19,
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 20, top: 5, bottom: 5),
                                    child: DropdownButton(
                                      icon: Padding(
                                          padding: EdgeInsets.only(left: 90),
                                          child: Icon(Icons.arrow_drop_down)),
                                      value: _specOption,
                                      underline: Container(),
                                      hint: Text(
                                        "Specialization",
                                        style: TextStyle(
                                            color: colors.hinttext,
                                            fontSize: 14,
                                            fontWeight: FontWeight.w500),
                                      ),
                                      items: spec.map((_items1) {
                                        return DropdownMenuItem(
                                          value: _items1,
                                          child: Text(_items1),
                                        );
                                      }).toList(),
                                      onChanged: (String? newValue1) {
                                        setState(() {
                                          _specOption = newValue1!;
                                        });
                                      },
                                    ),
                                  )),
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
                                    left: 20, top: 05, bottom: 05),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50)),
                                width: MediaQuery.of(context).size.width / 3,
                                height: MediaQuery.of(context).size.height / 20,
                                child: DropdownButton(
                                  // icon: Icon(Icons.arrow_drop_down),
                                  icon: Padding(
                                    padding: const EdgeInsets.only(right: 0),
                                    child: Icon(Icons.arrow_drop_down),
                                  ),
                                  value: _noticeOption,
                                  underline: Container(),
                                  hint: Text(
                                    "Expected Ctc",
                                    style: TextStyle(
                                        color: colors.hinttext,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  items: notice.map((_items1) {
                                    return DropdownMenuItem(
                                      value: _items1,
                                      child: Text(_items1),
                                    );
                                  }).toList(),
                                  onChanged: (String? newValue1) {
                                    setState(() {
                                      _noticeOption = newValue1!;
                                    });
                                  },
                                ),
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
                                      left: 20, top: 5, bottom: 5),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(50)),
                                  width: MediaQuery.of(context).size.width / 3,
                                  height:
                                      MediaQuery.of(context).size.height / 19,
                                  child: TextFormField(
                                    inputFormatters: [
                                      LengthLimitingTextInputFormatter(3)
                                    ],
                                    decoration: InputDecoration(
                                        border: InputBorder.none,
                                        hintText: "Age",
                                        hintStyle: TextStyle(
                                          color: colors.hinttext,
                                          fontFamily: "Poppins",
                                        )),
                                    controller: age,
                                    style: TextStyle(color: colors.primary),
                                    keyboardType: TextInputType.number,
                                  )),
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
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            IconButton(
                                onPressed: () {
                                  _pickFile();
                                },
                                icon: Icon(
                                  Icons.add_circle,
                                  color: colors.primary,
                                )),
                            Text("Upload resume")
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
                              tex2: '$fileText' ?? "upload resume",
                              textcolor: colors.primary,
                              textfamily: "Poppins",
                            ),
                          ],
                        ),
                        SizedBox(
                            height: MediaQuery.of(context).size.height / 20),
                        //button
                        Center(
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50)),
                            width: MediaQuery.of(context).size.width / 1.4,
                            height: MediaQuery.of(context).size.height / 19,
                            child: ElevatedButton(
                                style: ButtonStyle(
                                    backgroundColor: MaterialStatePropertyAll(
                                        colors.primary),
                                    shape: MaterialStatePropertyAll(
                                        RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(20)))),
                                onPressed: () async {
                                  uyt = list.elementAt(iud)["id"];
                                  String id = DateTime.now()
                                      .microsecondsSinceEpoch
                                      .toString();
                                  await FirebaseFirestore.instance
                                      .collection("user")
                                      .doc("jobs_seeker")
                                      .collection("userj")
                                      .doc(uyt)
                                      .collection("profile")
                                      .doc(id)
                                      .set({
                                    'id': id,
                                    'first': firstj.text.toString(),
                                    'last': lastj.text.toString(),
                                    'email': emailj.text.toString(),
                                    'mobile': mobilej.text.toString(),
                                    "age": age.text.toString(),

                                    "current address": ca.text.toString(),
                                    "year passing": yp.text.toString(),
                                    "keyskill": ks.text.toString(),
                                    "cgpa": cgpa.text.toString(),
                                    "resume": fileText.toString(),
                                    "qualification": _chosenValue,
                                    "location": _locationOption,
                                    "currect ctc": _cctcOption,
                                    "expected ctc": _ectcOption,
                                    "job role": _jobOption,
                                    "work experience": _workexpOption,
                                    "specificaliztion": _specOption,
                                    "notice": _noticeOption,
// "specaialization"=sp,
                                  }).then((value) => null);
                                },
                                child: Text("Update")),
                          ),
                        ),
                        SizedBox(
                            height: MediaQuery.of(context).size.height / 20),
                      ],
                    ),
                  )
                ]))));
    // );
    // ));
  }

  var yesno = 0;
  var fileText;

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

  void _pickFile() async {
    FilePickerResult? result =
        await FilePicker.platform.pickFiles(type: FileType.any);

    if (result != null && result.files.single.path != null) {
      PlatformFile file = result.files.first;
      File _file = File(result.files.single.path!);
      setState(() {
        fileText = file.path;
      });
    } else {}
  }

  String? selectedImage;
  String? selectedOption;
  String? jobRoleOption;
  List<String> workexp = ['Option 1', 'Option 2', 'Option 3', 'Option 4'];
  String? _workexpOption;
  List<String> qualification = [
    '10th',
    '12th',
    'Graduated',
    'Post Graduated',
  ];
  String? _chosenValue;

  List<String> currentCTC = [
    '3-5LPA',
    '5-7LPA',
    '7-10LPA',
    'more than 7LPA',
  ];
  String? _cctcOption;
  List<String> expectedCTC = [
    '3-5LPA',
    '5-7LPA',
    '7-10LPA',
    'more than 7LPA',
  ];
  String? _ectcOption;
  List<String> spec = [
    '10th',
    '12th',
    'Graduated',
    'Post Graduated',
  ];
  String? _specOption;
  List<String> notice = [
    '1 month',
    '2 month',
    '3 months',
    'more than 3 months',
  ];
  String? _noticeOption;
  List<String> jobRole = [
    '10th',
    '12th',
    'Graduated',
    'Post Graduated',
  ];
  String? _jobOption;
  List<String> desgination = [
    '10th',
    '12th',
    'Graduated',
    'Post Graduated',
  ];
  String? _designationOption;
  List<String> currentJobRole = [
    '10th',
    '12th',
    'Graduated',
    'Post Graduated',
  ];
  String? _currentJobRoleOption;
  List<String> location = [
    'Delhi',
    'Mumbai',
    'Indore',
    'Pune',
  ];
  String? _locationOption;

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

  Future gall() async {
    final image = await ImagePicker().pickImage(source: ImageSource.gallery);
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
                  gall();
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

  String _btn = "Male";
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
