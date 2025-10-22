import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/helpers/app_assets.dart';
import '../../../../../core/helpers/spacing.dart';
import '../../../../../core/theme/app_color.dart';
import '../shared/app_text_form_field_and_label.dart';
import '../shared/email_text_field.dart';
import '../shared/password_text_field.dart';

class FinishSigningUpFormFields extends StatefulWidget {
  final GlobalKey<FormState> formKey;
  final TextEditingController? legalNameController;
  final TextEditingController? dateOfBirthController;
  final TextEditingController? emailController;
  final TextEditingController? passwordController;

  const FinishSigningUpFormFields({
    super.key,
    required this.formKey,
    this.legalNameController,
    this.dateOfBirthController,
    this.emailController,
    this.passwordController,
  });

  @override
  State<FinishSigningUpFormFields> createState() =>
      _FinishSigningUpFormFieldsState();
}

class _FinishSigningUpFormFieldsState extends State<FinishSigningUpFormFields> {
  @override
  Widget build(BuildContext context) {
    return Form(
      key: widget.formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppTextFormFieldAndLabel(
            controller: widget.legalNameController,
            label: 'Legal Name',
            hintText: 'Full Name',
            prefixIcon: const Icon(
              Icons.person,
              color: AppColor.secondary,
              size: 16,
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter your legal name';
              }

              return null;
            },
          ),
          verticalSpace(20),
          AppTextFormFieldAndLabel(
            controller: widget.dateOfBirthController,
            label: 'Date of birth',
            hintText: 'MM/DD/YYYY',
            suffixIcon: Padding(
              padding: const EdgeInsets.all(14),
              child: SvgPicture.asset(AppAssets.svgsCalendarDays),
            ),
            readOnly: true,
            onTap: () async {
              await _datePicker(context);
            },
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter your date of birth';
              }

              return null;
            },
          ),
          verticalSpace(20),
          EmailTextField(controller: widget.emailController),
          verticalSpace(20),
          PasswordTextField(controller: widget.passwordController),
        ],
      ),
    );
  }

  Future<void> _datePicker(BuildContext context) async {
    final date = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime.now(),
    );
    if (date != null) {
      // Format the date as MM/DD/YYYY
      final formattedDate =
          '${date.month.toString().padLeft(2, '0')}/${date.day.toString().padLeft(2, '0')}/${date.year}';
      widget.dateOfBirthController?.text = formattedDate;
    }
  }
}
