import 'package:aspandau_flutter_app/theme/theme.dart';
import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

class HorizontalList extends StatelessWidget {
  const HorizontalList({super.key});

  @override
  Widget build(BuildContext context) {
    const heightButton = 32;

    return SizedBox(
      height: 48.h,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              allButton(),
              SizedBox(width: 15.w),
              masterOfOrganizationAdministrationButton(heightButton),
              SizedBox(width: 15.w),
              masterOfBusinessButton(heightButton),
              SizedBox(width: 15.w),
              masterOfGovernmentAdministrationButton(heightButton),
              SizedBox(height: 57),
              
            ],
          ),
        ],
      ),
    );
  }

  SizedBox masterOfGovernmentAdministrationButton(int heightButton) {
    return SizedBox(
      height: heightButton.h,
      child: ElevatedButton(
        onPressed: () {},
        style: AppButtonStyle.horizontListButtonStyle,
        child: const Padding(
          padding: AppPaddings.horizontListPaddings,
          child: Text(
            'Master of Government Administration',
            style: TextStyle(color: Colors.black),
          ),
        ),
      ),
    );
  }

  SizedBox masterOfBusinessButton(int heightButton) {
    return SizedBox(
      height: heightButton.h,
      child: ElevatedButton(
        onPressed: () {},
        style: AppButtonStyle.horizontListButtonStyle,
        child: const Padding(
          padding: AppPaddings.horizontListPaddings,
          child: Text(
            'Master of Business',
            style: TextStyle(color: Colors.black),
          ),
        ),
      ),
    );
  }

  SizedBox masterOfOrganizationAdministrationButton(int heightButton) {
    return SizedBox(
      height: heightButton.h,
      child: ElevatedButton(
        onPressed: () {},
        style: AppButtonStyle.horizontListButtonStyle,
        child: const Padding(
          padding: AppPaddings.horizontListPaddings,
          child: Text(
            'Master of Organization Administration',
            style: TextStyle(color: Colors.black),
          ),
        ),
      ),
    );
  }

  SizedBox allButton() {
    return SizedBox(
      height: 32,
      width: 60,
      child: Container(
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            colors: [
              Color.fromRGBO(0, 227, 148, 1),
              Color.fromRGBO(10, 194, 183, 1),
            ],
          ),
          borderRadius: BorderRadius.circular(110),
        ),
        child: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.transparent,
            shadowColor: Colors.white.withOpacity(0),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(110).w,
              side: const BorderSide(
                color: Colors.transparent,
              ),
            ),
          ),
          child: Text(
            'Все',
            maxLines: 1,
            style: TextStyle(
              color: Colors.white,
              fontSize: 14.sp,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }
}
