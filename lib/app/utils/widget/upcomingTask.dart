import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../style/custom_colors.dart';

class UpcomingTask extends StatelessWidget {
  const UpcomingTask({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Upcoming Task',
                style: TextStyle(
                  color: CustomColor.primaryText,
                  fontSize: 30,
                ),
              ),
              const SizedBox(height: 20),
              SizedBox(
                height: 400,
                child: ListView(
                  physics: const AlwaysScrollableScrollPhysics(),
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  children: [
                    Container(
                      margin: const EdgeInsets.all(10),
                      padding: const EdgeInsets.all(15),
                      height: 150,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: CustomColor.cardBg,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(25),
                                child: const CircleAvatar(
                                  backgroundColor: Colors.amber,
                                  radius: 20,
                                  foregroundImage: NetworkImage(
                                      'https://pbs.twimg.com/profile_images/1488749186610728960/4POimDrS_400x400.jpg'),
                                ),
                              ),
                              ClipRRect(
                                borderRadius: BorderRadius.circular(25),
                                child: const CircleAvatar(
                                  backgroundColor: Colors.amber,
                                  radius: 20,
                                  foregroundImage: NetworkImage(
                                      'https://pbs.twimg.com/profile_images/1488749186610728960/4POimDrS_400x400.jpg'),
                                ),
                              ),
                              ClipRRect(
                                borderRadius: BorderRadius.circular(25),
                                child: const CircleAvatar(
                                  backgroundColor: Colors.amber,
                                  radius: 20,
                                  foregroundImage: NetworkImage(
                                      'https://pbs.twimg.com/profile_images/1488749186610728960/4POimDrS_400x400.jpg'),
                                ),
                              ),
                              const Spacer(),
                              Container(
                                height: 25,
                                width: 80,
                                color: CustomColor.primaryBg,
                                child: const Center(
                                    child: Text(
                                  '200%',
                                  style: TextStyle(
                                    color: CustomColor.primaryText,
                                  ),
                                )),
                              ),
                            ],
                          ),
                          const Spacer(),
                          Container(
                            height: 25,
                            width: 100,
                            color: CustomColor.primaryBg,
                            child: const Center(
                                child: Text(
                              '20/10 Task',
                              style: TextStyle(
                                color: CustomColor.primaryText,
                              ),
                            )),
                          ),
                          const Text(
                            'Pemrograman Mobile (Flutter)',
                            style: TextStyle(
                                color: CustomColor.primaryText, fontSize: 20),
                          ),
                          const Text(
                            'Tersisa 3 Hari lagi',
                            style: TextStyle(
                                color: CustomColor.primaryText, fontSize: 15),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.all(10),
                      padding: const EdgeInsets.all(15),
                      height: 150,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: CustomColor.cardBg,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(25),
                                child: const CircleAvatar(
                                  backgroundColor: Colors.amber,
                                  radius: 20,
                                  foregroundImage: NetworkImage(
                                      'https://pbs.twimg.com/profile_images/1488749186610728960/4POimDrS_400x400.jpg'),
                                ),
                              ),
                              ClipRRect(
                                borderRadius: BorderRadius.circular(25),
                                child: const CircleAvatar(
                                  backgroundColor: Colors.amber,
                                  radius: 20,
                                  foregroundImage: NetworkImage(
                                      'https://pbs.twimg.com/profile_images/1488749186610728960/4POimDrS_400x400.jpg'),
                                ),
                              ),
                              ClipRRect(
                                borderRadius: BorderRadius.circular(25),
                                child: const CircleAvatar(
                                  backgroundColor: Colors.amber,
                                  radius: 20,
                                  foregroundImage: NetworkImage(
                                      'https://pbs.twimg.com/profile_images/1488749186610728960/4POimDrS_400x400.jpg'),
                                ),
                              ),
                              const Spacer(),
                              Container(
                                height: 25,
                                width: 80,
                                color: CustomColor.primaryBg,
                                child: const Center(
                                    child: Text(
                                  '200%',
                                  style: TextStyle(
                                    color: CustomColor.primaryText,
                                  ),
                                )),
                              ),
                            ],
                          ),
                          const Spacer(),
                          Container(
                            height: 25,
                            width: 100,
                            color: CustomColor.primaryBg,
                            child: const Center(
                                child: Text(
                              '20/10 Task',
                              style: TextStyle(
                                color: CustomColor.primaryText,
                              ),
                            )),
                          ),
                          const Text(
                            'Pemrograman Mobile (Flutter)',
                            style: TextStyle(
                                color: CustomColor.primaryText, fontSize: 20),
                          ),
                          const Text(
                            'Tersisa 3 Hari lagi',
                            style: TextStyle(
                                color: CustomColor.primaryText, fontSize: 15),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.all(10),
                      padding: const EdgeInsets.all(15),
                      height: 150,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: CustomColor.cardBg,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(25),
                                child: const CircleAvatar(
                                  backgroundColor: Colors.amber,
                                  radius: 20,
                                  foregroundImage: NetworkImage(
                                      'https://pbs.twimg.com/profile_images/1488749186610728960/4POimDrS_400x400.jpg'),
                                ),
                              ),
                              ClipRRect(
                                borderRadius: BorderRadius.circular(25),
                                child: const CircleAvatar(
                                  backgroundColor: Colors.amber,
                                  radius: 20,
                                  foregroundImage: NetworkImage(
                                      'https://pbs.twimg.com/profile_images/1488749186610728960/4POimDrS_400x400.jpg'),
                                ),
                              ),
                              ClipRRect(
                                borderRadius: BorderRadius.circular(25),
                                child: const CircleAvatar(
                                  backgroundColor: Colors.amber,
                                  radius: 20,
                                  foregroundImage: NetworkImage(
                                      'https://pbs.twimg.com/profile_images/1488749186610728960/4POimDrS_400x400.jpg'),
                                ),
                              ),
                              const Spacer(),
                              Container(
                                height: 25,
                                width: 80,
                                color: CustomColor.primaryBg,
                                child: const Center(
                                    child: Text(
                                  '200%',
                                  style: TextStyle(
                                    color: CustomColor.primaryText,
                                  ),
                                )),
                              ),
                            ],
                          ),
                          const Spacer(),
                          Container(
                            height: 25,
                            width: 100,
                            color: CustomColor.primaryBg,
                            child: const Center(
                                child: Text(
                              '20/10 Task',
                              style: TextStyle(
                                color: CustomColor.primaryText,
                              ),
                            )),
                          ),
                          const Text(
                            'Pemrograman Mobile (Flutter)',
                            style: TextStyle(
                                color: CustomColor.primaryText, fontSize: 20),
                          ),
                          const Text(
                            'Tersisa 3 Hari lagi',
                            style: TextStyle(
                                color: CustomColor.primaryText, fontSize: 15),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
