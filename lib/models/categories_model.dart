// To parse this JSON data, do
//
//     final categoryModel = categoryModelFromMap(jsonString);

import 'dart:convert';

class CategoryModel {
  CategoryModel({
    required this.categoryDetails,
    required this.status,
    required this.message,
  });

  List<CategoryDetail> categoryDetails;
  int status;
  String message;

  factory CategoryModel.fromJson(String str) =>
      CategoryModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory CategoryModel.fromMap(Map<String, dynamic> json) => CategoryModel(
        categoryDetails: List<CategoryDetail>.from(
            json["categoryDetails"].map((x) => CategoryDetail.fromMap(x))),
        status: json["status"],
        message: json["message"],
      );

  Map<String, dynamic> toMap() => {
        "categoryDetails":
            List<dynamic>.from(categoryDetails.map((x) => x.toMap())),
        "status": status,
        "message": message,
      };
}

class CategoryDetail {
  CategoryDetail({
    required this.itemCategoryId,
    required this.categoryName,
    required this.categoryIcon,
    required this.categoryDescription,
  });

  int itemCategoryId;
  String categoryName;
  String categoryIcon;
  String categoryDescription;

  factory CategoryDetail.fromJson(String str) =>
      CategoryDetail.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory CategoryDetail.fromMap(Map<String, dynamic> json) => CategoryDetail(
        itemCategoryId: json["item_category_id"],
        categoryName: json["category_name"],
        categoryIcon: json["category_icon"],
        categoryDescription: json["category_description"],
      );

  Map<String, dynamic> toMap() => {
        "item_category_id": itemCategoryId,
        "category_name": categoryName,
        "category_icon": categoryIcon,
        "category_description": categoryDescription,
      };
}
