import 'package:flutter/material.dart';
import 'components/my_textfield.dart';
import 'components/my_button.dart';
import 'success_page.dart'; // Import the Success Page

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Logo at the top
            Image.asset(
              'lib/images/logo.png', // Replace with your logo asset path
              height: 100.0, // Adjust the size as needed
            ),
            const SizedBox(height: 40), // Add some space between the logo and text fields
            MyTextField(
              controller: _emailController,
              hintText: 'Email',
              obscureText: false,
            ),
            const SizedBox(height: 30),
            MyTextField(
              controller: _passwordController,
              hintText: 'Password',
              obscureText: true, // Typically, passwords should be obscured
            ),
            const SizedBox(height: 30),
            // Login button
            SizedBox(
              width: double.infinity, // Make the button take the full width of its container
              child: MyButton(
                text: 'Login',
                onTap: () {
                  // Navigate to the Success Page
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SuccessPage()),
                  );
                },
              ),
            ),
            const SizedBox(height: 10),
            // Forgot Password text
            TextButton(
              onPressed: () {
                // Add your forgot password logic here
              },
              child: const Text('Forgot Password?'),
          
            ),
            const SizedBox(height: 30),
            // Sign in with Apple ID button with fingerprint icon
            SizedBox(
              width: double.infinity, // Make the button take the full width of its container
              child: MyButton(
                text: 'Sign in with Apple ID',
                onTap: () {
                  // Navigate to the Success Page
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SuccessPage()),
                  );
                },
                icon: const Icon(Icons.fingerprint, size: 20.0 ,color: Colors.red,), // Fingerprint icon inside the button
                color: Colors.black, // Button color
              ),
            ),
          ],
        ),
      ),
    );
  }
}
