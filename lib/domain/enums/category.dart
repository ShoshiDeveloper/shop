enum ProductCategory {
  clothes(name: 'Одежда'),
  shoes(name: 'Обувь', parent: ProductCategory.clothes),
  electric(name: 'Электроника'),
  phone(name: 'Телефоны', parent: ProductCategory.electric);

  const ProductCategory({required this.name, this.parent});
  final ProductCategory? parent;
  final String name;
}
