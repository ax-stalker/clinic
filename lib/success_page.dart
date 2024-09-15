import 'package:clinic/components/my_button.dart';
import 'package:clinic/main_page.dart';
import 'package:flutter/material.dart';


class SuccessPage extends StatelessWidget {
  const SuccessPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Blue tick icon at the top
              const Icon(
                Icons.check,
                color: Colors.blue,
                size: 50.0, // Adjust size as needed
              ),
              const SizedBox(height: 20),
              // Success message
              const Text(
                'All set.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                'You have successfully logged in.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.grey,
                ),
              ),
              const SizedBox(height: 20),
              SizedBox(
                width: double.infinity, // Make the button take up full width
                child: MyButton(
                text: 'Okay',
                onTap: () {
                  // Navigate to the Success Page
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) =>  MainPage()),
                  );
                },
                 // Fingerprint icon inside the button
                color: Colors.blue, // Button color
              ),

                // ElevatedButton(
                //   onPressed: () {
                //     Navigator.pushReplacement(
                //       context,
                //       MaterialPageRoute(builder: (context) => HomePage()),
                //     );
                //   },
                //   child: Text('Okay' ,style: TextStyle(color: Colors.white),),
                //   style: ElevatedButton.styleFrom(
                //     backgroundColor: Colors.blue, 
                    
                //   ),
                // ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
