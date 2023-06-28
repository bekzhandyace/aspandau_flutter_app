import 'package:json_annotation/json_annotation.dart';

part 'products_entity.g.dart'; // Generated file will have this name

@JsonSerializable()
class ProductData {
  final String? uuid;
  final String? avatar;
  final String? kind;

  ProductData({
    required this.uuid,
    required this.avatar,
    required this.kind,
  });

  factory ProductData.fromJson(Map<String, dynamic> json) {
    return ProductData(
      avatar: json['avatar'],
      kind: json['kind'],
      uuid: json['uuid'],
    );
  }
}
