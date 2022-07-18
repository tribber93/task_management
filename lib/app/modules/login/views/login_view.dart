import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:ionicons/ionicons.dart';
import 'package:task_management/app/data/controller/auth_controller.dart';
import 'package:task_management/app/routes/app_pages.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  final authC = Get.find<AuthController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[100],
      body: Container(
        margin: context.isPhone
            ? EdgeInsets.all(Get.width * 0.1)
            : EdgeInsets.all(Get.height * 0.1),
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 6,
              blurRadius: 10,
              offset: const Offset(0, 3), // changes position of shadow
            ),
          ],
          borderRadius: BorderRadius.circular(50),
          color: Colors.white,
        ),
        child: Row(
          children: [
            !context.isPhone
                ? Expanded(
                    child: Container(
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(50),
                              bottomLeft: Radius.circular(50)),
                          color: Colors.blue),
                      child: Container(
                        padding: const EdgeInsets.all(15),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              'Welcome',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 40),
                            ),
                            Text(
                              'Please Sign In',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 30),
                            ),
                            Text(
                              'Start Journey With Us',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            )
                          ],
                        ),
                      ),
                    ),
                  )
                : const SizedBox(),
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(50),
                    bottomRight: Radius.circular(50),
                  ),
                ),
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      context.isPhone
                          ? Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: const [
                                Text(
                                  'Selamat Datang',
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  'Silakan  Login',
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 16),
                                ),
                                Text(
                                  'Start Journey With Us',
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 14),
                                )
                              ],
                            )
                          : const SizedBox(),
                      const Image(
                        image: AssetImage('assets/images/login.png'),
                        height: 350,
                      ),
                      FloatingActionButton.extended(
                        onPressed: () {
                          authC.signInWithGoogle();
                        },
                        label: const Text('Sign in With Google'),
                        icon: const Icon(Ionicons.logo_google),
                        tooltip: 'Sign in Google',
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
