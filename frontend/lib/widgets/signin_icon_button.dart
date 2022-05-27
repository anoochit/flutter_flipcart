import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignInIconButton extends StatelessWidget {
  const SignInIconButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.login),
      onPressed: () => Get.toNamed('/signin'),
    );
  }
}
