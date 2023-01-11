import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:task/category/api_service/category_client.dart';
import 'package:task/category/get_category_repo.dart';
import 'package:task/category/provider/category_provider.dart';

class AppInjection {
  static GetIt locator = GetIt.instance;
  AppInjection();

  static void setupLocators() {
    locator.registerSingleton<CategoryProvider>(CategoryProvider(GetCategoryRepoImpl(CategoryClient(Dio(),baseUrl: "https://mobileapi.tshtri.com/api/"))));
  }
}