import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../style/custom_colors.dart';

class profileWidget extends StatelessWidget {
  const profileWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: !context.isPhone
          ? Row(
              children: [
                const Expanded(
                  flex: 1,
                  child: ClipRRect(
                    child: CircleAvatar(
                      backgroundColor: Colors.amber,
                      radius: 150,
                      foregroundImage: NetworkImage(
                          'https://pbs.twimg.com/profile_images/1488749186610728960/4POimDrS_400x400.jpg'),
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
                    children: const [
                      Text(
                        'Hatori',
                        style: TextStyle(
                          color: CustomColor.primaryText,
                          fontSize: 35,
                        ),
                      ),
                      Text(
                        'hatorininja@gmail.com',
                        style: TextStyle(
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
                children: const [
                  Expanded(
                    flex: 1,
                    child: ClipRRect(
                      child: CircleAvatar(
                        backgroundColor: Colors.amber,
                        radius: 150,
                        foregroundImage: NetworkImage(
                            'https://pbs.twimg.com/profile_images/1488749186610728960/4POimDrS_400x400.jpg'),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Hatori',
                    style: TextStyle(
                      color: CustomColor.primaryText,
                      fontSize: 35,
                    ),
                  ),
                  Text(
                    'hatorininja@gmail.com',
                    style: TextStyle(
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
