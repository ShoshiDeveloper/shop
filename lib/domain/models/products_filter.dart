import 'package:shop/domain/enums/category.dart';

///Класс для фильтрации товаров в выдаче на основе установленных пользователем настроек
///
///На странице фильтра создаётся объект и по ходу изменяются его параметры, после чего передаётся его неизменяемая версия в контроллер выдачи
class EditableProductsFilter {
  EditableProductsFilter({this.name, this.minPrice, this.maxPrice, this.category});

  double? minPrice;
  double? maxPrice;
  ProductCategory? category;
  String? name;
}

//use freezed
class ProductsFilter {
  const ProductsFilter._(EditableProductsFilter filter) : _filter = filter;
  factory ProductsFilter.fromEditableFilter(EditableProductsFilter filter) => ProductsFilter._(filter);

  final EditableProductsFilter _filter;

  ProductCategory? get category => _filter.category;

  double? get maxPrice => _filter.maxPrice;

  double? get minPrice => _filter.minPrice;

  String? get name => _filter.name;
}
