import 'package:task/category/api_service/category_client.dart';
import 'package:task/category/model/category_item.dart';

abstract class GetCategoryRepo {
  Future<CategoriesApiResponse> getCategory ();
}
 class GetCategoryRepoImpl extends  GetCategoryRepo{
  CategoryClient categoryClient ;

  GetCategoryRepoImpl(this.categoryClient);

  @override
  Future<CategoriesApiResponse> getCategory() async {
   return  await categoryClient.getCategoryApi();
  }

 }