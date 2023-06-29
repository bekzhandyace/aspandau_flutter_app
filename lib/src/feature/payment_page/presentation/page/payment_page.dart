import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../widgets/view.dart';

class PaymentScreen extends StatelessWidget {
  const PaymentScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: GestureDetector(
        onTap: () {
          Navigator.of(context).pop(context);
        },
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Align(
            alignment: Alignment.bottomCenter,
            child: FractionallySizedBox(
              child: Dismissible(
                direction: DismissDirection.down,
                onDismissed: (direction) {
                  Navigator.of(context).pop(context);
                },
                key: UniqueKey(),
                child: Container(
                  width: 400,
                  height: 700,
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 164, 22, 12),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(16),
                      topRight: Radius.circular(16),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 24,
                      vertical: 24,
                    ).r,
                    child: Column(
                      children: [
                        PaymentModal(),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
