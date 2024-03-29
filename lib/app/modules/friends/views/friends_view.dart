import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:ionicons/ionicons.dart';
import 'package:task_management/app/utils/style/custom_colors.dart';
import 'package:task_management/app/utils/widget/myFriends.dart';

import '../../../data/controller/auth_controller.dart';
import '../../../utils/widget/header.dart';
import '../../../utils/widget/peopleYouMayKnow.dart';
import '../../../utils/widget/sidebar.dart';

import '../controllers/friends_controller.dart';

class FriendsView extends GetView<FriendsController> {
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
                          child: Column(
                            children: [
                              Row(
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
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
                                    child: CircleAvatar(
                                      backgroundColor: Colors.amber,
                                      radius: 25,
                                      foregroundImage: NetworkImage(
                                          authCon.auth.currentUser!.photoURL!),
                                    ),
                                  )
                                ],
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              context.isPhone
                                  ? TextField(
                                      onChanged: (value) =>
                                          authCon.searchFriends(value),
                                      controller:
                                          authCon.searchFriendsController,
                                      decoration: InputDecoration(
                                        filled: true,
                                        fillColor: Colors.white,
                                        contentPadding: const EdgeInsets.only(
                                            left: 40, right: 10),
                                        enabledBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(30),
                                            borderSide: const BorderSide(
                                                color: Colors.white)),
                                        focusedBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(30),
                                          borderSide: const BorderSide(
                                              color: Colors.blue),
                                        ),
                                        prefixIcon: const Icon(Ionicons.search),
                                        hintText: 'Pencarian',
                                      ),
                                    )
                                  : SizedBox(),
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
                      child: Obx(
                        () => authCon.hasilPencarian.isEmpty
                            ? Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    'People You May Know',
                                    style: TextStyle(
                                      fontSize: 30,
                                      color: CustomColor.primaryText,
                                    ),
                                  ),
                                  PeopleYouMayKnow(),
                                  MyFriends(),
                                ],
                              )
                            : ListView.builder(
                                padding: EdgeInsets.all(8.0),
                                shrinkWrap: true,
                                itemCount: authCon.hasilPencarian.length,
                                itemBuilder: (context, index) => ListTile(
                                      onTap: (() => authCon.addFriends(authCon
                                          .hasilPencarian[index]['email'])),
                                      leading: ClipRRect(
                                        borderRadius: BorderRadius.circular(50),
                                        child: Image(
                                            image: NetworkImage(
                                                authCon.hasilPencarian[index]
                                                    ['photo'])),
                                      ),
                                      title: Text(authCon.hasilPencarian[index]
                                          ['name']),
                                      subtitle: Text(authCon
                                          .hasilPencarian[index]['email']),
                                      trailing: Icon(Ionicons.add),
                                    )),
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
