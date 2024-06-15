// ignore: file_names
import 'package:flutter/material.dart';
import 'package:task_lqm_app_chuan/app/utils/style/appColors.dart';

// ignore: camel_case_types
class myTask extends StatelessWidget {
  const myTask({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 185,
      child: ListView(
        clipBehavior: Clip.antiAlias,
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        children: [
          Container(
            width: 400,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: AppColors.cardBG,
            ),
            margin: const EdgeInsets.all(10),
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(25),
                          child: const CircleAvatar(
                            backgroundColor: Colors.amber,
                            radius: 25,
                            foregroundImage: NetworkImage(
                                'https://images.pexels.com/photos/1084700/pexels-photo-1084700.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940'),
                          ),
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(30),
                          child: const CircleAvatar(
                            backgroundColor: Colors.amber,
                            radius: 25,
                            foregroundImage: NetworkImage(
                                'https://images.pexels.com/photos/1084700/pexels-photo-1084700.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940'),
                          ),
                        ),
                        const Spacer(),
                        Container(
                          height: 25,
                          width: 80,
                          color: AppColors.primaryBG,
                          child: const Center(
                            child: Text(
                              '100%',
                              style: TextStyle(
                                color: AppColors.primaryText,
                                fontSize: 20,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
                const Spacer(),
                Container(
                  height: 25,
                  width: 80,
                  color: AppColors.primaryBG,
                  child: const Center(
                    child: Text(
                      '10/10 Tasks',
                      style: TextStyle(
                        color: AppColors.primaryText,
                      ),
                    ),
                  ),
                ),
                const Text(
                  'Mobile Programming',
                  style: TextStyle(
                    color: AppColors.primaryText,
                    fontSize: 20,
                  ),
                ),
                const Text(
                  'Deadline 2 Hours ago',
                  style: TextStyle(
                    color: AppColors.primaryText,
                    fontSize: 15,
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: 400,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: AppColors.cardBG,
            ),
            margin: const EdgeInsets.all(10),
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(25),
                          child: const CircleAvatar(
                            backgroundColor: Colors.amber,
                            radius: 25,
                            foregroundImage: NetworkImage(
                                'https://images.pexels.com/photos/1084700/pexels-photo-1084700.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940'),
                          ),
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(30),
                          child: const CircleAvatar(
                            backgroundColor: Colors.amber,
                            radius: 25,
                            foregroundImage: NetworkImage(
                                'https://images.pexels.com/photos/1084700/pexels-photo-1084700.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940'),
                          ),
                        ),
                        const Spacer(),
                        Container(
                          height: 25,
                          width: 80,
                          color: AppColors.primaryBG,
                          child: const Center(
                            child: Text(
                              '100%',
                              style: TextStyle(
                                color: AppColors.primaryText,
                                fontSize: 20,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
                const Spacer(),
                Container(
                  height: 25,
                  width: 80,
                  color: AppColors.primaryBG,
                  child: const Center(
                    child: Text(
                      '10/10 Tasks',
                      style: TextStyle(
                        color: AppColors.primaryText,
                      ),
                    ),
                  ),
                ),
                const Text(
                  'Mobile Programming',
                  style: TextStyle(
                    color: AppColors.primaryText,
                    fontSize: 20,
                  ),
                ),
                const Text(
                  'Deadline 2 Hours ago',
                  style: TextStyle(
                    color: AppColors.primaryText,
                    fontSize: 15,
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: 400,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: AppColors.cardBG,
            ),
            margin: const EdgeInsets.all(10),
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(25),
                          child: const CircleAvatar(
                            backgroundColor: Colors.amber,
                            radius: 25,
                            foregroundImage: NetworkImage(
                                'https://images.pexels.com/photos/1084700/pexels-photo-1084700.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940'),
                          ),
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(30),
                          child: const CircleAvatar(
                            backgroundColor: Colors.amber,
                            radius: 25,
                            foregroundImage: NetworkImage(
                                'https://images.pexels.com/photos/1084700/pexels-photo-1084700.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940'),
                          ),
                        ),
                        const Spacer(),
                        Container(
                          height: 25,
                          width: 80,
                          color: AppColors.primaryBG,
                          child: const Center(
                            child: Text(
                              '100%',
                              style: TextStyle(
                                color: AppColors.primaryText,
                                fontSize: 20,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
                const Spacer(),
                Container(
                  height: 25,
                  width: 80,
                  color: AppColors.primaryBG,
                  child: const Center(
                    child: Text(
                      '10/10 Tasks',
                      style: TextStyle(
                        color: AppColors.primaryText,
                      ),
                    ),
                  ),
                ),
                const Text(
                  'Mobile Programming',
                  style: TextStyle(
                    color: AppColors.primaryText,
                    fontSize: 20,
                  ),
                ),
                const Text(
                  'Deadline 2 Hours ago',
                  style: TextStyle(
                    color: AppColors.primaryText,
                    fontSize: 15,
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: 400,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: AppColors.cardBG,
            ),
            margin: const EdgeInsets.all(10),
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(25),
                          child: const CircleAvatar(
                            backgroundColor: Colors.amber,
                            radius: 25,
                            foregroundImage: NetworkImage(
                                'https://images.pexels.com/photos/1084700/pexels-photo-1084700.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940'),
                          ),
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(30),
                          child: const CircleAvatar(
                            backgroundColor: Colors.amber,
                            radius: 25,
                            foregroundImage: NetworkImage(
                                'https://images.pexels.com/photos/1084700/pexels-photo-1084700.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940'),
                          ),
                        ),
                        const Spacer(),
                        Container(
                          height: 25,
                          width: 80,
                          color: AppColors.primaryBG,
                          child: const Center(
                            child: Text(
                              '100%',
                              style: TextStyle(
                                color: AppColors.primaryText,
                                fontSize: 20,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
                const Spacer(),
                Container(
                  height: 25,
                  width: 80,
                  color: AppColors.primaryBG,
                  child: const Center(
                    child: Text(
                      '10/10 Tasks',
                      style: TextStyle(
                        color: AppColors.primaryText,
                      ),
                    ),
                  ),
                ),
                const Text(
                  'Mobile Programming',
                  style: TextStyle(
                    color: AppColors.primaryText,
                    fontSize: 20,
                  ),
                ),
                const Text(
                  'Deadline 2 Hours ago',
                  style: TextStyle(
                    color: AppColors.primaryText,
                    fontSize: 15,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
