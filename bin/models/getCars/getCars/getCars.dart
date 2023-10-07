import 'package:freezed_annotation/freezed_annotation.dart';

import '../product/product.dart';

part 'getCars.freezed.dart';
part 'getCars.g.dart';

@freezed
class GetCars with _$GetCars {

  factory GetCars({
  @Default([]) List<Product> cars,
    
  }) = _GetCars;

  factory GetCars.fromJson(Map<String, dynamic> json) => _$GetCarsFromJson(json);

}