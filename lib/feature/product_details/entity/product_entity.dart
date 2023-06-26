import 'package:json_annotation/json_annotation.dart';

part 'product_entity.g.dart';

@JsonSerializable()
class Products {
  final String kind, uid;
  final int modules;

  const Products({
    required this.kind,
    required this.uid,
    required this.modules,
  });

  factory Products.fromJson(Map<String, dynamic> json) =>
      _$ProductsFromJson(json);
}
