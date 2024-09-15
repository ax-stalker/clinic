import 'package:clinic/home_page.dart';
import 'package:clinic/main_page.dart';
import 'package:flutter/material.dart';

class PaymentSuccessPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        title: Text('Payment success'),
        centerTitle: true, // Center the title
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, // Center content vertically
          children: [
            // Blue tick icon
            Icon(
              Icons.check_circle,
              color: Colors.blue,
              size: 100.0, // Large size for the tick
            ),
            SizedBox(height: 20.0),

            // Success message
            Text(
              'Payment made successfully',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
              textAlign: TextAlign.center, // Center the text
            ),
            SizedBox(height: 30.0),

            // OK button
            SizedBox(
              width: double.infinity, // Full-width button
              child: ElevatedButton(
                onPressed: () {
                     Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) =>  HomePage()),
                  );
                  // Handle OK button press (e.g., navigate to the homepage)
                  Navigator.pop(context); // Go back to previous screen
                },
                child: Text('OK'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue, // Button color
                  foregroundColor: Colors.white, // Text color
                  padding: EdgeInsets.symmetric(vertical: 16.0),
                  textStyle: TextStyle(fontSize: 18),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
