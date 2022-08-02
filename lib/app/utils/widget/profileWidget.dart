import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../data/controller/auth_controller.dart';
import '../style/custom_colors.dart';

class profileWidget extends StatelessWidget {
  final authCon = Get.find<AuthController>();

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: !context.isPhone
          ? Row(
              children: [
                Expanded(
                  flex: 1,
                  child: ClipRRect(
                    child: CircleAvatar(
                      backgroundColor: Colors.amber,
                      radius: 150,
                      foregroundImage:
                          NetworkImage(authCon.auth.currentUser!.photoURL!),
                    ),
                  ),
                ),
                // SizedBox(
                //   width: 20,
                // ),
                Expanded(
                  flex: 2,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        authCon.auth.currentUser!.displayName!,
                        style: const TextStyle(
                          color: CustomColor.primaryText,
                          fontSize: 35,
                        ),
                      ),
                      Text(
                        authCon.auth.currentUser!.email!,
                        style: const TextStyle(
                          color: CustomColor.primaryText,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            )
          : Center(
              child: Column(
                children: [
                  Expanded(
                    flex: 1,
                    child: ClipRRect(
                      child: CircleAvatar(
                        backgroundColor: Colors.amber,
                        radius: 150,
                        foregroundImage:
                            NetworkImage(authCon.auth.currentUser!.photoURL!),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    authCon.auth.currentUser!.displayName!,
                    style: const TextStyle(
                      color: CustomColor.primaryText,
                      fontSize: 35,
                    ),
                  ),
                  Text(
                    authCon.auth.currentUser!.email!,
                    style: const TextStyle(
                      color: CustomColor.primaryText,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
    );
  }
}
