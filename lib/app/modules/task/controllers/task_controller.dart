import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:task_management/app/data/controller/auth_controller.dart';

class TaskController extends GetxController {
  //TODO: Implement TaskController
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  UserCredential? _userCredential;
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final authCon = Get.find<AuthController>();
  FirebaseAuth auth = FirebaseAuth.instance;
  late TextEditingController titleController,
      descriptionController,
      dueDateController;

  @override
  void onInit() {
    super.onInit();
    titleController = TextEditingController();
    descriptionController = TextEditingController();
    dueDateController = TextEditingController();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    titleController.dispose();
    descriptionController.dispose();
    dueDateController.dispose();
  }

  Future<void> saveUpdateTask(
      {String? titel,
      String? description,
      String? dueDate,
      String? docId,
      String? type}) async {
    print(titel);
    print(description);
    print(dueDate);
    print(docId);
    print(type);
    final isValid = formKey.currentState!.validate();
    if (!isValid) {
      return;
    }
    formKey.currentState!.save();
    CollectionReference taskColl = firestore.collection('task');
    CollectionReference usersColl = firestore.collection('users');
    var taskId = DateTime.now().toIso8601String();
    if (type == 'Add') {
      await taskColl.doc(taskId).set({
        'title': titel,
        'description': description,
        'dueDate': dueDate,
        'status': '0',
        'total_task': '0',
        'total_task_finished': '0',
        'task_detail': [],
        'asign_to': [authCon.auth.currentUser!.email],
        'created_by': authCon.auth.currentUser!.email,
      }).whenComplete(() async {
        await usersColl.doc(authCon.auth.currentUser!.email).set({
          'task_id': FieldValue.arrayUnion([taskId])
        }, SetOptions(merge: true));
        Get.back();
        Get.snackbar('Task', 'Successfully $type');
      }).catchError((error) {
        Get.snackbar('Task', 'Failed to $type');
      });
    } else {
      await taskColl.doc(docId).update({
        'title': titel,
        'description': description,
        'dueDate': dueDate,
      }).whenComplete(() async {
        await usersColl.doc(authCon.auth.currentUser!.email).set({
          'task_id': FieldValue.arrayUnion([taskId])
        }, SetOptions(merge: true));
        Get.back();
        Get.snackbar('Task', 'Successfully $type');
      }).catchError((error) {
        Get.snackbar('Task', 'Failed to $type');
      });
    }
  }
}
