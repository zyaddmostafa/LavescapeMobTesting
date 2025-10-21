import 'package:flutter/material.dart';

import '../../../core/helpers/spacing.dart';
import '../../../core/theme/app_text_styles.dart';
import '../../../core/widgets/custom_app_button.dart';
import 'widgets/shared/lavescape_logo.dart';
import 'widgets/login_screen/login_form_fields.dart';
import 'widgets/login_screen/new_here_or_signup.dart';
import 'widgets/login_screen/welcome_back_message.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailOrPhoneController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              verticalSpace(30),
              const LavescapeLogo(),
              verticalSpace(40),
              const WelcomeBackMessage(),

              verticalSpace(20),
              LoginFormFields(
                emailOrPhoneController: _emailOrPhoneController,
                passwordController: _passwordController,
                formKey: _formKey,
              ),
              verticalSpace(26),
              GestureDetector(
                onTap: () {
                  // Handle forgot password tap
                },
                child: const Text(
                  'Forgot Password?',
                  style: AppTextStyles.font14SemiBoldPurple,
                ),
              ),

              verticalSpace(30),

              CustomAppButton(
                label: 'Log In',
                onPressed: () {
                  _validateThenDoLogin();
                },
              ),
              const Spacer(),

              const NewHereOrSignup(),

              verticalSpace(18),
            ],
          ),
        ),
      ),
    );
  }

  void _validateThenDoLogin() {
    if (_formKey.currentState!.validate()) {
      // Handle successful validation
      print('Form is valid');
    } else {
      // Handle validation failure
      print('Form is invalid');
    }
  }

  @override
  void dispose() {
    _emailOrPhoneController.dispose();
    _passwordController.dispose();

    super.dispose();
  }
}
