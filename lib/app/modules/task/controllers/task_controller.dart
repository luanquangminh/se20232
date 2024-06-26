import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task_lqm_app_chuan/app/data/controller/auth_controller.dart';

class TaskController extends GetxController {
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  FirebaseAuth auth = FirebaseAuth.instance;
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final authCon = Get.find<AuthController>();

  late TextEditingController titleController,
      descriptionController,
      dueDateController;
  final count = 0.obs;

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

  void saveUpdateTask({
    String? title,
    String? description,
    String? dueDate,
    String? docId,
    String? type,
  }) async {
    print(title);
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
    CollectionReference userColl = firestore.collection('users');
    var taskID = DateTime.now().toIso8601String();

    if (type == 'Add') {
      await taskColl.doc(taskID).set({
        'title': title,
        'description': description,
        'dueDate': dueDate,
        'status': '0',
        'total_task': 0,
        'total_task_finished': 0,
        'task_detail': [],
        'assign_to': [authCon.auth.currentUser!.email],
        'created_by': [authCon.auth.currentUser!.email],
      }).whenComplete(() async {
        await userColl.doc(authCon.auth.currentUser!.email).set({
          'task_id': FieldValue.arrayUnion([taskID])
        }, SetOptions(merge: true));
        Get.back();
        Get.snackbar('Task', 'Sucessfully $type');
      }).catchError((error) {
        Get.snackbar('Task', 'Error $type');
      });
    } else {
      await taskColl.doc(docId).update({
        'title': title,
        'description': description,
        'dueDate': dueDate,
      }).whenComplete(() async {
        await userColl.doc(authCon.auth.currentUser!.email).set({
          'task_id': FieldValue.arrayUnion([taskID])
        }, SetOptions(merge: true));
        Get.back();
        Get.snackbar('Task', 'Sucessfully $type');
      }).catchError((error) {
        Get.snackbar('Task', 'Error $type');
      });
    }
  }

  void deleteTask(String taskID) async {
    CollectionReference taskColl = firestore.collection('task');
    CollectionReference userColl = firestore.collection('users');

    await taskColl.doc(taskID).delete().whenComplete(() async {
      await userColl.doc(auth.currentUser!.email).set({
        'task_id': FieldValue.arrayRemove([taskID])
      }, SetOptions(merge: true));
      Get.back();
      Get.snackbar('Task', 'Sucessfully Delete');
    });
  }
}
