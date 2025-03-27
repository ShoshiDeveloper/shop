// import 'package:shop/core/errors/source_exception.dart';
// import 'package:shop/core/network/api_source.dart';
// import 'package:shop/core/utils/source_result.dart';
// import 'package:dio/dio.dart';

// class ProductsRepoImpl {
//   Future<Result<String>> fetch() async {
//     final result = await ApiSource.instance.get('user');

//     return result.when(
//       ok: (d) {
//         //some parse and return
//         return Result.ok(d!.data as String);
//       },
//       err: Result.error,
//     );
//   }
// }
