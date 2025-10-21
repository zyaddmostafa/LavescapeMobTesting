import 'package:flutter/material.dart';

import '../../../core/helpers/extention.dart';
import '../../../core/helpers/spacing.dart';
import '../../../core/routing/routes.dart';
import '../../../core/widgets/custom_app_button.dart';
import 'widgets/shared/custom_app_bar.dart';
import 'widgets/finish_signing_up/finish_signing_up_form_fields.dart';
import 'widgets/finish_signing_up/terms_and_policy.dart';

class FinishSigningUpScreen extends StatefulWidget {
  const FinishSigningUpScreen({super.key});

  @override
  State<FinishSigningUpScreen> createState() => _FinishSigningUpScreenState();
}

class _FinishSigningUpScreenState extends State<FinishSigningUpScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _legalNameController = TextEditingController();
  final TextEditingController _dateOfBirthController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  void dispose() {
    _legalNameController.dispose();
    _dateOfBirthController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const CustomAppBar(title: 'Finish Signing Up'),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              verticalSpace(30),
              FinishSigningUpFormFields(
                formKey: _formKey,
                legalNameController: _legalNameController,
                dateOfBirthController: _dateOfBirthController,
                emailController: _emailController,
                passwordController: _passwordController,
              ),
              verticalSpace(40),

              CustomAppButton(
                label: 'Agree and Continue',
                onPressed: () {
                  _validateThenGoToProfileCreated(context);
                },
              ),
              verticalSpace(16),

              const TermsAndPolicy(),

              verticalSpace(30),
            ],
          ),
        ),
      ),
    );
  }

  void _validateThenGoToProfileCreated(BuildContext context) {
    if (_formKey.currentState!.validate()) {
      context.pushNamed(Routes.guestProfileCreatedScreen);
    }
  }
}
