import 'package:flutter/material.dart';

import '../constants/app_textstyle.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final String image;
  final bool isPassword;

  const CustomTextField({
    super.key,
    required this.hintText,
    required this.image,
    this.isPassword = false,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset(
          image,
          width: 24,
          height: 24,
        ),
        const SizedBox(width: 10),
        Expanded(
          child: TextField(
            obscureText: isPassword,
            decoration: InputDecoration(
              hintText: hintText,
              hintStyle: rStyleBlack16300,
              border: InputBorder.none,
              enabledBorder: InputBorder.none,
              focusedBorder: InputBorder.none,
            ),
          ),
        ),
      ],
    );
  }
}
