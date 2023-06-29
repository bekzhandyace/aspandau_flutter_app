




import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/api/dio_client.dart';
import 'product_info.dart';

class ProductList extends StatefulWidget {
  const ProductList({Key? key}) : super(key: key);

  @override
  State<ProductList> createState() => _ProductListState();
}

class _ProductListState extends State<ProductList> {
  final dio = DioClient();
  List<dynamic> productList = [];

  final _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    getProductInfo();
  }

  Future<void> getProductInfo() async {
    productList = await dio.fetchProductData();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400.h,
      child: Container(
        height: 400.h,
        child: Scrollbar(
          controller: _scrollController,
          thumbVisibility: true,
          thickness: 4,
          child: ListView(
            controller: _scrollController,
            clipBehavior: Clip.antiAliasWithSaveLayer,
            scrollDirection: Axis.horizontal,
            primary: false,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      for (var product in productList)
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 12.w),
                          child: ProductInfo(
                            product: product,
                          ),
                        ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
