// screens/home_screen.dart
import 'package:flutter/material.dart';
import 'package:flutter_folders/widgets/custom_button.dart';
import 'package:flutter_folders/utilities/helper_functions.dart';
import 'package:flutter_folders/constants/app_strings.dart';
import 'package:flutter_folders/models/user_model.dart';

class HomeScreen extends StatelessWidget {
  final UserModel currentUser = UserModel(name: 'John Doe', age: 30); // Example user data

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Welcome to Home Screen, ${currentUser.name}!'), // Display user's name
            SizedBox(height: 20),
            CustomButton(
              text: AppStrings.profile,
              onPressed: () {
                HelperFunctions.printMessage('Navigating to Profile');
                Navigator.pushNamed(context, '/profile');
              },
            ),
            SizedBox(height: 20),
            Text(
              'You can also go to Profile from here!',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
