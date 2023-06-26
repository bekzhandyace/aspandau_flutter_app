import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'deatils.dart';

class ServiceInfo extends StatelessWidget {
  const ServiceInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24, right: 24, top: 60).r,
      child: Column(
        children: [
          const DetailsAppBar(),
          const DetailsSomeInfo(),
          SizedBox(height: 20.h),
          const DetailsButton(),
          SizedBox(height: 28.h),
          const DetailsDescription(),
        ],
      ),
    );
  }
}
