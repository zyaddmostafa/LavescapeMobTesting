import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/theme/app_color.dart';
import '../../../../../core/widgets/app_text_form_field.dart';
import '../guest/guest_row.dart';
import '../guest/counter_button.dart';

class GuestTextField extends StatefulWidget {
  final TextEditingController? controller;
  const GuestTextField({super.key, this.controller});

  @override
  State<GuestTextField> createState() => _GuestTextFieldState();
}

class _GuestTextFieldState extends State<GuestTextField> {
  int adults = 2;
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
          Container(
            margin: EdgeInsets.only(top: 8.h),
            padding: EdgeInsets.all(20.w),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12.r),
              border: Border.all(color: AppColor.componentsColor),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.08),
                  blurRadius: 10,
                  offset: const Offset(0, 4),
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Header
                Text(
                  'Add Guest',
                  style: TextStyle(
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 20.h),

                // Adults
                GuestRow(
                  label: 'Adults',
                  subtitle: 'Ages 13 or above',
                  count: adults,
                  onDecrement: () {
                    if (adults > 0) {
                      setState(() {
                        adults--;
                        _updateController();
                      });
                    }
                  },
                  onIncrement: () {
                    setState(() {
                      adults++;
                      _updateController();
                    });
                  },
                  canDecrement: adults > 0,
                ),
                SizedBox(height: 20.h),

                // Children
                GuestRow(
                  label: 'Children',
                  subtitle: 'Ages 3 or below',
                  count: children,
                  onDecrement: () {
                    if (children > 0) {
                      setState(() {
                        children--;
                        _updateController();
                      });
                    }
                  },
                  onIncrement: () {
                    setState(() {
                      children++;
                      _updateController();
                    });
                  },
                  canDecrement: children > 0,
                ),
              ],
            ),
          ),
      ],
    );
  }
}
