import 'package:flutter/foundation.dart';
import 'package:shop/domain/helpers/source_result.dart';
import 'package:shop/domain/models/product/product.dart';

abstract class ProductsRepository {
  Future<SourceResult<Product>> fetch({Category? category, int? part});
}
