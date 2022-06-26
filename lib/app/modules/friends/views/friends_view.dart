import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:task_management/app/utils/widget/sidebar.dart';

import '../controllers/friends_controller.dart';

class FriendsView extends GetView<FriendsController> {
  const FriendsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FriendsView'),
        centerTitle: true,
      ),
      body: Sidebar(),
    );
  }
}
