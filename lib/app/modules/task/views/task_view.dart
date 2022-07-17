// ignore_for_file: unnecessary_const

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:ionicons/ionicons.dart';
import 'package:task_management/app/utils/style/custom_colors.dart';

import '../../../utils/widget/header.dart';
import '../../../utils/widget/sidebar.dart';

import '../controllers/task_controller.dart';

class TaskView extends GetView<TaskController> {
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
                                  'Task management terbaik',
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
                    margin: !context.isPhone ? const EdgeInsets.all(10) : null,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: !context.isPhone
                          ? BorderRadius.circular(50)
                          : BorderRadius.circular(30),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'My Task',
                          style: TextStyle(
                            fontSize: 30,
                            color: CustomColor.primaryText,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Expanded(
                          child: ListView.builder(
                            itemCount: 10,
                            clipBehavior: Clip.antiAlias,
                            shrinkWrap: true,
                            physics: const AlwaysScrollableScrollPhysics(),
                            scrollDirection: Axis.vertical,
                            itemBuilder: (context, index) {
                              return Container(
                                margin: const EdgeInsets.all(10),
                                padding: const EdgeInsets.all(15),
                                height: 150,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: CustomColor.cardBg,
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(25),
                                          child: const CircleAvatar(
                                            backgroundColor: Colors.amber,
                                            radius: 20,
                                            foregroundImage: NetworkImage(
                                                'https://pbs.twimg.com/profile_images/1488749186610728960/4POimDrS_400x400.jpg'),
                                          ),
                                        ),
                                        ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(25),
                                          child: const CircleAvatar(
                                            backgroundColor: Colors.amber,
                                            radius: 20,
                                            foregroundImage: NetworkImage(
                                                'https://pbs.twimg.com/profile_images/1488749186610728960/4POimDrS_400x400.jpg'),
                                          ),
                                        ),
                                        ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(25),
                                          child: const CircleAvatar(
                                            backgroundColor: Colors.amber,
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
                                              color: CustomColor.primaryText,
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
                                          color: CustomColor.primaryText,
                                        ),
                                      )),
                                    ),
                                    const Text(
                                      'Pemrograman Mobile (Flutter)',
                                      style: TextStyle(
                                          color: CustomColor.primaryText,
                                          fontSize: 20),
                                    ),
                                    const Text(
                                      'Tersisa 3 Hari lagi',
                                      style: TextStyle(
                                          color: CustomColor.primaryText,
                                          fontSize: 15),
                                    ),
                                  ],
                                ),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
      floatingActionButton: Align(
        alignment: const Alignment(0.9, 0.95),
        child: FloatingActionButton.extended(
          onPressed: () {
            Get.bottomSheet(Container(
                margin: !context.isPhone
                    ? const EdgeInsets.only(right: 150, left: 150)
                    : null,
                height: Get.height,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topRight: const Radius.circular(30),
                      topLeft: Radius.circular(30)),
                )));
          },
          label: const Text("Add Task"),
          icon: const Icon(Ionicons.add),
        ),
      ),
    );
  }
}
