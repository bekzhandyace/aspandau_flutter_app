// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'products_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductData _$ProductDataFromJson(Map<String, dynamic> json) => ProductData(
      uuid: json['uuid'] as String?,
      avatar: json['avatar'] as String?,
      kind: json['kind'] as String?,
    );

Map<String, dynamic> _$ProductDataToJson(ProductData instance) =>
    <String, dynamic>{
      'uuid': instance.uuid,
      'avatar': instance.avatar,
      'kind': instance.kind,
    };
