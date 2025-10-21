import 'package:flutter/material.dart';

import '../../../../../core/helpers/spacing.dart';
import '../../../../../core/theme/app_color.dart';
import '../../../../../core/theme/app_text_styles.dart';

class AppTextFormField extends StatelessWidget {
  final String label;
  final String hintText;
  final IconData? prefixIcon;
  final IconData? suffixIcon;
  final VoidCallback? onSuffixIconTap;
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final bool obscureText;
  final bool readOnly;
  final VoidCallback? onTap;
  final String? Function(String?)? validator;

  const AppTextFormField({
    super.key,
    required this.label,
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
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: AppTextStyles.font14SemiBoldLabelColor),
        verticalSpace(8),
        // Text Field
        TextFormField(
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
            prefixIcon: prefixIcon != null
                ? Icon(prefixIcon, color: AppColor.secondary, size: 18)
                : null,
            suffixIcon: suffixIcon != null
                ? IconButton(
                    icon: Icon(suffixIcon, color: AppColor.secondary, size: 18),
                    onPressed: onSuffixIconTap,
                  )
                : null,
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
        ),
      ],
    );
  }

  OutlineInputBorder _buildInputBorder(final Color borderColor) {
    return OutlineInputBorder(
      borderRadius: const BorderRadius.all(Radius.circular(12)),
      borderSide: BorderSide(color: borderColor, width: 1),
    );
  }
}
