import 'package:flutter/material.dart';
import 'components/my_textfield.dart';
import 'components/my_button.dart';
import 'success_page.dart'; // Import the Success Page

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
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
                text: 'R e g i s t e r',
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
              style: TextButton.styleFrom(
                backgroundColor: Colors.blue, // Text color
              ),
              child: Text('Forgot Password?'),
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
                icon: const Icon(Icons.fingerprint, size: 20.0), // Fingerprint icon inside the button
                color: Colors.black, // Button color
              ),
            ),
          ],
        ),
      ),
    );
  }
}
