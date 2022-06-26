import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:task_management/app/utils/widget/sidebar.dart';

import '../controllers/task_controller.dart';

class TaskView extends GetView<TaskController> {
  const TaskView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TaskView'),
        centerTitle: true,
      ),
      body: Sidebar(),
    );
  }
}