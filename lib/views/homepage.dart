import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hexmmart/controllers/product_controller.dart';
import 'package:hexmmart/models/product_models.dart';
import 'package:hexmmart/page_routing/page_routes.dart';

class Home_Page extends StatelessWidget {
  // final productController=Get.put(ProductController());
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromARGB(230, 230, 230, 255),
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              floating: false,
              pinned: true,
              snap: false,
              leading: GestureDetector(
                onTap: () {},
                child: const Icon(
                  Icons.menu,
                ),
              ),
              centerTitle: false,
              title: Image.asset(
                'assets/hexmart_logo_white.png',
                fit: BoxFit.contain,
                height: 55,
                width: 110,
              ),
              actions: [
                Row(
                  children: [
                    Badge(
                      position: BadgePosition.center(),
                      animationDuration: const Duration(milliseconds: 300),
                      animationType: BadgeAnimationType.slide,
                      badgeContent: const Text(
                        '0',
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                      child: IconButton(
                          icon: const Icon(Icons.notifications_none),
                          padding: const EdgeInsets.only(right: 20.0),
                          onPressed: () {}),
                    ),
                    Badge(
                      position: BadgePosition.center(),
                      animationDuration: const Duration(milliseconds: 300),
                      animationType: BadgeAnimationType.slide,
                      badgeContent: const Text(
                        '1',
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                      child: IconButton(
                          icon: const Icon(Icons.shopping_cart_outlined),
                          padding: const EdgeInsets.only(right: 20.0),
                          onPressed: () {
                            Get.toNamed("/cart");
                          }),
                    ),
                    Badge(
                      position: BadgePosition.center(),
                      animationDuration: const Duration(milliseconds: 300),
                      animationType: BadgeAnimationType.slide,
                      badgeContent: const Text(
                        '1',
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                      child: IconButton(
                          icon: const Icon(Icons.favorite),
                          padding: const EdgeInsets.only(right: 20.0),
                          onPressed: () {}),
                    ),
                  ],
                ),
              ],
              bottom: AppBar(
                toolbarHeight: 80,
                title: Column(
                  children: const [
                    TextField(
                      decoration: InputDecoration(
                        hintText: 'Search ',
                        hintStyle: TextStyle(color: Colors.white, fontSize: 20),
                        prefixIcon: Icon(
                          Icons.search,
                          color: Colors.white,
                          size: 25,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SliverList(
              delegate: SliverChildListDelegate([
                Column(
                  children: [
                    Center(
                      child: Container(
                        child: Image.asset(
                          'assets/banner.jpg',
                          fit: BoxFit.fill,
                          height: 150,
                          width: 400,
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(boxShadow: [
                        BoxShadow(
                          color: Color.fromARGB(255, 255, 255, 255),
                        ),
                      ]),
                      margin: const EdgeInsets.only(top: 10.0),
                      height: 160,
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 20, left: 20),
                            child: Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                'SHOP BY CATEGORY',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: 300,
                              ),
                              IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.add_circle_outline,
                                    size: 40,
                                    color: Colors.lightBlue,
                                  ))
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              TextButton(
                                onPressed: () {},
                                child: Text(
                                  'Electronics',
                                  style: TextStyle(
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                              TextButton(
                                onPressed: () {},
                                child: Text(
                                  'Fashion',
                                  style: TextStyle(
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                              TextButton(
                                onPressed: () {},
                                child: Text(
                                  'home-decor',
                                  style: TextStyle(
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                              TextButton(
                                onPressed: () {},
                                child: Text(
                                  'View All',
                                  style: TextStyle(
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 10.0),
                      height: 170,
                      decoration: BoxDecoration(boxShadow: [
                        BoxShadow(
                          color: Color.fromARGB(255, 255, 255, 255),
                        ),
                      ]),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            children: [
                              SizedBox(
                                height: 40,
                              ),
                              Text('  OFFER ',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18)),
                              Text('SALE',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18)),
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 35, left: 15),
                                    child: Container(
                                      height: 30,
                                      width: 30,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(4.0),
                                          border:
                                              Border.all(color: Colors.black)),
                                      child: IconButton(
                                          onPressed: () {},
                                          icon: Icon(
                                            Icons.arrow_back_ios,
                                            size: 15,
                                          )),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 35, left: 15),
                                    child: Container(
                                      height: 30,
                                      width: 30,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(4.0),
                                          border:
                                              Border.all(color: Colors.black)),
                                      child: IconButton(
                                          onPressed: () {},
                                          icon: Icon(
                                            Icons.arrow_forward_ios,
                                            size: 15,
                                          )),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                          Column(
                            children: [
                              SizedBox(
                                height: 70,
                              ),
                              AnimatedPhysicalModel(
                                child: GestureDetector(
                                  onTap: () => 1,
                                  child: SizedBox.fromSize(
                                    size: const Size.square(80.0),
                                  ),
                                ),
                                shape: BoxShape.rectangle,
                                elevation: 5,
                                borderRadius: BorderRadius.circular(12.0),
                                color: Color.fromARGB(255, 255, 255, 255),
                                shadowColor: Color.fromARGB(255, 255, 255, 255),
                                duration: Duration(milliseconds: 500),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              SizedBox(
                                height: 70,
                              ),
                              Text(
                                'From \u{20B9} 6565.00',
                                style: TextStyle(color: Colors.red),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 70),
                                child: Text('cam'),
                              ),
                              ElevatedButton(
                                child: Text(
                                  'Shop Now',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 10,
                                      fontWeight: FontWeight.bold),
                                ),
                                onPressed: () {
                                  Get.toNamed('/cart/cam');
                                },
                                style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                    borderRadius:
                                        new BorderRadius.circular(8.0),
                                  ),
                                  primary: Colors.yellow,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 20, left: 20, bottom: 20),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          'RECENT PRODUCTS',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ],
                ),
              ]),
            ),
            SliverGrid(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
              ),
              delegate: SliverChildBuilderDelegate(
                (controller, index) {
                  return Container(
                    // height: 300,
                    // width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.black, width: 0.1),
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    ),
                    margin: EdgeInsets.all(5.0),
                    child: Stack(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 5.0),
                              child: Center(
                                  child: SizedBox(
                                child: Image.asset(
                                  'assets/banner.jpg',
                                  fit: BoxFit.fill,
                                ),
                                height: 90,
                                width: 150,
                              )),
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width,
                              padding: EdgeInsets.only(bottom: 10),
                              child: Column(
                                children: [
                                  Padding(
                                      padding: const EdgeInsets.all(1.0),
                                      child: Text(
                                        'Product Name',
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold),
                                      )),
                                  Padding(
                                    padding: const EdgeInsets.all(1.0),
                                    child: Text(
                                      '4 Rating & 3 Revives',
                                      style: TextStyle(fontSize: 15),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10.0),
                                    child: Align(
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        '\u{20B9}${100.00}',
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    //
                  );
                },
                childCount: 100,
              ),
            )
          ],
        ),
      ),
    );
  }
}
