import 'package:flutter/material.dart';
import '../theme/app_color.dart';
import '../theme/app_text_styles.dart';

class AppTextFormField extends StatelessWidget {
  final String hintText;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final VoidCallback? onSuffixIconTap;
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final bool obscureText;
  final bool readOnly;
  final VoidCallback? onTap;
  final String? Function(String?)? validator;

  const AppTextFormField({
    super.key,
    required this.hintText,
    this.prefixIcon,
    this.suffixIcon,
    this.onSuffixIconTap,
    this.controller,
    this.keyboardType,
    this.obscureText = false,
    this.readOnly = false,
    this.onTap,
    this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: keyboardType,
      obscureText: obscureText,
      readOnly: readOnly,
      onTap: onTap,
      validator: validator,
      style: AppTextStyles.font15MediumLabelColor,
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,
        hintText: hintText,
        hintStyle: AppTextStyles.font15MediumGrey,
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
        border: _buildInputBorder(AppColor.componentsColor),
        enabledBorder: _buildInputBorder(AppColor.componentsColor),
        focusedBorder: _buildInputBorder(AppColor.primary),
        errorBorder: _buildInputBorder(Colors.red),
        focusedErrorBorder: _buildInputBorder(Colors.red),
        errorStyle: const TextStyle(fontSize: 12, color: Colors.red),
        errorMaxLines: 2,
        contentPadding: const EdgeInsets.symmetric(
          vertical: 10,
          horizontal: 12,
        ),
      ),
    );
  }

  OutlineInputBorder _buildInputBorder(final Color borderColor) {
    return OutlineInputBorder(
      borderRadius: const BorderRadius.all(Radius.circular(12)),
      borderSide: BorderSide(color: borderColor, width: 1),
    );
  }
}
