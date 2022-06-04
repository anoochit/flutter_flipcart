import 'package:flutter/material.dart';
import 'package:frontend/controllers/auth_controller.dart';
import 'package:get/get.dart';

import '../../themes/theme.dart';

class SignUpPage extends StatelessWidget {
  SignUpPage({Key? key}) : super(key: key);

  final formKey = GlobalKey<FormState>();

  final controller = Get.find<AuthController>();

  TextEditingController textNameController = TextEditingController();
  TextEditingController textUserController = TextEditingController();
  TextEditingController textPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Form(
            key: formKey,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 14.0),
                  child: Text('Sign Up', style: Theme.of(context).textTheme.headline4),
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: TextFormField(
                    controller: textNameController,
                    decoration: InputDecoration(
                      border: kTextInputOutline,
                      prefixIcon: const Icon(Icons.account_circle),
                      hintText: 'Name',
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: TextFormField(
                    controller: textUserController,
                    decoration: InputDecoration(
                      border: kTextInputOutline,
                      prefixIcon: const Icon(Icons.email),
                      hintText: 'E-mail',
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: TextFormField(
                    controller: textPasswordController,
                    decoration: InputDecoration(
                      border: kTextInputOutline,
                      prefixIcon: const Icon(Icons.password),
                      hintText: 'Password',
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: 56,
                    child: ElevatedButton(
                      // TODO : signup process
                      onPressed: () {
                        // signup
                        controller
                            .signUp(
                          name: textNameController.text.trim(),
                          email: textUserController.text.trim(),
                          password: textPasswordController.text.trim(),
                        )
                            .then((user) {
                          if (user != null) {
                            Get.offAllNamed('/');
                          }
                        });
                      },
                      child: const Text("Sign Up"),
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(8.0),
                  child: const Text("Already have an account, please sign in"),
                ),
                Container(
                  padding: const EdgeInsets.all(4.0),
                  width: MediaQuery.of(context).size.width,
                  height: 56,
                  child: TextButton(
                    onPressed: () => Get.offNamed('/signin'),
                    child: const Text("Sign In"),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
