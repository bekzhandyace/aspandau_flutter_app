
import 'package:flutter/material.dart';

import '../widgets/more_details_button.dart';
import '../widgets/service_info.dart';


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
