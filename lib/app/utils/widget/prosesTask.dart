import 'package:date_time_picker/date_time_picker.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task_management/app/data/controller/auth_controller.dart';
import 'package:task_management/app/utils/style/custom_colors.dart';

addEditTask({BuildContext? context, String? type, String? docId}) {
  final authCon = Get.find<AuthController>();

  Get.bottomSheet(
    Container(
      padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
      margin: !context!.isPhone
          ? const EdgeInsets.only(right: 150, left: 150)
          : null,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
            topRight: const Radius.circular(30), topLeft: Radius.circular(30)),
      ),
      child: Form(
        key: authCon.formKey,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text(
                '$type Task',
                style: const TextStyle(
                  color: CustomColor.primaryText,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'title',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                controller: authCon.titleController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Can not be empty';
                  }
                  return null;
                },
              ),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                keyboardType: TextInputType.multiline,
                maxLines: 5,
                decoration: InputDecoration(
                  hintText: 'Description',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                controller: authCon.descriptionController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Can not be empty';
                  }
                  return null;
                },
              ),
              const SizedBox(
                height: 10,
              ),
              DateTimePicker(
                firstDate: DateTime.now(),
                lastDate: DateTime(2100),
                dateLabelText: 'Due Date',
                decoration: InputDecoration(
                  hintText: 'Due Date',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                controller: authCon.dueDateController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Can not be empty';
                  }
                  return null;
                },
              ),
              const SizedBox(
                height: 10,
              ),
              ConstrainedBox(
                constraints:
                    BoxConstraints.tightFor(width: Get.width, height: 40),
                child: ElevatedButton(
                  onPressed: () {
                    authCon.saveUpdateTask(
                      type: type,
                      titel: authCon.titleController.text,
                      description: authCon.descriptionController.text,
                      dueDate: authCon.dueDateController.text,
                      docId: docId,
                    );
                  },
                  child: Text(type!),
                ),
              ),
              const SizedBox(
                height: 20,
              )
            ],
          ),
        ),
      ),
    ),
  );
}
