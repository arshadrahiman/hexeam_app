import 'package:flutter/material.dart';

class Profile_Screen extends StatelessWidget {
  const Profile_Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: TextButton(
            onPressed: () {},
            child: const Text(
              'Profile',
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
