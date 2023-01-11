import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:task/category/model/category_item.dart';
part 'category_client.g.dart';

@RestApi()
abstract class CategoryClient {
  @GET('Category/GetMainCatWithAds')
  Future<CategoriesApiResponse> getCategoryApi();
  factory CategoryClient(Dio dio, {String baseUrl}) = _CategoryClient;
  }
