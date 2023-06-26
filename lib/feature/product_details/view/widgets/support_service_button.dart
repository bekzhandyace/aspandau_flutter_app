import 'package:aspandau_flutter_app/feature/payment_screen/view/widgets/view.dart';
import 'package:aspandau_flutter_app/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CuratorSupportServiceButton extends StatelessWidget {
  const CuratorSupportServiceButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48.h,
      width: 400.w,
      child: Container(
        decoration: BoxDecoration(
          gradient: AppColors.gradientGreen,
          borderRadius: BorderRadius.circular(12).w,
          border: Border.all(color: AppColors.greenButton),
        ),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.transparent,
            shadowColor: Colors.white.withOpacity(0),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12).w,
              side: const BorderSide(
                color: AppColors.transparent,
              ),
            ),
          ),
          onPressed: () {
            showModalBottomSheet(
              context: context,
              enableDrag: true,
              backgroundColor: Colors.white,
              barrierColor: AppColors.showModalColor,
              isScrollControlled: true,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(16),
                  topRight: Radius.circular(16),
                ),
              ),
              builder: (BuildContext context) {
                return SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 24,
                      vertical: 24,
                    ),
                    child: SafeArea(
                      child: Container(
                        padding: EdgeInsets.only(
                          bottom: MediaQuery.of(context).viewInsets.bottom,
                        ),
                        child: Container(
                          height: MediaQuery.of(context).size.height * 0.54,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: const [
                              PaymentModal(),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                );
              },
            );
          },
          child: Text(
            'Купить за  135 000 ₸',
            style: TextStyle(
              fontSize: 17.sp,
              fontWeight: FontWeight.w600,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
