import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:ionicons/ionicons.dart';
import 'package:task_management/app/routes/app_pages.dart';
import 'package:task_management/app/utils/style/custom_colors.dart';

import '../../../utils/widget/header.dart';
import '../../../utils/widget/sidebar.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  final GlobalKey<ScaffoldState> _drawerKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _drawerKey,
      drawer: const Sidebar(),
      backgroundColor: CustomColor.primaryBg,
      body: Row(
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
                                  'Menjadi mudah dengan Task Management',
                                  style: TextStyle(
                                    fontSize: 13,
                                    color: CustomColor.primaryText,
                                  ),
                                ),
                              ],
                            ),
                            const Spacer(),
                            const Icon(
                              Ionicons.notifications,
                              color: CustomColor.primaryText,
                              size: 25,
                            ),
                            const SizedBox(
                              width: 15,
                            ),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(30),
                              child: const CircleAvatar(
                                backgroundColor: Colors.amber,
                                radius: 25,
                                foregroundImage: NetworkImage(
                                    'https://pbs.twimg.com/profile_images/1488749186610728960/4POimDrS_400x400.jpg'),
                              ),
                            )
                          ],
                        ),
                      ),
                // Bagian Isi
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.all(50),
                    margin: !context.isPhone ? const EdgeInsets.all(10) : null,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: !context.isPhone
                            ? BorderRadius.circular(50)
                            : BorderRadius.circular(30)),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
