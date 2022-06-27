import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:task_management/app/utils/widget/sidebar.dart';

import '../controllers/task_controller.dart';

class TaskView extends GetView<TaskController> {
  const TaskView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          const Expanded(flex: 2, child: Sidebar()),
          Expanded(
              flex: 15,
              child: Column(
                children: [
                  SizedBox(
                    height: Get.height * 0.1,
                  ),
                  Container(
                    height: Get.height - 100,
                    color: Colors.white,
                  )
                ],
              ))
        ],
      ),
    );
  }
}
