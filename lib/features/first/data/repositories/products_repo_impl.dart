// import 'package:shop/core/errors/source_exception.dart';
// import 'package:shop/core/utils/source_result.dart';
// import 'package:dio/dio.dart';

// class ProductsRepoImpl {
//   Future<Result<String>> fetch() async {
//     try {
//       final response = Dio().get('');

//       return Result.ok(response.toString());
//     } catch (e, st) {
//       return Result.error(SourceException.catched(e, st));
//     }
//   }
// }
