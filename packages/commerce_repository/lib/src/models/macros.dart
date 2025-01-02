import '../entities/macros_entity.dart';

class Macros{
  String material;
  String name;
  String size;
  String adjustable;

  Macros({
    required this.material,
    required this.name,
    required this.size,
    required this.adjustable
  });

  MacrosEntity toEntity() {
    return MacrosEntity(
        material:material,
        name: name,
        size: size,
        adjustable: adjustable,
    );
  }

  static Macros fromEntity(MacrosEntity entity){
    return Macros(
      material: entity.material,
      name: entity.name,
      size: entity.size,
      adjustable: entity.adjustable,
    );
  }
}