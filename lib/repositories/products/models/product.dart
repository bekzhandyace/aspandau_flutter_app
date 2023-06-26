// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';

class ProductModul extends Equatable {
  const ProductModul({
    required this.image,
    required this.title,
    required this.price,
  });
  final String image;
  final String title;
  final String price;

  factory ProductModul.fromJson(Map<String, dynamic> json) {
    return ProductModul(
      image: json['avatar'],
      title: json['title'],
      price: json['cost'],
    );
  }

  @override
  List<Object?> get props => [image, title, price];
}
