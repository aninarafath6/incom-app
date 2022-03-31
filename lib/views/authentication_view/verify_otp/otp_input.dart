import 'package:flutter/material.dart';
import 'package:incom/constants/app_colors.dart';

class OtpInput extends StatelessWidget {
  const OtpInput({
    Key? key,
    this.first = false,
    this.last = false,
  }) : super(key: key);
  final bool first, last;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60,
      height: 60,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: const Color.fromARGB(57, 149, 149, 149),
      ),
      child: Center(
        child: TextField(
          onChanged: (val) {
            if (val.length == 1 && last == false) {
              FocusScope.of(context).nextFocus();
            }
            if (val.isEmpty && first == false) {
              FocusScope.of(context).previousFocus();
            }
          },
          // maxLength: 1,
          textAlign: TextAlign.center,
          showCursor: false,
          readOnly: false,
          autofocus: true,
          decoration: InputDecoration(
            border: InputBorder.none,
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: const BorderSide(
                color: AppColors.lightPrimaryColor,
                width: 3,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
