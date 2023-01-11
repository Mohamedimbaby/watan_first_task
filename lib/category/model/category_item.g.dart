// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CategoriesApiResponse _$CategoriesApiResponseFromJson(
        Map<String, dynamic> json) =>
    CategoriesApiResponse(
      statusCode: json['statusCode'] as int?,
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CategoriesApiResponseToJson(
        CategoriesApiResponse instance) =>
    <String, dynamic>{
      'statusCode': instance.statusCode,
      'message': instance.message,
      'data': instance.data,
    };

Data _$DataFromJson(Map<String, dynamic> json) => Data(
      homeCategoryDto: (json['homeCategoryDto'] as List<dynamic>?)
          ?.map((e) => HomeCategoryDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      'homeCategoryDto': instance.homeCategoryDto,
    };

HomeCategoryDto _$HomeCategoryDtoFromJson(Map<String, dynamic> json) =>
    HomeCategoryDto(
      categoryId: json['categoryId'] as int?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$HomeCategoryDtoToJson(HomeCategoryDto instance) =>
    <String, dynamic>{
      'categoryId': instance.categoryId,
      'name': instance.name,
    };
