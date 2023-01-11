import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:provider/provider.dart';
import 'package:task/app/app_injector.dart';
import 'package:task/category/category_view.dart';
import 'package:task/category/model/category_item.dart';
import 'package:task/category/provider/category_provider.dart';

void main() {
  AppInjection.setupLocators();
  runApp(const MaterialApp(home:  CategoryScreen()));
}
class CategoryScreen extends StatelessWidget {
  const CategoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      backgroundColor: Colors.white,
      body: ChangeNotifierProvider<CategoryProvider>(
        create:(_)=> GetIt.I<CategoryProvider>(),
        child: const CategoryView(),
      )
    );
  }
}
