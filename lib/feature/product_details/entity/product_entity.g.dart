// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Products _$ProductsFromJson(Map<String, dynamic> json) => Products(
      kind: json['kind'] as String,
      uid: json['uid'] as String,
      modules: json['modules'] as int,
    );

Map<String, dynamic> _$ProductsToJson(Products instance) => <String, dynamic>{
      'kind': instance.kind,
      'uid': instance.uid,
      'modules': instance.modules,
    };
