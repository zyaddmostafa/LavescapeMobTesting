import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/theme/app_color.dart';
import '../../../../../core/widgets/app_text_form_field.dart';
import 'guest_row.dart';
import 'counter_button.dart';
import 'guest_picker_panel.dart';

class GuestTextField extends StatefulWidget {
  final TextEditingController? controller;
  const GuestTextField({super.key, this.controller});

  @override
  State<GuestTextField> createState() => _GuestTextFieldState();
}

class _GuestTextFieldState extends State<GuestTextField> {
  int adults = 0;
  int children = 0;
  bool isExpanded = false;

  @override
  void initState() {
    super.initState();
    _updateController();
  }

  void _updateController() {
    int total = adults + children;
    widget.controller?.text = total == 0
        ? ''
        : '$total ${total == 1 ? 'Guest' : 'Guests'}';
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AppTextFormField(
          controller: widget.controller,
          hintText: 'Guest',
          readOnly: true,
          suffixIcon: Padding(
            padding: const EdgeInsets.only(right: 8),
            child: SizedBox(
              width: 56.w,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CounterButton(
                    icon: Icons.remove,
                    onPressed: () {
                      if (adults + children > 0) {
                        setState(() {
                          if (children > 0) {
                            children--;
                          } else if (adults > 0) {
                            adults--;
                          }
                          _updateController();
                        });
                      }
                    },
                  ),
                  CounterButton(
                    icon: Icons.add,
                    onPressed: () {
                      setState(() {
                        adults++;
                        _updateController();
                      });
                    },
                  ),
                ],
              ),
            ),
          ),
          onTap: () {
            setState(() {
              isExpanded = !isExpanded;
            });
          },
        ),

        // Expandable Guest Picker
        if (isExpanded)
          GuestPickerPanel(
            adults: adults,
            children: children,
            onAdultsChanged: (value) {
              setState(() {
                adults = value;
                _updateController();
              });
            },
            onChildrenChanged: (value) {
              setState(() {
                children = value;
                _updateController();
              });
            },
          ),
      ],
    );
  }
}
