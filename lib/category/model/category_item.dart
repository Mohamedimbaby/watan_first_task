import 'package:json_annotation/json_annotation.dart';
part 'category_item.g.dart';

@JsonSerializable()
class CategoriesApiResponse {
  @JsonKey(name: 'statusCode')
  int? statusCode;
  @JsonKey(name: 'message')
  String? message;
  @JsonKey(name: 'data')
  Data? data;

  CategoriesApiResponse({this.statusCode, this.message, this.data});
  factory CategoriesApiResponse.fromJson(Map<String, dynamic> json) => _$CategoriesApiResponseFromJson(json);
  Map<String, dynamic> toJson() => _$CategoriesApiResponseToJson(this);

}

@JsonSerializable()
class Data {
  @JsonKey(name: 'homeCategoryDto')
  List<HomeCategoryDto>? homeCategoryDto;

  Data({this.homeCategoryDto});
  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
  Map<String, dynamic> toJson() => _$DataToJson(this);

}

@JsonSerializable()
class HomeCategoryDto {
  @JsonKey(name: 'categoryId')
  int? categoryId;
  @JsonKey(name: 'name')
  String? name;


  HomeCategoryDto(
      {this.categoryId,
        this.name,
        });
  factory HomeCategoryDto.fromJson(Map<String, dynamic> json) => _$HomeCategoryDtoFromJson(json);
  Map<String, dynamic> toJson() => _$HomeCategoryDtoToJson(this);

}


