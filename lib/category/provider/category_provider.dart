import 'package:flutter/material.dart';
import 'package:task/category/get_category_repo.dart';
import 'package:task/category/model/category_item.dart';
import 'package:task/category/model/category_model.dart';

class CategoryProvider with ChangeNotifier{
  GetCategoryRepo categoryRepo ;

  List<CategoryUiModel> categories = [];

  CategoryProvider(this.categoryRepo);

  getCategory()async{
    try
     {
       CategoriesApiResponse? model = await categoryRepo.getCategory();
       categories = model.data!.homeCategoryDto!.map((e) => CategoryUiModel(e.name ?? "", e.categoryId ?? 0, DropDownMenuState.collapsed)).toList();
     }
      catch(e){
       }
    notifyListeners();
  }
  changeDropDownState(int index)async{
    switch (categories[index].state){
      case DropDownMenuState.collapsed :
        categories[index].state = DropDownMenuState.expanded;
        break;
      case DropDownMenuState.expanded:
        categories[index].state = DropDownMenuState.collapsed;
        break;
    }
    notifyListeners();
  }

}

enum DropDownMenuState {
collapsed , expanded
}