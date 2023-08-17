import 'package:flutter/material.dart';
import 'package:jobs/view/all%20re.dart';
import 'package:jobs/view/login.dart';
import 'package:jobs/view/profile.dart';
import 'package:jobs/view/wid/card.dart';
import '../uitils/clor.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../uitils/noti.dart';
import 'change pass.dart';
import 'job applied.dart';
import 'my jobs.dart';

class drawer extends StatefulWidget {
  const drawer({super.key});

  @override
  State<drawer> createState() => _drawerState();
}

class _drawerState extends State<drawer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colors.primary,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(children: [
            Container(
                child: Image.asset(
              "assets/images/home logo.png",
            )),
            Container(
                padding: EdgeInsets.only(top: 70, left: 20, right: 10),
                width: MediaQuery.of(context).size.width * 1,
                height: MediaQuery.of(context).size.height * .9,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius:
                        BorderRadius.only(topRight: Radius.circular(50))),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Car(
                      ic: Icons.person,
                      on: Icons.arrow_forward_ios_rounded,
                      te: 'My profile',
                      di: 1.98,
                      onpressed: () {
                        Get.to(Update1());
                      },
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 60,
                    ),
                    Car(
                      onpressed: () {
                        Get.to(Myjobs());
                      },
                      ic: Icons.handshake,
                      on: Icons.arrow_forward_ios_rounded,
                      te: 'My Jobs',
                      di: 1.9,
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 60,
                    ),
                    Car(
                      ic: Icons.business_center_sharp,
                      on: Icons.arrow_forward_ios_rounded,
                      te: "Applied Jobs",
                      di: 2.2,
                      onpressed: () {
                        Get.to(jobsapllied());
                      },
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 60,
                    ),
                    Car(
                      ic: Icons.lock,
                      on: Icons.arrow_forward_ios_rounded,
                      te: 'Change Password',
                      di: 2.69,
                      onpressed: () {
                        Get.to(changepass());
                      },
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 60,
                    ),
                    Car(
                      ic: Icons.business_center_sharp,
                      on: Icons.arrow_forward_ios_rounded,
                      te: 'All Recruiters',
                      di: 2.22,
                      onpressed: () {
                        Get.to(All());
                      },
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 60,
                    ),
                    Car(
                      ic: Icons.notifications,
                      on: Icons.arrow_forward_ios_rounded,
                      te: 'Notification',
                      di: 2.1,
                      onpressed: () {},
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 60,
                    ),
                    Car(
                      ic: Icons.share_outlined,
                      on: Icons.arrow_forward_ios_rounded,
                      te: 'Share App',
                      di: 2,
                      onpressed: () {},
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 60,
                    ),
                    Car(
                      ic: Icons.contact_phone,
                      on: Icons.arrow_forward_ios_rounded,
                      te: 'Contact Us',
                      di: 2.05,
                      onpressed: () {},
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 60,
                    ),
                    Car(
                      ic: Icons.shield,
                      on: Icons.arrow_forward_ios_rounded,
                      te: 'Privacy Policy',
                      di: 2.3,
                      onpressed: () {},
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 60,
                    ),
                    Car(
                      ic: Icons.support_agent_outlined,
                      on: Icons.arrow_forward_ios_rounded,
                      te: 'Support & Help',
                      di: 2.4,
                      onpressed: () {},
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 60,
                    ),
                    Car(
                      ic: Icons.contact_page,
                      on: Icons.arrow_forward_ios_rounded,
                      te: 'Term & Conditions',
                      di: 2.8,
                      onpressed: () {
                        Get.to(Update1());
                      },
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 60,
                    ),
                    Car(
                      ic: Icons.logout,
                      on: Icons.arrow_forward_ios_rounded,
                      te: 'Sign Out',
                      di: 1.91,
                      onpressed: () {
                        showDialog(
                          context: context,
                          builder: (ctx) => AlertDialog(
                            title: const Text("Sign Out"),
                            content: const Text("You have Log Out"),
                            actions: <Widget>[
                              TextButton(
                                onPressed: () async {
                                  notificationsServices.sendNotification(
                                      "Jobs Deho", 'Sucessfull Logout');
                                  final SharedPreferences qwe =
                                      await SharedPreferences.getInstance();

                                  qwe.remove('email');
                                  Get.off(Login());
                                },
                                child: const Text("okay"),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ],
                ))
          ]),
        ),
      ),
    );
  }

  notification notificationsServices = notification();

  void initState() {
    // TODO: implement initState
    super.initState();
    notificationsServices.initialiseNotification();
  }
}
