import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task/category/model/category_model.dart';
import 'package:task/category/provider/category_provider.dart';
import 'package:task/helper/colors/colors.dart';
import 'package:task/helper/dimensions/paddings.dart';
import 'package:task/helper/styles/text_styles.dart';
import 'package:task/widgets/app_bar.dart';
import 'package:task/widgets/drop_down_item.dart';

class CategoryView extends StatefulWidget {
  const CategoryView({Key? key}) : super(key: key);

  @override
  State<CategoryView> createState() => CategoryViewState();
}

class CategoryViewState extends State<CategoryView> {
  List<CategoryUiModel> allCategories = [];

  @override
  void initState() {
    context.read<CategoryProvider>().getCategory();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    allCategories = context.watch<CategoryProvider>().categories;
    List<Widget> widgets = allCategories
        .map((CategoryUiModel e) => buildItemView(e, allCategories.indexOf(e)))
        .toList();
    widgets.insert(
        0,
        Text(
          "Ad Category",
          style: mediumHeadlineStyle.copyWith(color: primaryColor),
        ));
    return Scaffold(
      appBar: AppBarWidget(
        hasBackAction: true,
        headline: 'Sell Now',
      ),
      body: allCategories.isNotEmpty
          ? Padding(
              padding: mediumAll,
              child: ListView(
                children: widgets,
              ),
            )
          : const LoadingWidget(),
    );
  }

  Widget buildItemView(CategoryUiModel category, int index) {
    return Column(
      children: [
        const SizedBox(
          height: 10,
        ),
        DropDownItem(
            id: category.id,
            title: category.name,
            state: category.state,
            onPressed: () {
              context.read<CategoryProvider>().changeDropDownState(index);
              showBottomSheet(
                  context: context,
                  builder: (c) {
                    return Container(
                      height: MediaQuery.of(context).size.height * .6,
                      decoration:  BoxDecoration(
                          color: Colors.white,
                          boxShadow: [BoxShadow(
                            color: shadowColor,
                            offset:const Offset(5,0),
                            blurRadius: 3,
                            spreadRadius: 5
                          )],
                          borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(32),
                              topRight: Radius.circular(32))),
                      child: Padding(
                        padding: mediumAll,
                        child: Column(
                          children: [
                            Row(mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Select Category", style: bigHeadlineStyle.copyWith(color: primaryColor),),
                            ],
                            ),
                            const SizedBox(height: 20,),
                            ListView.separated(
                              shrinkWrap: true, itemCount: 4,
                              separatorBuilder: (BuildContext context, int index) { return  Divider(color: dividerColor,thickness: 2,); },
                              itemBuilder: (BuildContext context, int index) {
                                return Padding(
                                  padding: mediumAll,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      const Text("Category 1"),
                                      Icon(Icons.check, color: primaryColor,)
                                    ],
                                  ),
                                );
                                },

                            )
                          ],
                        ),
                      ),
                    );
                  });
            }),
        const SizedBox(
          height: 10,
        ),
      ],
    );
  }
}

class LoadingWidget extends StatelessWidget {
  const LoadingWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const CircularProgressIndicator(
      color: Colors.green,
    );
  }
}
