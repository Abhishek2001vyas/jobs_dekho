import 'package:flutter/material.dart';
import 'package:jobs/view/login.dart';
import 'package:jobs/view/wid/done.dart';
import '../uitils/clor.dart';
import '../view/wid/textform.dart';
import 'package:get/get.dart';
import 'package:cloud_firestore/cloud_firestore.dart';



class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  int q = 0;
  int w = 0;

  @override
  Widget build(BuildContext context) {




    return Scaffold(
      backgroundColor: colors.primary,
      body: SingleChildScrollView(
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

              decoration: const BoxDecoration(
                  color: colors.secondary,
                  borderRadius:
                      BorderRadius.only(topRight: Radius.circular(50))),
              child: Column(children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 10.0,top: 30),
                  child: Text(
                    "Sign up",
                    style: TextStyle(fontSize: 40, fontFamily: 'nasalization'),
                  ),
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          TextButton(
                              onPressed: () {
                                setState(() {
                                  q = 0;
                                });
                              },
                              child: Text(
                                "Job Seeker",
                                style: TextStyle(color: q==0? colors.primary : colors.hinttext),
                              )),
                        ],
                      ),
                      Column(
                        children: [
                          TextButton(
                              onPressed: () {
                                setState(() {
                                  q = 1;
                                });
                              },
                              child: Text(
                                "Recruiter",
                                style: TextStyle(color: q==1? colors.primary : colors.hinttext),
                              )),
                        ],
                      )
                    ]),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height / 100,
                      width: MediaQuery.of(context).size.width / 3,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(15),
                              bottomLeft: Radius.circular(15)),
                          color: q==0? colors.primary : colors.hinttext),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height / 100,
                      width: MediaQuery.of(context).size.width / 3,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(15),
                              bottomRight: Radius.circular(15)),
                          color: q==1 ? colors.primary: colors.hinttext),
                    ),
                  ],
                ),
                SizedBox(height: MediaQuery.of(context).size.height / 20),
                q == 0
                    ? Column(
                        children: [
                          Tex(
                            controller: emailj,
                              icon: Icons.email_rounded,
                              keyboard: TextInputType.emailAddress,
                              hint: 'email',
                              color: colors.primary),
                          SizedBox(
                              height: MediaQuery.of(context).size.height / 50),
                          Tex(controller: firstj,
                              icon: Icons.person,
                              keyboard: TextInputType.text,
                              hint: 'First',
                              color: colors.primary),
                          SizedBox(
                              height: MediaQuery.of(context).size.height / 50),
                          Tex(controller: lastj,
                              icon: Icons.person,
                              keyboard: TextInputType.text,
                              hint: 'Last',
                              color: colors.primary),
                          SizedBox(
                              height: MediaQuery.of(context).size.height / 50),
                          Tex(controller: mobilej,
                              icon: Icons.call,
                              keyboard: TextInputType.number,
                              hint: 'Mobile no',
                              color: colors.primary),
                          SizedBox(
                              height: MediaQuery.of(context).size.height / 50),
                          Tex(
                            controller: passj,
                              icon: Icons.lock,
                              keyboard: TextInputType.number,
                              hint: 'password',
                              color: colors.primary),
                          SizedBox(
                              height: MediaQuery.of(context).size.height / 50),
                          Tex(controller: cpassj,
                              icon: Icons.lock,
                              keyboard: TextInputType.number,
                              hint: 'comfirm password',
                              color: colors.primary),
                          SizedBox(
                              height: MediaQuery.of(context).size.height / 50),
                        ],
                      )
                    : Column(
                        children: [
                          Tex(controller: emailr,
                              icon: Icons.email_rounded,
                              keyboard: TextInputType.emailAddress,
                              hint: 'email',
                              color: colors.primary),
                          SizedBox(
                              height: MediaQuery.of(context).size.height / 50),
                          Tex(controller: fullnamer,
                              icon: Icons.person,
                              keyboard: TextInputType.text,
                              hint: 'Full name',
                              color: colors.primary),
                          SizedBox(
                              height: MediaQuery.of(context).size.height / 50),
                          Tex(controller: comemailr,
                              icon: Icons.person,
                              keyboard: TextInputType.text,
                              hint: 'company name',
                              color: colors.primary),
                          SizedBox(
                              height: MediaQuery.of(context).size.height / 50),
                          Tex(controller: mobiler,
                              icon: Icons.call,
                              keyboard: TextInputType.number,
                              hint: 'Mobile no',
                              color: colors.primary),
                          SizedBox(
                              height: MediaQuery.of(context).size.height / 50),
                          Tex(controller: passr,
                              icon: Icons.lock,
                              keyboard: TextInputType.number,
                              hint: 'password',
                              color: colors.primary),
                          SizedBox(
                              height: MediaQuery.of(context).size.height / 50),
                          Tex(controller: cpassr,
                              icon: Icons.lock,
                              keyboard: TextInputType.number,
                              hint: 'confirm password',
                              color: colors.primary),
                          SizedBox(
                              height: MediaQuery.of(context).size.height / 50),
                        ],
                      ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 19.5,
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
                      onPressed: () async{
                        String id=DateTime.now().microsecondsSinceEpoch.toString();
                        q==0?
                        await firestore.doc("jobs_seeker").collection("userj").doc(id).set({
                          'id':id,
                          'first': firstj.text.toString(),
                          'last':lastj.text.toString(),
                          'email':emailj.text.toString(),
                          'mobile':mobilej.text.toString(),
                          'pass':passj.text.toString(),
                          'cpass':cpassj.text.toString(),


                        }).then((value) => null):
                        await firestore.doc("recuriter").collection('user'+id).add({
                          'id':id,
                          'full': fullnamer.text.toString(),
                          'comemail':comemailr.text.toString(),
                          'email':emailr.text.toString(),
                          'mobile':mobiler.text.toString(),
                          'pass':passr.text.toString(),
                          'cpass':cpassr.text.toString(),


                        }).then((value) => null);

                         Get.to(Don());
                      },
                      child: const Text(
                        "Submit",
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontFamily: 'MyriadPro',
                            fontWeight: FontWeight.w400),
                      )),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 15,
                ),
                Padding(
                  padding: EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Already have an account?",
                        style: TextStyle(
                            fontSize: 15,
                            color: colors.hinttext,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.normal),
                      ),
                      TextButton(
                        child: Text('signin',
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                                color: colors.primary,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w600)),
                        onPressed: () {
                          Get.to(Login());
                        },
                      )
                    ],
                  ),
                )
              ]),
            )
          ],
        ),
      ),
    );
  }
  //job seeker
  TextEditingController emailj=TextEditingController();
  TextEditingController firstj=TextEditingController();
  TextEditingController lastj=TextEditingController();
  TextEditingController mobilej=TextEditingController();
  TextEditingController passj=TextEditingController();
  TextEditingController cpassj=TextEditingController();
//  recruiter
  TextEditingController emailr=TextEditingController();
  TextEditingController fullnamer=TextEditingController();
  TextEditingController comemailr=TextEditingController();
  TextEditingController mobiler=TextEditingController();
  TextEditingController passr=TextEditingController();
  TextEditingController cpassr=TextEditingController();

  final firestore = FirebaseFirestore.instance.collection("user");


}
