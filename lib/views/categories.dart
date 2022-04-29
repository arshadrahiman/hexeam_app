import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hexmmart/controllers/expansion_controller.dart';
import 'package:hexmmart/models/categories_model.dart';


class Categories_Exp extends StatelessWidget {
  final categoryController = Get.put(CategoryController());
  Categories_Exp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Scaffold(
        body: SingleChildScrollView(

          child: GetX<CategoryController>(
         
            builder: (controller ) {
              return ExpansionPanelList.radio(
                expansionCallback: (index, isExpanded) {
                  expansionCallback:
                  (index, isExpanded) {
                    final tile = controller.categoryModel[index];
                  };
                },
                children: controller.categoryModel
                    .map((tile) =>
                     ExpansionPanelRadio(
                          value: tile.categoryDetails ,
                          
                          canTapOnHeader: true,
                          headerBuilder: (context, isExpanded) => buildTile(tile),
                          body: Column(
                        children: tile.categoryDetails(buildTile),
                        
                          ),
                        ))
                    .toList(),
              );
            }
          ),
        ),
      ),
    );
  }

  Widget buildTile(CategoryModel tile) => ListTile(
        // leading: tile.icon != null ? Icon(tile.icon) : null,
        title: Text(tile.categoryDetails.toString()),
        
      );
}
