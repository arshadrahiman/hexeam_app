import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hexmmart/controllers/expansion_controller.dart';
import 'package:hexmmart/models/demo_list.dart';
import 'package:hexmmart/models/demo_model.dart';


class Categories_Exp extends StatelessWidget {
  final categoryController = Get.put(CategoryController());
  Categories_Exp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Scaffold(
        body:SingleChildScrollView(
          child: ExpansionPanelList.radio(
            expansionCallback: (index, isExpanded) {
              final tile = advancedTiless[index];

            },
            children: advancedTiless
                .map((tile) => ExpansionPanelRadio(
                      value: tile.title??'title',
                      canTapOnHeader: true,
                      headerBuilder: (context, isExpanded) => buildTile(tile),
                      body: Column(
                        children: tile.tiles.map(buildTile).toList(),
                      ),
                    ))
                .toList(),
          ),
        ),
      ),
      );
  }
    Widget buildTile(AdvancedTile tile) => ListTile(
        leading: tile.icon != null ? Icon(tile.icon) : null,
        title: Text(tile.title??'title'),
      );
}