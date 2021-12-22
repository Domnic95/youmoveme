import 'package:flutter/material.dart';
import 'package:you_move_me/UI/theme/apptheme.dart';

class CommonTextField extends StatelessWidget {
  final int? maxlines;
  final TextStyle? style;
  final String? hint;
  final bool isFill;
  final Color? filledColor;
  final TextStyle? hinstyle;
  const CommonTextField(
      {this.maxlines,
      this.hinstyle,
      this.hint,
      this.filledColor,
      this.isFill = false,
      this.style,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLines: maxlines,
      style: style ??
          TextStyle(
            fontSize: 16,
          ),
      decoration: InputDecoration(
          hintText: hint,
          filled: isFill,
          fillColor: filledColor,
          hintStyle: hinstyle ?? TextStyle(color: Colors.grey),
          contentPadding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
          isCollapsed: true,
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
              borderSide: BorderSide(width: .5, color: primarySwatch[700]!)),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
              borderSide: BorderSide(width: .5, color: primarySwatch[700]!)),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
              borderSide: BorderSide(width: 1, color: primaryColor))),
    );
  }
}
