import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../core/helpers/app_assets.dart';
import '../../../core/widgets/custom_floating_action_button.dart';
import '../model/experience_model.dart';
import 'widgets/experience_list/experience_card.dart';
import 'widgets/result_app_bar.dart';

class ExploreMapViewScreen extends StatefulWidget {
  const ExploreMapViewScreen({super.key});

  @override
  State<ExploreMapViewScreen> createState() => _ExploreMapViewScreenState();
}

class _ExploreMapViewScreenState extends State<ExploreMapViewScreen> {
  bool _isListView = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const ResultAppBar(),

      body: GestureDetector(
        onTap: () {
          if (_isListView) {
            setState(() {
              _isListView = !_isListView;
            });
          }
        },
        child: Stack(
          children: [
            SizedBox.expand(
              child: Image.asset(AppAssets.imagesMap, fit: BoxFit.cover),
            ),
            if (_isListView)
              Positioned(
                left: 0,
                right: 0,
                bottom: 50,
                child: SizedBox(
                  height: 452.h,
                  child: ExperienceCard(
                    experience: ExperienceModel.experiences[0],
                  ),
                ),
              ),
          ],
        ),
      ),

      floatingActionButton: !_isListView
          ? CustomFloatingActionButton(
              onPressed: () {
                setState(() {
                  _isListView = !_isListView;
                });
              },
              title: 'List View',
              icon: SvgPicture.asset(AppAssets.svgsList),
            )
          : null,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
