class Commerce {
  String commerceId;
  String picture;
  bool isVeg;
  int spicy;
  String name;
  String description;
  double price;
  double discount;
  List<Macros> macros;

  Commerce(
      this.commerceId,
      this.picture,
      this.isVeg,
      this.spicy,
      this.name,
      this.description,
      this.price,
      this.discount,
      this.macros,
  );

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