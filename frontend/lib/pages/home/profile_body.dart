import 'package:flutter/material.dart';
import 'package:frontend/controllers/app_controller.dart';
import 'package:get/get.dart';

class ProfileBody extends StatelessWidget {
  const ProfileBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AppController>(
        init: AppController(),
        builder: (controller) {
          // if not login show login button
          // else show profile and acton buttons
          if (controller.isLogin.isFalse) {
            return Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text("Please sign in to your account!"),
                  ),
                  ElevatedButton(
                    onPressed: () => Get.toNamed('/signin'),
                    child: const Text("Sign In"),
                  )
                ],
              ),
            );
          } else {
            return Column(
              children: [
                // badge
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 12.0),
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 24,
                        child: Text("User Name".substring(0, 1)),
                      ),
                      const SizedBox(
                        width: 16,
                      ),
                      Text(
                        "User Name",
                        style: Theme.of(context).textTheme.headline5,
                      ),
                    ],
                  ),
                ),

                // your order
                ListTile(
                  leading: const Icon(Icons.shopping_bag),
                  title: const Text("Your order"),
                  onTap: () => Get.snackbar(
                    "Message",
                    "not implement",
                    snackPosition: SnackPosition.TOP,
                    duration: const Duration(seconds: 1),
                  ),
                ),

                // payment method
                ListTile(
                  leading: const Icon(Icons.payment),
                  title: const Text("Payment"),
                  onTap: () => Get.snackbar(
                    "Message",
                    "not implement",
                    snackPosition: SnackPosition.TOP,
                    duration: const Duration(seconds: 1),
                  ),
                ),

                // signout
                ListTile(
                  leading: const Icon(Icons.exit_to_app),
                  title: const Text("Sign out"),
                  onTap: () => showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: const Text("Sign out"),
                      content: const Text(
                        "Do you want to signout?",
                      ),
                      actions: [
                        TextButton(
                          onPressed: () => controller.mockSignOut(),
                          child: const Text("Yes"),
                        ),
                        TextButton(
                          onPressed: () => Get.back(),
                          child: const Text("No"),
                        )
                      ],
                    ),
                  ),
                )
              ],
            );
          }
        });
  }
}
