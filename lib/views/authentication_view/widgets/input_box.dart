import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:incom/constants/app_colors.dart';

class InputBox extends StatefulWidget {
  const InputBox({
    Key? key,
    required this.placeholder,
    this.keyboard = TextInputType.text,
    this.password = false,
    this.color = AppColors.inputColor,
  }) : super(key: key);
  final String placeholder;
  final bool password;
  final TextInputType keyboard;
  final Color color;

  @override
  State<InputBox> createState() => _InputBoxState();
}

class _InputBoxState extends State<InputBox> {
  late bool secure = widget.password;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 15),
      padding: const EdgeInsets.symmetric(horizontal: 20),
      width: double.infinity,
      height: 55,
      decoration: BoxDecoration(
        color: widget.color,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Center(
        child: TextField(
          keyboardType: widget.keyboard,
          obscureText: secure,
          cursorColor: Colors.black,
          decoration: InputDecoration(
            suffixIconColor: AppColors.brownShade,
            suffixIcon: widget.password
                ? GestureDetector(
                    onTap: () => setState(
                      () => secure = !secure,
                    ),
                    child: Icon(
                        secure
                            ? Icons.visibility_outlined
                            : Icons.visibility_off_outlined,
                        color: AppColors.brownShade),
                  )
                : const SizedBox(),
            border: InputBorder.none,
            hintText: widget.placeholder,
            hintStyle: GoogleFonts.openSans(
              color: AppColors.brownShade,
            ),
          ),
        ),
      ),
    );
  }
}
