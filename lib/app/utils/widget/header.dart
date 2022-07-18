import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ionicons/ionicons.dart';
import '../style/custom_colors.dart';

import '../../routes/app_pages.dart';

class Header extends StatelessWidget {
  const Header({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Get.height * 0.1,
      child: Padding(
        //
        padding: const EdgeInsets.only(left: 15, right: 30, top: 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'Task Management',
                  style:
                      TextStyle(fontSize: 19, color: CustomColor.primaryText),
                ),
                Text('Menjadi mudah dengan Task Management',
                    style:
                        TextStyle(fontSize: 14, color: CustomColor.primaryText))
              ],
            ),
            const Spacer(
              flex: 1,
            ),
            Expanded(
              flex: 1,
              child: TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  contentPadding: const EdgeInsets.only(left: 40, right: 10),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: const BorderSide(color: Colors.white)),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: const BorderSide(color: Colors.blue),
                  ),
                  prefixIcon: const Icon(Ionicons.search),
                  hintText: 'Pencarian',
                ),
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            const Icon(
              Ionicons.notifications,
              color: CustomColor.primaryText,
              size: 25,
            ),
            const SizedBox(
              width: 10,
            ),
            GestureDetector(
              onTap: () {
                Get.defaultDialog(
                  title: 'Sign Out',
                  content: const Text('Yakin ingin keluar?'),
                  cancel: ElevatedButton(
                    onPressed: () => Get.back(),
                    child: const Text('Batal'),
                  ),
                  confirm: ElevatedButton(
                      onPressed: () => Get.toNamed(Routes.LOGIN),
                      child: const Text('Ya')),
                );
              },
              child: Row(
                children: const [
                  Text('Sign out',
                      style: TextStyle(
                          fontSize: 18, color: CustomColor.primaryText)),
                  SizedBox(
                    width: 5,
                  ),
                  Icon(
                    Ionicons.log_out_outline,
                    color: CustomColor.primaryText,
                    size: 25,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
