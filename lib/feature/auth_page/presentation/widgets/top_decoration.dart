import 'package:aspandau_flutter_app/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class TopDecorations extends StatelessWidget {
  const TopDecorations({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(height: 70.h, color: Colors.black),
        const GreyContainerDecoration(),
        const WhiteContainerDecoration(),
      ],
    );
  }
}

class GreyContainerDecoration extends StatelessWidget {
  const GreyContainerDecoration({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 24,
        vertical: 50,
      ),
      child: Container(
        height: 10,
        width: 343,
        decoration: AppColors.greyBorderDecoration,
      ),
    );
  }
}

class WhiteContainerDecoration extends StatelessWidget {
  const WhiteContainerDecoration({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 60),
      child: Container(
        height: 14,
        decoration: AppColors.whiteBorderDecoration,
      ),
    );
  }
}
