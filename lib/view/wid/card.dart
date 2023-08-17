import 'package:flutter/material.dart';
import '../profile.dart';
import '../change pass.dart';
import '../comapny deatils.dart';
import '../all re.dart';
import '../../uitils/clor.dart';
import 'package:get/get.dart';

class Car extends StatefulWidget {
  final IconData ic;
  final IconData on;
  final String te;
  final di;
  final VoidCallback onpressed;

  const Car(
      {super.key,
      required this.ic,
      required this.on,
      required this.te,
      required this.di,
      required this.onpressed});

  @override
  State<Car> createState() => _CarState();
}

class _CarState extends State<Car> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Color(0xffECE1FF),
            ),
            height: MediaQuery.of(context).size.height / 20,
            width: MediaQuery.of(context).size.width / 10,
            child: Icon(
              widget.ic,
              color: colors.primary,
            )),
        SizedBox(
          width: MediaQuery.of(context).size.width / 20,
        ),
        Text(
          widget.te,
          style: TextStyle(fontFamily: "Poppins", fontWeight: FontWeight.w500),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width / widget.di,
        ),
        GestureDetector(
          onTap: widget.onpressed,
          child: Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xffECE1FF),
              ),
              height: MediaQuery.of(context).size.height / 25,
              width: MediaQuery.of(context).size.width / 10,
              child: Icon(
                widget.on,
                color: colors.primary,
              )),
        )
      ],
    );
    // return Container(
    //     decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Color(0xffECE1FF),),
    //     height: MediaQuery.of(context).size.height / 20,
    //     width: MediaQuery.of(context).size.width / 10,
    //     child: Icon(
    //       widget.ic,
    //       color: colors.primary,
    //     ));
  }
}

class Car3 extends StatefulWidget {
  const Car3({super.key});

  @override
  State<Car3> createState() => _Car3State();
}

class _Car3State extends State<Car3> {
  @override
  Widget build(BuildContext context) {
    return Material(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      elevation: 10,
      child: Container(padding: EdgeInsets.only(top: 20,left: 20,right: 20),
          height: MediaQuery.of(context).size.height / 3,
          width: MediaQuery.of(context).size.width / 1,
          child: Column(
            children: [
              Row(
                children: [
                  Container(height: MediaQuery.of(context).size.height/10,child: CircleAvatar(child: Image.asset("assets/images/done.png"),radius: 20,)),
                  SizedBox( width: MediaQuery.of(context).size.width / 10 ),
                  Column(mainAxisAlignment: MainAxisAlignment.spaceAround,crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Organixation ID : 50",style: TextStyle(fontFamily: "Poppins",fontWeight: FontWeight.w500),),
                      SizedBox(height: MediaQuery.of(context).size.height/60),
                      SizedBox(width: 200,child: Text("Consultancy Name: Meera enerpris....",overflow: TextOverflow.ellipsis,style: TextStyle(fontFamily: "Poppins",fontWeight: FontWeight.w500),)),

                      SizedBox(height: MediaQuery.of(context).size.height/60),
                      Text("Company HR : Sachin Kamble",style: TextStyle(fontFamily: "Poppins",fontWeight: FontWeight.w500),),
                      SizedBox(height: MediaQuery.of(context).size.height/60),
                      Row(children: [Icon(Icons.call),SizedBox( width: MediaQuery.of(context).size.width / 50 ),Text("9773939666")],),
                      SizedBox(height: MediaQuery.of(context).size.height/60),
                      Row(children: [Icon(Icons.mail),SizedBox( width: MediaQuery.of(context).size.width / 50 ),Text("Meera@gmail.com"),],),
                      SizedBox(height: MediaQuery.of(context).size.height/60),
                      Row(children: [Icon(Icons.location_on),SizedBox( width: MediaQuery.of(context).size.width / 50 ),Text("Thane"),
                        SizedBox(height: MediaQuery.of(context).size.height/60),
                      ],)
                    ],
                  )
                ],
              ),
              SizedBox(height: MediaQuery.of(context).size.height/50),
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: 90,
                    height: 35,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      border: Border.all(color: colors.primary),
                      color: colors.secondary,
                    ),
                    child: GestureDetector(
                      onTap: (){
                        Get.to(Companyde());
                      },
                      child: Container(
                          margin: EdgeInsets.only(left: 20),
                          alignment: Alignment.center,
                          child: Row(
                            children: [
                              Icon(Icons.business_center_outlined,
                                  color: colors.primary, size: 20),
                              SizedBox(
                                width: 4,
                              ),
                              Text(
                                "115",
                                style: TextStyle(
                                    color: colors.primary, fontSize: 12),
                              )
                            ],
                          )),
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Container(
                    width: 150,
                    height: 35,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      border: Border.all(color: colors.primary),
                      color: colors.secondary,
                    ),
                    child: Container(
                        margin: EdgeInsets.only(left: 40),
                        alignment: Alignment.center,
                        child: Row(
                          children: [
                            Icon(Icons.pin_drop_outlined,
                                color: colors.primary, size: 20),
                            SizedBox(
                              width: 4,
                            ),
                            Text(
                              "Kolkata",
                              style: TextStyle(
                                  color: colors.primary, fontSize: 12),
                            )
                          ],
                        )),
                  ),
                ],
              ),
            ],
          )),
    );
  }
}
