import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hexmmart/controllers/navbar_controller.dart';
import 'package:hexmmart/views/categories.dart';
import 'package:hexmmart/views/homepage.dart';
import 'package:hexmmart/views/my_orders.dart';
import 'package:hexmmart/views/profile.dart';

class LandingPage extends StatelessWidget {
  final TextStyle unselectedLabelStyle = TextStyle(
      color: Colors.white.withOpacity(0.5),
      fontWeight: FontWeight.w500,
      fontSize: 12);

  final TextStyle selectedLabelStyle =
      TextStyle(color: Colors.white, fontWeight: FontWeight.w500, fontSize: 12);

  buildBottomNavigationMenu(context, landingPageController) {
    return Obx(() => MediaQuery(
        data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
        child: SizedBox(
          height: 54,
          child: BottomNavigationBar(
            showUnselectedLabels: true,
            showSelectedLabels: true,
            onTap: landingPageController.changeTabIndex,
            currentIndex: landingPageController.tabIndex.value,
            backgroundColor: Colors.blue,
            unselectedItemColor: Colors.white.withOpacity(0.5),
            selectedItemColor: Colors.white,
            unselectedLabelStyle: unselectedLabelStyle,
            selectedLabelStyle: selectedLabelStyle,
            items: [
              BottomNavigationBarItem(
                  icon: Container(
                    margin: EdgeInsets.only(bottom: 7),
                    child: Icon(
                      Icons.home,
                      size: 20.0,
                      color: Colors.white,
                    ),
                  ),
                  label: 'Home',
                  backgroundColor: Colors.blue),
              BottomNavigationBarItem(
                  icon: Container(
                    margin: EdgeInsets.only(bottom: 7),
                    child: Icon(
                      Icons.category,
                      size: 20.0,
                      color: Colors.white,
                    ),
                  ),
                  label: 'Categories',
                  backgroundColor: Colors.blue),
              BottomNavigationBarItem(
                  icon: Container(
                    margin: EdgeInsets.only(bottom: 7),
                    child: Icon(
                      Icons.punch_clock_sharp,
                      color: Colors.white,
                      size: 20.0,
                    ),
                  ),
                  label: 'My Orders',
                  backgroundColor: Colors.blue),
              BottomNavigationBarItem(
                  icon: Container(
                    margin: EdgeInsets.only(bottom: 7),
                    child: Icon(
                      Icons.person,
                      size: 20.0,
                      color: Colors.white,
                    ),
                  ),
                  label: 'Profile',
                  backgroundColor: Colors.blue),
            ],
          ),
        )));
  }

  @override
  Widget build(BuildContext context) {
    final LandingPageController landingPageController =
        Get.put(LandingPageController(), permanent: false);
    return SafeArea(
        child: Scaffold(
      bottomNavigationBar:
          buildBottomNavigationMenu(context, landingPageController),
      body: Obx(() => IndexedStack(
            index: landingPageController.tabIndex.value,
            children: [
              Home_Page(),
              Categories_Exp(),
              My_Orders(),
              Profile_Screen()
            ],
          )),
    ));
  }
}
