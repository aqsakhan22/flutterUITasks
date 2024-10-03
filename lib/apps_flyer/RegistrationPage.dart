import 'package:flutter/material.dart';
import 'package:squarepaymentflutter/apps_flyer/apps_flyer_init.dart';

class RegistrationPage extends StatelessWidget {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  void _register(BuildContext context) {
    // Perform registration logic here
    String email = _emailController.text;

    // Log registration event
    AppsFlyerFunctions.logEvent("UserRegistration", {
      "email": email,
      "source": "RegistrationPage"
    });
    // Set user profile
    AppsFlyerFunctions.pushUserProfile(email);
    // Navigate to home page or show success message
    Navigator.pushReplacementNamed(context, '/home');
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Register')),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _emailController,
              decoration: InputDecoration(labelText: 'Email'),
            ),
            TextField(
              controller: _passwordController,
              decoration: InputDecoration(labelText: 'Password'),
              obscureText: true,
            ),
            ElevatedButton(
              onPressed: () => _register(context),
              child: Text('Register'),
            ),
          ],
        ),
      ),
    );
  }
}