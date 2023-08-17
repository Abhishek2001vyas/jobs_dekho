import 'package:flutter/material.dart';

import '../../uitils/clor.dart';

class Car2 extends StatefulWidget {
  final id;
  final role;
  const Car2({super.key, this.id, this.role});

  @override
  State<Car2> createState() => _Car2State();
}

class _Car2State extends State<Car2> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width*0.9,
      height: MediaQuery.of(context).size.height/4,
      child: Card(
          elevation: 2,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(27),
          ),
          child:Container(
            margin: EdgeInsets.only(left: 35,top: 10,bottom: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text("JOB ID : ${widget.id}",style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold)),
                Text("COMPANY NAME : ",style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold)),
                Text("RIGHTMATCH HR SERVICE",style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold)),
                Text("PRIVATE LIMITED",style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold)),
                Text("${widget.role}",style: TextStyle(color: colors.primary),),
                SizedBox(height: 5,),
                Row(
                  children: [
                    Container(
                      width:90,
                      height: 35,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        border: Border.all(color: colors.primary),
                        color: colors.secondary,
                      ),
                      child: Container(
                          margin: EdgeInsets.only(left: 20),
                          alignment: Alignment.center,
                          child: Row(
                            children: [
                              Icon(Icons.business_center_outlined,color: colors.primary,size: 20),
                              SizedBox(width: 4,),
                              Text("115",style: TextStyle(color: colors.primary,fontSize: 12),)
                            ],
                          )),
                    ),
                    SizedBox(width: 15,),
                    Container(
                      width:150,
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
                              Icon(Icons.pin_drop_outlined,color: colors.primary,size: 20),
                              SizedBox(width: 4,),
                              Text("Kolkata",style: TextStyle(color: colors.primary,fontSize: 12),)
                            ],
                          )),
                    ),],
                )
              ],
            ),
          )
      ),
    );
  }
}
