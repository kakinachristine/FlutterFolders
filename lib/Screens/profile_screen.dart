// profile_screen.dart
import 'package:flutter/material.dart';
import 'package:flutter_folders/widgets/custom_button.dart';
import 'package:flutter_folders/utilities/helper_functions.dart';
import 'package:flutter_folders/constants/app_strings.dart';


class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Welcome to Profile Screen'),
            SizedBox(height: 20),
        CustomButton(
          text: AppStrings.home,
          onPressed: () {
            HelperFunctions.printMessage('Navigating to ${AppStrings.home}');
            Navigator.pushNamed(context, '/profile');
          },
        )
          ],
        ),
      ),
    );
  }
}
