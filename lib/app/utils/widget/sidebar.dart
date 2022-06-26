import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../routes/app_pages.dart';

class Sidebar extends StatelessWidget {
  const Sidebar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: Get.width * 0.15,
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          Image.asset('assets/icons/icon.png'),
          ListTile(
            leading: const Icon(Icons.message),
            title: const Text('Home'),
            onTap: () {
              Get.toNamed(Routes.HOME);
            },
            selected: Get.currentRoute == Routes.HOME ? true : false,
          ),
          ListTile(
            leading: const Icon(Icons.account_circle),
            title: const Text('Task'),
            onTap: () {
              Get.toNamed(Routes.TASK);
            },
            selected: Get.currentRoute == Routes.TASK ? true : false,
          ),
          ListTile(
            leading: const Icon(Icons.account_circle),
            title: const Text('Friends'),
            onTap: () {
              Get.toNamed(Routes.FRIENDS);
            },
            selected: Get.currentRoute == Routes.FRIENDS ? true : false,
          ),
          ListTile(
            leading: const Icon(Icons.account_circle),
            title: const Text('Profile'),
            onTap: () {
              Get.toNamed(Routes.PROFILE);
            },
            selected: Get.currentRoute == Routes.PROFILE ? true : false,
          ),
        ],
      ),
    );
  }
}
