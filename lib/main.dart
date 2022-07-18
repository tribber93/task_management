import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:task_management/app/data/controller/auth_controller.dart';

import 'app/routes/app_pages.dart';
import 'app/utils/gesture.dart';
import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    name: 'task management app',
    options: DefaultFirebaseOptions.currentPlatform,
  );
  Get.put(AuthController(), permanent: true);
  runApp(StreamBuilder<User?>(builder: (context, snapshot) {
    if (snapshot.connectionState == ConnectionState.waiting) {
      return const Center(child: CircularProgressIndicator());
    }
    return GetMaterialApp(
      title: "My Task Management",
      initialRoute: snapshot.data != null ? Routes.HOME : Routes.LOGIN,
      getPages: AppPages.routes,
      debugShowCheckedModeBanner: false,
      scrollBehavior: MyCustomScrollBehavior(),
    );
  }));
}
