import 'package:aspandau_flutter_app/feature/product_details/view/widgets/deatils.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
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
            ),
            const MoreDetailsButton(),
            Container(
              height: 50.h,
            ),
          ],
        ),
      ),
    );
  }
}
