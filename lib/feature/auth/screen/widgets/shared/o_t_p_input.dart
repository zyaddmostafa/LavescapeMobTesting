import 'package:flutter/material.dart';

import '../../../../../core/helpers/app_snack_bar.dart';
import 'o_t_p_field.dart';

class OTPInput extends StatefulWidget {
  final int length;
  final Function(String)? onCompleted;
  const OTPInput({super.key, this.length = 6, this.onCompleted});

  @override
  OTPInputState createState() => OTPInputState();
}

class OTPInputState extends State<OTPInput> {
  late List<TextEditingController> _controllers;
  late List<FocusNode> _focusNodes;

  @override
  void initState() {
    super.initState();
    _controllers = List.generate(widget.length, (_) => TextEditingController());
    _focusNodes = List.generate(widget.length, (_) => FocusNode());
  }

  bool validateOTP() {
    String otp = _controllers.map((c) => c.text).join();
    if (otp.length < widget.length) {
      AppSnackBar.errorSnackBar(context, 'Please enter the complete OTP code');
      return false;
    }
    return true;
  }

  @override
  void dispose() {
    for (var controller in _controllers) {
      controller.dispose();
    }
    for (var node in _focusNodes) {
      node.dispose();
    }
    super.dispose();
  }

  void _onChanged(String value, int index) {
    if (value.isNotEmpty) {
      if (index < widget.length - 1) {
        _focusNodes[index + 1].requestFocus();
      } else {
        _focusNodes[index].unfocus();
        _checkCompletion();
      }
    }
  }

  void _checkCompletion() {
    String otp = _controllers.map((c) => c.text).join();
    if (otp.length == widget.length && widget.onCompleted != null) {
      widget.onCompleted!(otp);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: List.generate(widget.length, (index) {
        return OTPField(
          controller: _controllers[index],
          focusNode: _focusNodes[index],
          onChanged: (value) => _onChanged(value, index),
        );
      }),
    );
  }
}
