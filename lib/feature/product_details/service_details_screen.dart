import 'package:aspandau_flutter_app/feature/product_details/view/widgets/deatils.dart';
import 'package:aspandau_flutter_app/feature/product_details/view/widgets/service_info.dart';

import 'package:flutter/material.dart';


class ProductDetails extends StatelessWidget {
  const ProductDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Scrollbar(
        thumbVisibility: true,
        child: SingleChildScrollView(
          child: Column(
            children: const [
              ServiceInfo(),
              MoreDetailsButton(),
            ],
          ),
        ),
      ),
    );
  }
}
