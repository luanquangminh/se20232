// ignore: unnecessary_import
// ignore_for_file: unused_import

import 'dart:js';

import 'package:flutter/material.dart';
import 'package:task_lqm_app_chuan/app/utils/style/appColors.dart';
import 'package:get/get.dart';
import 'package:ionicons/ionicons.dart';
import 'package:task_lqm_app_chuan/app/modules/profile/controllers/profile_controller.dart';
import 'package:task_lqm_app_chuan/app/utils/widget/UpcomingTask.dart';
import 'package:task_lqm_app_chuan/app/utils/widget/myFriend.dart';
import 'package:task_lqm_app_chuan/app/utils/widget/myTask.dart';
import 'package:task_lqm_app_chuan/app/utils/widget/header.dart';

class profileW extends StatelessWidget {
  const profileW({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: !context.isPhone
          ? const Row(
              children: [
                Expanded(
                  flex: 1,
                  child: ClipRRect(
                    child: CircleAvatar(
                      backgroundColor: Colors.amber,
                      radius: 150,
                      foregroundImage: NetworkImage(
                          'https://images.pexels.com/photos/1084700/pexels-photo-1084700.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940'),
                    ),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Expanded(
                  flex: 2,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Anh Lô',
                        style: TextStyle(
                          color: AppColors.primaryText,
                          fontSize: 40,
                        ),
                      ),
                      Text(
                        'anhlo.com',
                        style: TextStyle(
                          color: AppColors.primaryText,
                          fontSize: 10,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            )
          : const Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  ClipRRect(
                    child: CircleAvatar(
                      backgroundColor: Colors.amber,
                      radius: 150,
                      foregroundImage: NetworkImage(
                          'https://images.pexels.com/photos/1084700/pexels-photo-1084700.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940'),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Anh Lô',
                    style: TextStyle(
                      color: AppColors.primaryText,
                      fontSize: 40,
                    ),
                  ),
                  Text(
                    'anhlo.com',
                    style: TextStyle(
                      color: AppColors.primaryText,
                      fontSize: 10,
                    ),
                  ),
                ],
              ),
            ),
    );
  }
}
