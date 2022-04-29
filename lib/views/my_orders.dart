import 'package:flutter/material.dart';

class My_Orders extends StatelessWidget {
  const My_Orders({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: TextButton(
            onPressed: () {},
            child: const Text(
              'My Orders',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
