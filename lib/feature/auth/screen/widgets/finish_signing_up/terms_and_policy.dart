import 'package:flutter/material.dart';

class TermsAndPolicy extends StatelessWidget {
  const TermsAndPolicy({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        style: TextStyle(
          fontSize: 13,
          color: Colors.grey.shade600,
          height: 1.4,
        ),
        children: const [
          TextSpan(
            text: 'By taping Agree and Continue, I accept Lavescape\'s ',
          ),
          TextSpan(
            text: 'Terms, Payment Terms, and Notifications Policy',
            style: TextStyle(
              fontWeight: FontWeight.w600,
              decoration: TextDecoration.underline,
              color: Colors.black87,
            ),
          ),
          TextSpan(text: ', and acknowledge the '),
          TextSpan(
            text: 'Privacy Policy',
            style: TextStyle(
              fontWeight: FontWeight.w600,
              decoration: TextDecoration.underline,
              color: Colors.black87,
            ),
          ),
          TextSpan(text: '.'),
        ],
      ),
    );
  }
}
