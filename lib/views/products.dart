import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hexmmart/controllers/product_controller.dart';

class FeatureProd extends StatelessWidget {
  final controller = Get.put(ProductController());
  FeatureProd({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(152, 214, 213, 213),
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.all(20.0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Featured Products',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.black),
              ),
            ),
          ),
          Expanded(
              child: Obx(
            () => Center(
              child: GridView.builder(
                shrinkWrap: true,
                padding: EdgeInsets.symmetric(horizontal: 10),
                itemCount: controller.productModel.length,
                itemBuilder: (ctx, controller) {
                  return Container(
                    decoration: BoxDecoration(
                      color: Color.fromARGB(199, 250, 248, 248),
                      border: Border.all(color: Colors.black, width: .1),
                      borderRadius: BorderRadius.all(Radius.circular(30.0)),
                    ),
                    margin: EdgeInsets.all(5.0),
                    child: Stack(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Expanded(
                              child: Container(
                                decoration: const BoxDecoration(
                                  image: DecorationImage(
                                    image: NetworkImage(
                                        'https://img.traveltriangle.com/blog/wp-content/uploads/2018/12/cover-for-street-food-in-sydney.jpg',),
                                    fit: BoxFit.cover,
                                  ),
                                  borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(30),
                                    topLeft: Radius.circular(30),
                                  ),
                                ),
                              ),
                            ),
                            GetX<ProductController>(
                            
                              builder: (controller) {
                                return const ListTile(
                                  title: Text(
                                  '',
                                    //  Gets! [index].productDetails![index].productName.toString()
                                    style: TextStyle(fontSize: 18),
                                  ),
                                  subtitle: Text(
                                    '\u{20B9}${100}',
                                    style: TextStyle(fontSize: 20),
                                  ),
                                );
                              }
                            )
                          ],
                        ),
                      ],
                    ),
                  );
                },
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 1.0,
                  crossAxisSpacing: 1.0,
                  mainAxisSpacing: 5,
                  mainAxisExtent: 220,
                ),
              ),
            ),
          ))
        ],
      ),
    );
  }
}
