// To parse this JSON data, do
//
// final productModels = productModelsFromJson(jsonString);

import 'dart:convert';

class ProductModels {
  ProductModels({
    required this.bannerDetails,
    required this.cartCount,
    required this.wishlistCount,
    required this.notificationCount,
    required this.categoryDetails,
    required this.offerDetails,
    required this.recentAddedProducts,
  });

  List<BannerDetail>? bannerDetails;
  int? cartCount;
  int? wishlistCount;
  int? notificationCount;
  List<CategoryDetail>? categoryDetails;
  List<OfferDetail>? offerDetails;
  List<RecentAddedProduct>? recentAddedProducts;

  factory ProductModels.fromRawJson(String str) =>
      ProductModels.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ProductModels.fromJson(Map<String, dynamic> json) => ProductModels(
        bannerDetails: List<BannerDetail>.from(
            json["bannerDetails"].map((x) => BannerDetail.fromJson(x))),
        cartCount: json["CartCount"],
        wishlistCount: json["WishlistCount"],
        notificationCount: json["NotificationCount"],
        categoryDetails: List<CategoryDetail>.from(
            json["categoryDetails"].map((x) => CategoryDetail.fromJson(x))),
        offerDetails: List<OfferDetail>.from(
            json["offerDetails"].map((x) => OfferDetail.fromJson(x))),
        recentAddedProducts: List<RecentAddedProduct>.from(
            json["recentAddedProducts"]
                .map((x) => RecentAddedProduct.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "bannerDetails":
            List<dynamic>.from(bannerDetails!.map((x) => x.toJson())),
        "CartCount": cartCount,
        "WishlistCount": wishlistCount,
        "NotificationCount": notificationCount,
        "categoryDetails":
            List<dynamic>.from(categoryDetails!.map((x) => x.toJson())),
        "offerDetails":
            List<dynamic>.from(offerDetails!.map((x) => x.toJson())),
        "recentAddedProducts":
            List<dynamic>.from(recentAddedProducts!.map((x) => x.toJson())),
      };
}

class BannerDetail {
  BannerDetail({
    required this.customerBannerId,
    required this.customerBanner,
    required this.isDefault,
    required this.isActive,
  });

  int? customerBannerId;
  String? customerBanner;
  int? isDefault;
  int? isActive;

  factory BannerDetail.fromRawJson(String str) =>
      BannerDetail.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory BannerDetail.fromJson(Map<String, dynamic> json) => BannerDetail(
        customerBannerId: json["customer_banner_id"],
        customerBanner: json["customer_banner"],
        isDefault: json["is_default"],
        isActive: json["is_active"],
      );

  Map<String, dynamic> toJson() => {
        "customer_banner_id": customerBannerId,
        "customer_banner": customerBanner,
        "is_default": isDefault,
        "is_active": isActive,
      };
}

class CategoryDetail {
  CategoryDetail({
    required this.itemCategoryId,
    required this.categoryName,
    required this.categoryIcon,
    required this.categoryDescription,
  });

  int? itemCategoryId;
  String? categoryName;
  String? categoryIcon;
  String? categoryDescription;

  factory CategoryDetail.fromRawJson(String str) =>
      CategoryDetail.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory CategoryDetail.fromJson(Map<String, dynamic> json) => CategoryDetail(
        itemCategoryId: json["item_category_id"],
        categoryName: json["category_name"],
        categoryIcon: json["category_icon"],
        categoryDescription: json["category_description"],
      );

  Map<String, dynamic> toJson() => {
        "item_category_id": itemCategoryId,
        "category_name": categoryName,
        "category_icon": categoryIcon,
        "category_description": categoryDescription,
      };
}

class OfferDetail {
  OfferDetail({
    required this.productVariantId,
    required this.dateStart,
    required this.timeStart,
    required this.dateEnd,
    required this.timeEnd,
    required this.offerPrice,
    required this.variantName,
    required this.productName,
    required this.productVariantBaseImage,
    required this.productVariantData,
  });

  int? productVariantId;
  DateTime? dateStart;
  String? timeStart;
  DateTime? dateEnd;
  String? timeEnd;
  int? offerPrice;
  String? variantName;
  String? productName;
  String? productVariantBaseImage;
  ProductVariantData? productVariantData;

  factory OfferDetail.fromRawJson(String str) =>
      OfferDetail.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory OfferDetail.fromJson(Map<String, dynamic> json) => OfferDetail(
        productVariantId: json["product_variant_id"],
        dateStart: DateTime.parse(json["date_start"]),
        timeStart: json["time_start"],
        dateEnd: DateTime.parse(json["date_end"]),
        timeEnd: json["time_end"],
        offerPrice: json["offer_price"],
        variantName: json["variant_name"],
        productName: json["product_name"],
        productVariantBaseImage: json["productVariantBaseImage"],
        productVariantData:
            ProductVariantData.fromJson(json["product_variant_data"]),
      );

  Map<String, dynamic> toJson() => {
        "product_variant_id": productVariantId,
        "date_start":
            "${dateStart!.year.toString().padLeft(4, '0')}-${dateStart!.month.toString().padLeft(2, '0')}-${dateStart!.day.toString().padLeft(2, '0')}",
        "time_start": timeStart,
        "date_end":
            "${dateEnd!.year.toString().padLeft(4, '0')}-${dateEnd!.month.toString().padLeft(2, '0')}-${dateEnd!.day.toString().padLeft(2, '0')}",
        "time_end": timeEnd,
        "offer_price": offerPrice,
        "variant_name": variantName,
        "product_name": productName,
        "productVariantBaseImage": productVariantBaseImage,
        "product_variant_data": productVariantData!.toJson(),
      };
}

class ProductVariantData {
  ProductVariantData({
    required this.productVariantId,
    required this.productId,
    required this.variantName,
    required this.variantNameSlug,
    required this.variantPriceRegular,
    required this.variantPriceOffer,
    required this.stockCount,
    required this.unitId,
    required this.isActive,
    required this.deletedAt,
    required this.createdAt,
    required this.updatedAt,
    required this.productData,
  });

  int? productVariantId;
  int? productId;
  String? variantName;
  String? variantNameSlug;
  String? variantPriceRegular;
  String? variantPriceOffer;
  int? stockCount;
  dynamic? unitId;
  int? isActive;
  dynamic? deletedAt;
  DateTime? createdAt;
  DateTime? updatedAt;
  ProductData? productData;

  factory ProductVariantData.fromRawJson(String str) =>
      ProductVariantData.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ProductVariantData.fromJson(Map<String, dynamic> json) =>
      ProductVariantData(
        productVariantId: json["product_variant_id"],
        productId: json["product_id"],
        variantName: json["variant_name"],
        variantNameSlug: json["variant_name_slug"],
        variantPriceRegular: json["variant_price_regular"],
        variantPriceOffer: json["variant_price_offer"],
        stockCount: json["stock_count"],
        unitId: json["unit_id"],
        isActive: json["is_active"],
        deletedAt: json["deleted_at"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        productData: ProductData.fromJson(json["product_data"]),
      );

  Map<String, dynamic> toJson() => {
        "product_variant_id": productVariantId,
        "product_id": productId,
        "variant_name": variantName,
        "variant_name_slug": variantNameSlug,
        "variant_price_regular": variantPriceRegular,
        "variant_price_offer": variantPriceOffer,
        "stock_count": stockCount,
        "unit_id": unitId,
        "is_active": isActive,
        "deleted_at": deletedAt,
        "created_at": createdAt!.toIso8601String(),
        "updated_at": updatedAt!.toIso8601String(),
        "product_data": productData!.toJson(),
      };
}

class ProductData {
  ProductData({
    required this.productId,
    required this.productName,
    required this.productNameSlug,
    required this.productCode,
    required this.itemCategoryId,
    required this.itemSubCategoryId,
    required this.iltscId,
    required this.brandId,
    required this.productPriceRegular,
    required this.productPriceOffer,
    required this.productDescription,
    required this.minStock,
    required this.taxId,
    required this.productType,
    required this.serviceType,
    required this.isActive,
    required this.deletedAt,
    required this.createdAt,
    required this.updatedAt,
  });

  int? productId;
  String? productName;
  String? productNameSlug;
  String? productCode;
  int? itemCategoryId;
  int? itemSubCategoryId;
  int? iltscId;
  int? brandId;
  String? productPriceRegular;
  String? productPriceOffer;
  String? productDescription;
  int? minStock;
  int? taxId;
  int? productType;
  int? serviceType;
  int? isActive;
  dynamic? deletedAt;
  DateTime? createdAt;
  DateTime? updatedAt;

  factory ProductData.fromRawJson(String str) =>
      ProductData.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ProductData.fromJson(Map<String, dynamic> json) => ProductData(
        productId: json["product_id"],
        productName: json["product_name"],
        productNameSlug: json["product_name_slug"],
        productCode: json["product_code"],
        itemCategoryId: json["item_category_id"],
        itemSubCategoryId: json["item_sub_category_id"],
        iltscId: json["iltsc_id"],
        brandId: json["brand_id"],
        productPriceRegular: json["product_price_regular"],
        productPriceOffer: json["product_price_offer"],
        productDescription: json["product_description"],
        minStock: json["min_stock"],
        taxId: json["tax_id"],
        productType: json["product_type"],
        serviceType: json["service_type"],
        isActive: json["is_active"],
        deletedAt: json["deleted_at"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
      );

  Map<String, dynamic> toJson() => {
        "product_id": productId,
        "product_name": productName,
        "product_name_slug": productNameSlug,
        "product_code": productCode,
        "item_category_id": itemCategoryId,
        "item_sub_category_id": itemSubCategoryId,
        "iltsc_id": iltscId,
        "brand_id": brandId,
        "product_price_regular": productPriceRegular,
        "product_price_offer": productPriceOffer,
        "product_description": productDescription,
        "min_stock": minStock,
        "tax_id": taxId,
        "product_type": productType,
        "service_type": serviceType,
        "is_active": isActive,
        "deleted_at": deletedAt,
        "created_at": createdAt!.toIso8601String(),
        "updated_at": updatedAt!.toIso8601String(),
      };
}

class RecentAddedProduct {
  RecentAddedProduct({
    required this.productId,
    required this.productName,
    required this.productCode,
    required this.productVariantId,
    required this.variantName,
    required this.variantPriceRegular,
    required this.variantPriceOffer,
    required this.stockCount,
    required this.isOfferAvailable,
    required this.offerData,
    required this.productBaseImage,
    required this.productVariantBaseImage,
    required this.proVarAttributes,
    required this.proVarImages,
    required this.ratingCount,
    required this.rating,
    required this.reviewCount,
  });

  int? productId;
  String? productName;
  String? productCode;
  int? productVariantId;
  String? variantName;
  String? variantPriceRegular;
  String? variantPriceOffer;
  int? stockCount;
  int? isOfferAvailable;
  OfferData? offerData;
  String? productBaseImage;
  String? productVariantBaseImage;
  List<ProVarAttribute>? proVarAttributes;
  List<ProVarImage>? proVarImages;
  int? ratingCount;
  double? rating;
  int? reviewCount;

  factory RecentAddedProduct.fromRawJson(String str) =>
      RecentAddedProduct.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory RecentAddedProduct.fromJson(Map<String, dynamic> json) =>
      RecentAddedProduct(
        productId: json["product_id"],
        productName: json["product_name"],
        productCode: json["product_code"],
        productVariantId: json["product_variant_id"],
        variantName: json["variant_name"],
        variantPriceRegular: json["variant_price_regular"],
        variantPriceOffer: json["variant_price_offer"],
        stockCount: json["stock_count"],
        isOfferAvailable: json["isOfferAvailable"],
        offerData: OfferData.fromJson(json["offerData"]),
        productBaseImage: json["productBaseImage"],
        productVariantBaseImage: json["productVariantBaseImage"],
        proVarAttributes: List<ProVarAttribute>.from(
            json["proVarAttributes"].map((x) => ProVarAttribute.fromJson(x))),
        proVarImages: List<ProVarImage>.from(
            json["proVarImages"].map((x) => ProVarImage.fromJson(x))),
        ratingCount: json["ratingCount"],
        rating: json["rating"].toDouble(),
        reviewCount: json["reviewCount"],
      );

  Map<String, dynamic> toJson() => {
        "product_id": productId,
        "product_name": productName,
        "product_code": productCode,
        "product_variant_id": productVariantId,
        "variant_name": variantName,
        "variant_price_regular": variantPriceRegular,
        "variant_price_offer": variantPriceOffer,
        "stock_count": stockCount,
        "isOfferAvailable": isOfferAvailable,
        "offerData": offerData!.toJson(),
        "productBaseImage": productBaseImage,
        "productVariantBaseImage": productVariantBaseImage,
        "proVarAttributes":
            List<dynamic>.from(proVarAttributes!.map((x) => x.toJson())),
        "proVarImages":
            List<dynamic>.from(proVarImages!.map((x) => x.toJson())),
        "ratingCount": ratingCount,
        "rating": rating,
        "reviewCount": reviewCount,
      };
}

class OfferData {
  OfferData();

  factory OfferData.fromRawJson(String str) =>
      OfferData.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory OfferData.fromJson(Map<String, dynamic> json) => OfferData();

  Map<String, dynamic> toJson() => {};
}

class ProVarAttribute {
  ProVarAttribute({
    required this.variantAttributeId,
    required this.productId,
    required this.productVariantId,
    required this.attributeGroupId,
    required this.attributeValueId,
    required this.deletedAt,
    required this.createdAt,
    required this.updatedAt,
    required this.attributeGroupName,
    required this.attributeValueName,
    required this.attributeGroup,
    required this.attributeValue,
  });

  int? variantAttributeId;
  int? productId;
  int? productVariantId;
  int? attributeGroupId;
  int? attributeValueId;
  dynamic? deletedAt;
  DateTime? createdAt;
  DateTime? updatedAt;
  String? attributeGroupName;
  String? attributeValueName;
  AttributeGroup? attributeGroup;
  AttributeValue? attributeValue;

  factory ProVarAttribute.fromRawJson(String str) =>
      ProVarAttribute.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ProVarAttribute.fromJson(Map<String, dynamic> json) =>
      ProVarAttribute(
        variantAttributeId: json["variant_attribute_id"],
        productId: json["product_id"],
        productVariantId: json["product_variant_id"],
        attributeGroupId: json["attribute_group_id"],
        attributeValueId: json["attribute_value_id"],
        deletedAt: json["deleted_at"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        attributeGroupName: json["attribute_group_name"],
        attributeValueName: json["attribute_value_name"],
        attributeGroup: AttributeGroup.fromJson(json["attribute_group"]),
        attributeValue: AttributeValue.fromJson(json["attribute_value"]),
      );

  Map<String, dynamic> toJson() => {
        "variant_attribute_id": variantAttributeId,
        "product_id": productId,
        "product_variant_id": productVariantId,
        "attribute_group_id": attributeGroupId,
        "attribute_value_id": attributeValueId,
        "deleted_at": deletedAt,
        "created_at": createdAt!.toIso8601String(),
        "updated_at": updatedAt!.toIso8601String(),
        "attribute_group_name": attributeGroupName,
        "attribute_value_name": attributeValueName,
        "attribute_group": attributeGroup!.toJson(),
        "attribute_value": attributeValue!.toJson(),
      };
}

class AttributeGroup {
  AttributeGroup({
    required this.attributeGroupId,
    required this.attributeGroup,
    required this.isActive,
    required this.deletedAt,
    required this.createdAt,
    required this.updatedAt,
  });

  int? attributeGroupId;
  String? attributeGroup;
  int? isActive;
  dynamic? deletedAt;
  DateTime? createdAt;
  DateTime? updatedAt;

  factory AttributeGroup.fromRawJson(String str) =>
      AttributeGroup.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory AttributeGroup.fromJson(Map<String, dynamic> json) => AttributeGroup(
        attributeGroupId: json["attribute_group_id"],
        attributeGroup: json["attribute_group"],
        isActive: json["is_active"],
        deletedAt: json["deleted_at"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
      );

  Map<String, dynamic> toJson() => {
        "attribute_group_id": attributeGroupId,
        "attribute_group": attributeGroup,
        "is_active": isActive,
        "deleted_at": deletedAt,
        "created_at": createdAt!.toIso8601String(),
        "updated_at": updatedAt!.toIso8601String(),
      };
}

class AttributeValue {
  AttributeValue({
    required this.attributeValueId,
    required this.attributeGroupId,
    required this.attributeValue,
    required this.isActive,
    required this.deletedAt,
    required this.createdAt,
    required this.updatedAt,
  });

  int? attributeValueId;
  int? attributeGroupId;
  String? attributeValue;
  int? isActive;
  dynamic? deletedAt;
  DateTime? createdAt;
  DateTime? updatedAt;

  factory AttributeValue.fromRawJson(String str) =>
      AttributeValue.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory AttributeValue.fromJson(Map<String, dynamic> json) => AttributeValue(
        attributeValueId: json["attribute_value_id"],
        attributeGroupId: json["attribute_group_id"],
        attributeValue: json["attribute_value"],
        isActive: json["is_active"],
        deletedAt: json["deleted_at"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
      );

  Map<String, dynamic> toJson() => {
        "attribute_value_id": attributeValueId,
        "attribute_group_id": attributeGroupId,
        "attribute_value": attributeValue,
        "is_active": isActive,
        "deleted_at": deletedAt,
        "created_at": createdAt!.toIso8601String(),
        "updated_at": updatedAt!.toIso8601String(),
      };
}

class ProVarImage {
  ProVarImage({
    required this.itemImageId,
    required this.productId,
    required this.productVariantId,
    required this.itemImageName,
    required this.isDefault,
    required this.isActive,
    required this.deletedAt,
    required this.createdAt,
    required this.updatedAt,
  });

  int? itemImageId;
  int? productId;
  int? productVariantId;
  String? itemImageName;
  int? isDefault;
  int? isActive;
  dynamic? deletedAt;
  DateTime? createdAt;
  DateTime? updatedAt;

  factory ProVarImage.fromRawJson(String str) =>
      ProVarImage.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ProVarImage.fromJson(Map<String, dynamic> json) => ProVarImage(
        itemImageId: json["item_image_id"],
        productId: json["product_id"],
        productVariantId: json["product_variant_id"],
        itemImageName: json["item_image_name"],
        isDefault: json["is_default"],
        isActive: json["is_active"],
        deletedAt: json["deleted_at"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
      );

  Map<String, dynamic> toJson() => {
        "item_image_id": itemImageId,
        "product_id": productId,
        "product_variant_id": productVariantId,
        "item_image_name": itemImageName,
        "is_default": isDefault,
        "is_active": isActive,
        "deleted_at": deletedAt,
        "created_at": createdAt!.toIso8601String(),
        "updated_at": updatedAt!.toIso8601String(),
      };
}
