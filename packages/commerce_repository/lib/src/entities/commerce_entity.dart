import 'dart:math';

import 'package:commerce_repository/src/entities/macros_entity.dart';

import '../models/macros.dart';

class CommerceEntity{
  String commerceId;
  String picture;
  bool isVeg;
  int spicy;
  String name;
  String description;
  double price;
  double discount;
  Macros macros;

  CommerceEntity({
    required this.commerceId,
    required this.picture,
    required this.isVeg,
    required this.spicy,
    required this.name,
    required this.description,
    required this.price,
    required this.discount,
    required this.macros,
  });

  Map<String, Object?> toDocument() {
    return{
      'commerceId': commerceId,
      'picture': picture,
      'isVeg': isVeg,
      'spicy': spicy,
      'name': name,
      'description': description,
      'price': price,
      'discount': discount,
      'macros': macros.toEntity().toDocument(),
    };
  }

  static CommerceEntity fromDocument(Map<String, dynamic>doc){
    return CommerceEntity(
      commerceId: doc['commerceId'],
      picture: doc['picture'],
      isVeg: doc['isVeg'],
      spicy: doc['spicy'],
      name: doc['name'],
      description:doc['description'] ,
      price: doc['price'] ,
      discount : doc['discount'],
      macros: Macros.fromEntity(MacrosEntity.fromDocument(doc['macros'])),
    );
  }
}