import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:ionicons/ionicons.dart';
import 'package:task_management/app/utils/style/custom_colors.dart';
import 'package:task_management/app/utils/widget/myTask.dart';
import 'package:task_management/app/utils/widget/peopleYouMayKnow.dart';

import '../../../data/controller/auth_controller.dart';
import '../../../routes/app_pages.dart';
import '../../../utils/widget/header.dart';
import '../../../utils/widget/profileWidget.dart';
import '../../../utils/widget/sidebar.dart';

import '../controllers/profile_controller.dart';

class ProfileView extends GetView<ProfileController> {
  final GlobalKey<ScaffoldState> _drawerKey = GlobalKey();
  final authCon = Get.find<AuthController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _drawerKey,
      drawer: const SizedBox(width: 150, child: Sidebar()),
      backgroundColor: CustomColor.primaryBg,
      body: SafeArea(
        child: Row(
          children: [
            !context.isPhone
                ? const Expanded(flex: 2, child: Sidebar())
                : const SizedBox(),
            Expanded(
              flex: 15,
              child: Column(
                children: [
                  //Bagian Header
                  !context.isPhone
                      ? const Header()
                      : Container(
                          padding: const EdgeInsets.all(20),
                          child: Row(
                            children: [
                              IconButton(
                                onPressed: () {
                                  _drawerKey.currentState!.openDrawer();
                                },
                                icon: const Icon(
                                  Ionicons.menu,
                                  color: CustomColor.primaryText,
                                ),
                              ),
                              const SizedBox(
                                width: 7,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text(
                                    'Task Management',
                                    style: TextStyle(
                                      fontSize: 18,
                                      color: CustomColor.primaryText,
                                    ),
                                  ),
                                  Text(
                                    'Task management terbaik',
                                    style: TextStyle(
                                      fontSize: 13,
                                      color: CustomColor.primaryText,
                                    ),
                                  ),
                                ],
                              ),
                              const Spacer(),
                              GestureDetector(
                                onTap: () {
                                  Get.defaultDialog(
                                    title: 'Sign Out',
                                    content: const Text('Yakin ingin keluar?'),
                                    cancel: ElevatedButton(
                                      onPressed: () => Get.back(),
                                      child: const Text('Batal'),
                                    ),
                                    confirm: ElevatedButton(
                                        onPressed: () => authCon.logout(),
                                        child: const Text('Ya')),
                                  );
                                },
                                child: Row(
                                  children: const [
                                    Text('Sign out',
                                        style: TextStyle(
                                            fontSize: 16,
                                            color: CustomColor.primaryText)),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Icon(
                                      Ionicons.log_out_outline,
                                      color: CustomColor.primaryText,
                                      size: 25,
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                  // Bagian Isi
                  Expanded(
                    child: Container(
                      padding: !context.isPhone
                          ? const EdgeInsets.all(30)
                          : const EdgeInsets.all(10),
                      margin:
                          !context.isPhone ? const EdgeInsets.all(10) : null,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: !context.isPhone
                            ? BorderRadius.circular(50)
                            : BorderRadius.circular(30),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          profileWidget(),
                          const SizedBox(
                            height: 20,
                          ),
                          const Text(
                            'People You May Know',
                            style: TextStyle(
                                color: CustomColor.primaryText, fontSize: 30),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          SizedBox(
                            height: 220,
                            child: PeopleYouMayKnow(),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
