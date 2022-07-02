import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:ionicons/ionicons.dart';
import 'package:task_management/app/utils/style/custom_colors.dart';

import '../../../utils/widget/header.dart';
import '../../../utils/widget/sidebar.dart';
import '../../../utils/widget/upcomingTask.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  final GlobalKey<ScaffoldState> _drawerKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _drawerKey,
      drawer: const Sidebar(),
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
                      padding: !context.isPhone
                          ? const EdgeInsets.all(30)
                          : const EdgeInsets.all(10),
                      margin:
                          !context.isPhone ? const EdgeInsets.all(10) : null,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: !context.isPhone
                              ? BorderRadius.circular(50)
                              : BorderRadius.circular(30)),
                      child: Column(
                        children: [
                          // start MY TASK
                          SizedBox(
                            height: Get.height * 0.33,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'My Task',
                                  style: TextStyle(
                                    color: CustomColor.primaryText,
                                    fontSize: 30,
                                  ),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                SizedBox(
                                  height: 200,
                                  child: ListView(
                                    physics:
                                        const AlwaysScrollableScrollPhysics(),
                                    scrollDirection: Axis.horizontal,
                                    shrinkWrap: true,
                                    children: [
                                      Container(
                                        margin: const EdgeInsets.all(10),
                                        padding: const EdgeInsets.all(15),
                                        width: 400,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          color: CustomColor.cardBg,
                                        ),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              children: [
                                                ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(25),
                                                  child: const CircleAvatar(
                                                    backgroundColor:
                                                        Colors.amber,
                                                    radius: 20,
                                                    foregroundImage: NetworkImage(
                                                        'https://pbs.twimg.com/profile_images/1488749186610728960/4POimDrS_400x400.jpg'),
                                                  ),
                                                ),
                                                ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(25),
                                                  child: const CircleAvatar(
                                                    backgroundColor:
                                                        Colors.amber,
                                                    radius: 20,
                                                    foregroundImage: NetworkImage(
                                                        'https://pbs.twimg.com/profile_images/1488749186610728960/4POimDrS_400x400.jpg'),
                                                  ),
                                                ),
                                                ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(25),
                                                  child: const CircleAvatar(
                                                    backgroundColor:
                                                        Colors.amber,
                                                    radius: 20,
                                                    foregroundImage: NetworkImage(
                                                        'https://pbs.twimg.com/profile_images/1488749186610728960/4POimDrS_400x400.jpg'),
                                                  ),
                                                ),
                                                const Spacer(),
                                                Container(
                                                  height: 25,
                                                  width: 80,
                                                  color: CustomColor.primaryBg,
                                                  child: const Center(
                                                      child: Text(
                                                    '200%',
                                                    style: TextStyle(
                                                      color: CustomColor
                                                          .primaryText,
                                                    ),
                                                  )),
                                                ),
                                              ],
                                            ),
                                            const Spacer(),
                                            Container(
                                              height: 25,
                                              width: 80,
                                              color: CustomColor.primaryBg,
                                              child: const Center(
                                                  child: Text(
                                                '20/10 Task',
                                                style: TextStyle(
                                                  color:
                                                      CustomColor.primaryText,
                                                ),
                                              )),
                                            ),
                                            const Text(
                                              'Pemrograman Mobile (Flutter)',
                                              style: TextStyle(
                                                  color:
                                                      CustomColor.primaryText,
                                                  fontSize: 20),
                                            ),
                                            const Text(
                                              'Tersisa 3 Hari lagi',
                                              style: TextStyle(
                                                  color:
                                                      CustomColor.primaryText,
                                                  fontSize: 15),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        clipBehavior: Clip.antiAlias,
                                        margin: const EdgeInsets.all(10),
                                        padding: const EdgeInsets.all(15),
                                        width: 400,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          color: CustomColor.cardBg,
                                        ),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              children: [
                                                ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(25),
                                                  child: const CircleAvatar(
                                                    backgroundColor:
                                                        Colors.amber,
                                                    radius: 20,
                                                    foregroundImage: NetworkImage(
                                                        'https://pbs.twimg.com/profile_images/1488749186610728960/4POimDrS_400x400.jpg'),
                                                  ),
                                                ),
                                                ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(25),
                                                  child: const CircleAvatar(
                                                    backgroundColor:
                                                        Colors.amber,
                                                    radius: 20,
                                                    foregroundImage: NetworkImage(
                                                        'https://pbs.twimg.com/profile_images/1488749186610728960/4POimDrS_400x400.jpg'),
                                                  ),
                                                ),
                                                ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(25),
                                                  child: const CircleAvatar(
                                                    backgroundColor:
                                                        Colors.amber,
                                                    radius: 20,
                                                    foregroundImage: NetworkImage(
                                                        'https://pbs.twimg.com/profile_images/1488749186610728960/4POimDrS_400x400.jpg'),
                                                  ),
                                                ),
                                                const Spacer(),
                                                Container(
                                                  height: 25,
                                                  width: 80,
                                                  color: CustomColor.primaryBg,
                                                  child: const Center(
                                                      child: Text(
                                                    '200%',
                                                    style: TextStyle(
                                                      color: CustomColor
                                                          .primaryText,
                                                    ),
                                                  )),
                                                ),
                                              ],
                                            ),
                                            const Spacer(),
                                            Container(
                                              height: 25,
                                              width: 80,
                                              color: CustomColor.primaryBg,
                                              child: const Center(
                                                  child: Text(
                                                '20/10 Task',
                                                style: TextStyle(
                                                  color:
                                                      CustomColor.primaryText,
                                                ),
                                              )),
                                            ),
                                            const Text(
                                              'Pemrograman Mobile (Flutter)',
                                              style: TextStyle(
                                                  color:
                                                      CustomColor.primaryText,
                                                  fontSize: 20),
                                            ),
                                            const Text(
                                              'Tersisa 3 Hari lagi',
                                              style: TextStyle(
                                                  color:
                                                      CustomColor.primaryText,
                                                  fontSize: 15),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        margin: const EdgeInsets.all(10),
                                        padding: const EdgeInsets.all(15),
                                        width: 400,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          color: CustomColor.cardBg,
                                        ),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              children: [
                                                ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(25),
                                                  child: const CircleAvatar(
                                                    backgroundColor:
                                                        Colors.amber,
                                                    radius: 20,
                                                    foregroundImage: NetworkImage(
                                                        'https://pbs.twimg.com/profile_images/1488749186610728960/4POimDrS_400x400.jpg'),
                                                  ),
                                                ),
                                                ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(25),
                                                  child: const CircleAvatar(
                                                    backgroundColor:
                                                        Colors.amber,
                                                    radius: 20,
                                                    foregroundImage: NetworkImage(
                                                        'https://pbs.twimg.com/profile_images/1488749186610728960/4POimDrS_400x400.jpg'),
                                                  ),
                                                ),
                                                ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(25),
                                                  child: const CircleAvatar(
                                                    backgroundColor:
                                                        Colors.amber,
                                                    radius: 20,
                                                    foregroundImage: NetworkImage(
                                                        'https://pbs.twimg.com/profile_images/1488749186610728960/4POimDrS_400x400.jpg'),
                                                  ),
                                                ),
                                                const Spacer(),
                                                Container(
                                                  height: 25,
                                                  width: 80,
                                                  color: CustomColor.primaryBg,
                                                  child: const Center(
                                                      child: Text(
                                                    '200%',
                                                    style: TextStyle(
                                                      color: CustomColor
                                                          .primaryText,
                                                    ),
                                                  )),
                                                ),
                                              ],
                                            ),
                                            const Spacer(),
                                            Container(
                                              height: 25,
                                              width: 80,
                                              color: CustomColor.primaryBg,
                                              child: const Center(
                                                  child: Text(
                                                '20/10 Task',
                                                style: TextStyle(
                                                  color:
                                                      CustomColor.primaryText,
                                                ),
                                              )),
                                            ),
                                            const Text(
                                              'Pemrograman Mobile (Flutter)',
                                              style: TextStyle(
                                                  color:
                                                      CustomColor.primaryText,
                                                  fontSize: 20),
                                            ),
                                            const Text(
                                              'Tersisa 3 Hari lagi',
                                              style: TextStyle(
                                                  color:
                                                      CustomColor.primaryText,
                                                  fontSize: 15),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        margin: const EdgeInsets.all(10),
                                        padding: const EdgeInsets.all(15),
                                        width: 400,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          color: CustomColor.cardBg,
                                        ),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              children: [
                                                ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(25),
                                                  child: const CircleAvatar(
                                                    backgroundColor:
                                                        Colors.amber,
                                                    radius: 20,
                                                    foregroundImage: NetworkImage(
                                                        'https://pbs.twimg.com/profile_images/1488749186610728960/4POimDrS_400x400.jpg'),
                                                  ),
                                                ),
                                                ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(25),
                                                  child: const CircleAvatar(
                                                    backgroundColor:
                                                        Colors.amber,
                                                    radius: 20,
                                                    foregroundImage: NetworkImage(
                                                        'https://pbs.twimg.com/profile_images/1488749186610728960/4POimDrS_400x400.jpg'),
                                                  ),
                                                ),
                                                ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(25),
                                                  child: const CircleAvatar(
                                                    backgroundColor:
                                                        Colors.amber,
                                                    radius: 20,
                                                    foregroundImage: NetworkImage(
                                                        'https://pbs.twimg.com/profile_images/1488749186610728960/4POimDrS_400x400.jpg'),
                                                  ),
                                                ),
                                                const Spacer(),
                                                Container(
                                                  height: 25,
                                                  width: 80,
                                                  color: CustomColor.primaryBg,
                                                  child: const Center(
                                                      child: Text(
                                                    '200%',
                                                    style: TextStyle(
                                                      color: CustomColor
                                                          .primaryText,
                                                    ),
                                                  )),
                                                ),
                                              ],
                                            ),
                                            const Spacer(),
                                            Container(
                                              height: 25,
                                              width: 80,
                                              color: CustomColor.primaryBg,
                                              child: const Center(
                                                  child: Text(
                                                '20/10 Task',
                                                style: TextStyle(
                                                  color:
                                                      CustomColor.primaryText,
                                                ),
                                              )),
                                            ),
                                            const Text(
                                              'Pemrograman Mobile (Flutter)',
                                              style: TextStyle(
                                                  color:
                                                      CustomColor.primaryText,
                                                  fontSize: 20),
                                            ),
                                            const Text(
                                              'Tersisa 3 Hari lagi',
                                              style: TextStyle(
                                                  color:
                                                      CustomColor.primaryText,
                                                  fontSize: 15),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          // end of MY TASK
                          Expanded(
                            child: Row(
                              children: [
                                const UpcomingTask(),
                                Expanded(
                                  child: Column(
                                    children: [
                                      Row(
                                        children: const [
                                          Text(
                                            'My Friends',
                                            style: TextStyle(
                                              color: CustomColor.primaryText,
                                              fontSize: 30,
                                            ),
                                          ),
                                          Spacer(),
                                          Text(
                                            'More',
                                            style: TextStyle(
                                              color: CustomColor.primaryText,
                                              fontSize: 30,
                                            ),
                                          ),
                                          Icon(
                                            Ionicons.arrow_forward,
                                            color: CustomColor.primaryText,
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
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
