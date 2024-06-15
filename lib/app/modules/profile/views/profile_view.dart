// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ionicons/ionicons.dart';
import 'package:task_lqm_app_chuan/app/data/controller/auth_controller.dart';
import 'package:task_lqm_app_chuan/app/utils/widget/myTask.dart';
import 'package:task_lqm_app_chuan/app/utils/widget/header.dart';
import 'package:task_lqm_app_chuan/app/utils/widget/profileW.dart';
import '../../../utils/style/appColors.dart';
import '../../../utils/widget/Sidebar.dart';
import '../controllers/profile_controller.dart';

class ProfileView extends GetView<ProfileController> {
  final GlobalKey<ScaffoldState> _drawerKey = GlobalKey();
  final authC = Get.find<AuthController>();

  ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _drawerKey,
      drawer: SizedBox(width: 150, child: const Sidebar()),
      backgroundColor: Colors.blue[100], // Example replacement
      body: SafeArea(
        child: Row(
          children: [
            if (!context.isPhone)
              Expanded(
                flex: 2,
                child: Sidebar(),
              )
            else
              SizedBox(),
            Expanded(
              flex: 15,
              child: Column(
                children: [
                  if (!context.isPhone)
                    header()
                  else
                    Container(
                      padding: const EdgeInsets.all(20),
                      child: Row(
                        children: [
                          IconButton(
                            onPressed: () {
                              _drawerKey.currentState!.openDrawer();
                            },
                            icon: const Icon(
                              Icons.menu,
                              color: Colors.grey,
                            ),
                          ),
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Task Management',
                                style:
                                    TextStyle(fontSize: 20, color: Colors.grey),
                              ),
                              Text(
                                'Manage tasks easily',
                                style:
                                    TextStyle(fontSize: 15, color: Colors.grey),
                              ),
                            ],
                          ),
                          const Spacer(),
                          const SizedBox(
                            width: 20,
                          ),
                          GestureDetector(onTap: () {
                            Get.defaultDialog(
                              title: 'Sign Out',
                              content: const Text(
                                  'Are you sure you want to Sign Out?'),
                              cancel: ElevatedButton(
                                onPressed: () => Get.back(),
                                child: const Text('Cancel'),
                              ),
                              confirm: ElevatedButton(
                                onPressed: () => authC.logout(),
                                child: const Text(
                                  'Sign Out',
                                  // style: TextStyle(color: Colors.grey),
                                ),
                              ),
                            );
                          }), // This was ),
                          const Icon(
                            Ionicons.notifications,
                            color: Colors.grey,
                            size: 30,
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Row(
                            children: [
                              Text('Sign Out'),
                              SizedBox(
                                width: 5,
                              ),
                              Icon(
                                Ionicons.log_out_outline,
                                color: Colors.grey,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  //content
                  Expanded(
                    child: Container(
                      padding: !context.isPhone
                          ? const EdgeInsets.all(50)
                          : const EdgeInsets.all(20),
                      margin: !context.isPhone
                          ? const EdgeInsets.all(10)
                          : const EdgeInsets.all(0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: !context.isPhone
                            ? BorderRadius.circular(50)
                            : BorderRadius.circular(30),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          profileW(),
                          Text(
                            'My Task',
                            style: TextStyle(
                              color: AppColors.primaryText,
                              fontSize: 30,
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          SizedBox(
                            height: 200,
                            child: myTask(),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
