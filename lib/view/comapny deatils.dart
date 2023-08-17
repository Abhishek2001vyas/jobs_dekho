import 'package:flutter/material.dart';
import 'package:jobs/uitils/clor.dart';

class Companyde extends StatefulWidget {
  const Companyde({super.key});

  @override
  State<Companyde> createState() => _CompanydeState();
}

class _CompanydeState extends State<Companyde> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colors.primary,
      appBar: PreferredSize(
          child: AppBar(
              elevation: 0,
              centerTitle: true,
              title: Text("Company deatils"),
              backgroundColor: Colors.transparent),
          preferredSize: Size.fromHeight(100)),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(topRight: Radius.circular(50))),
              child: Column(children: [
                SizedBox(height: MediaQuery.of(context).size.height / 50),
                Container(
                  color: Colors.white,
                  height: MediaQuery.of(context).size.height / 4.32,
                  width: MediaQuery.of(context).size.width / 1.1,
                  child: Stack(
                    children: [
                      Positioned(
                        top: 50,
                        left: 20,
                        child: Material(
                            borderRadius: BorderRadius.circular(15),
                            elevation: 10,
                            child: Container(
                              child: Column(children: [
                                SizedBox(
                                    height: MediaQuery.of(context).size.height / 25),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text("Meera Enterprises PVT LTD",
                                        style: TextStyle(color: colors.primary)),
                                    SizedBox(
                                        width: MediaQuery.of(context).size.width / 4),
                                  ],
                                ),
                                SizedBox(
                                    height: MediaQuery.of(context).size.height / 100),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width / 500),
                                    Icon(
                                      Icons.business_center_sharp,
                                      color: colors.primary,
                                    ),
                                    SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width / 900),
                                    Text("Active Post"),
                                    SizedBox(
                                        width: MediaQuery.of(context).size.width / 2),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width / 035),
                                    Icon(
                                      Icons.business_center_sharp,
                                      color: colors.primary,
                                    ),
                                    SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width / 035),
                                    SizedBox(
                                        width: 260,
                                        child: Text(
                                            "http://www.meeraenterprisesthane.com",
                                            overflow: TextOverflow.ellipsis)),
                                    SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width / 012),
                                  ],
                                ),
                              ]),
                              width: MediaQuery.of(context).size.width / 1.2,
                              height: MediaQuery.of(context).size.height / 6,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(15)),
                            )),
                      ),
                      Positioned(
                          left: 150,
                          top: 20,
                          child: CircleAvatar(
                            child: CircleAvatar(
                                backgroundImage: AssetImage("assets/images/done.png"),
                                radius: 40),
                            backgroundColor: Colors.blue,
                            radius: 30,
                          )),
                    ],
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height / 50),
                Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Colors.white),
                  width: MediaQuery.of(context).size.width / 1.2,
                  height: MediaQuery.of(context).size.height / 4,
                  child: Card(shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),elevation: 10,
                    child: Column(children: [
                      SizedBox(
                        height: MediaQuery.of(context).size.height / 100,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            "Company Description",
                            style: TextStyle(color: colors.primary),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width / 3,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height / 100,
                      ),
                      SizedBox(width: 300,
                        child: Text(style: TextStyle(color: colors.hinttext),overflow: TextOverflow.clip,
                            "Our Mission: is to help various leading companies byplacing the skilled and well-qualified candidates, In order to accomplish our mission. we maintain a huge database of various portential candidates."),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height / 100,
                      ),
                      Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text("Email: meera@gmail.com",style: TextStyle(color: Color(0xff3B3B3B))),
                          SizedBox(
                            width: MediaQuery.of(context).size.width / 3.8,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height / 100,
                      ),
                      Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text("Number: 9773939666"),
                          SizedBox(
                            width: MediaQuery.of(context).size.width / 3.1,
                          ),
                        ],
                      )

                    ]),
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height / 50),
                Center(child: Image.asset("assets/images/download.png"),),
                SizedBox(height: MediaQuery.of(context).size.height / 50),
                Container(
                  width: MediaQuery.of(context).size.width/1.2,
                  height: MediaQuery.of(context).size.height/3.5,
                  child: Card(
                      elevation: 10,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(27),
                      ),
                      child:Container(
                        margin: EdgeInsets.only(left: 35,top: 10,bottom: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text("JOB ID : 7",style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold)),
                            Text("COMPANY NAME : ",style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold)),
                            Text("RIGHTMATCH HR SERVICE",style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold)),
                            Text("PRIVATE LIMITED",style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold)),
                            Text("Exicutive",style: TextStyle(color: colors.primary),),
                            SizedBox(height: MediaQuery.of(context).size.height / 200),
                            Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text('\u{20B9}',style: TextStyle(color: colors.primary,fontSize: 18)),
                                SizedBox(width: MediaQuery.of(context).size.width/100,),
                                Text("30000 - 60000 Per Month",style: TextStyle(fontWeight: FontWeight.w500)),
                                SizedBox(width: MediaQuery.of(context).size.width/5,)
                              ],
                            ),
                            Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Icon(Icons.receipt_long_outlined,color: colors.primary,),
                                SizedBox(width: MediaQuery.of(context).size.width/100,),
                                Text("3 years Experience Required",style: TextStyle(fontWeight: FontWeight.w500)),
                                SizedBox(width: MediaQuery.of(context).size.width/5.5,)
                              ],
                            ),
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
                ),
                SizedBox(height: MediaQuery.of(context).size.height / 50),
                Container(
                  width: MediaQuery.of(context).size.width/1.2,
                  height: MediaQuery.of(context).size.height/3.5,
                  child: Card(
                      elevation: 10,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(27),
                      ),
                      child:Container(
                        margin: EdgeInsets.only(left: 35,top: 10,bottom: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text("JOB ID : 8",style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold)),
                            Text("COMPANY NAME : ",style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold)),
                            Text("RIGHTMATCH HR SERVICE",style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold)),
                            Text("PRIVATE LIMITED",style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold)),
                            Text("Exicutive",style: TextStyle(color: colors.primary),),
                            Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text("Rup"),
                                SizedBox(width: MediaQuery.of(context).size.width/100,),
                                Text("30000 - 60000 Per Month",style: TextStyle(fontWeight: FontWeight.w500)),
                                SizedBox(width: MediaQuery.of(context).size.width/5,)
                              ],
                            ),
                            Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Icon(Icons.receipt_long_outlined,color: colors.primary,),
                                SizedBox(width: MediaQuery.of(context).size.width/100,),
                                Text("3 years Experience Required",style: TextStyle(fontWeight: FontWeight.w500)),
                                SizedBox(width: MediaQuery.of(context).size.width/5.5,)
                              ],
                            ),
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
                ),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
