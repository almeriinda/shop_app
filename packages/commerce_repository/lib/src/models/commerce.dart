import '../entities/commerce_entity.dart';
import 'macros.dart';

class Commerce {
  String commerceId;
  String picture;
  bool isVeg;
  int spicy;
  String name;
  String description;
  double price;
  double discount;
  Macros macros;

  Commerce({
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

  CommerceEntity toEntity() {
    return CommerceEntity(
        commerceId: commerceId,
        picture: picture,
        isVeg: isVeg,
        spicy: spicy,
        name: name,
        description: description,
        price: price,
        discount: discount,
        macros: macros,
    );
  }

  static Commerce fromEntity(CommerceEntity entity){
    return Commerce(
      commerceId: entity.commerceId,
      picture: entity.picture,
      isVeg: entity.isVeg,
      spicy: entity.spicy,
      name: entity.name,
      description: entity.description,
      price: entity.price,
      discount: entity.discount,
      macros: entity.macros,
    );
  }
}