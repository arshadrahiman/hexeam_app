import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class My_Cart extends StatelessWidget {
  const My_Cart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body:    Text(
            Get.parameters['data'] ?? 'N/A',
            style: const TextStyle(fontSize: 22),
          ),
        
      
      ),
    );
  }
}
