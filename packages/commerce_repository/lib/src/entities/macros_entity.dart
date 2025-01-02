class MacrosEntity {
  String material;
  String name;
  String size;
  String adjustable;

  MacrosEntity({
    required this.material,
    required this.name,
    required this.size,
    required this.adjustable
  });

  Map<String, Object?> toDocument() {
    return{
      'material': material,
      'name': name,
      'size': size,
      'adjustable': adjustable,
    };
  }

  static MacrosEntity fromDocument(Map<String, dynamic>doc){
    return MacrosEntity(
      material: doc['material'],
      name: doc['name'],
      size: doc['size'],
      adjustable: doc['adjustable'],
    );
  }
}