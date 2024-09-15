import 'package:clinic/checkout1_page.dart';
import 'package:flutter/material.dart';

class DoctorPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Book Appointment', style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold, color: Colors.blue,
                    ),),
        
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Doctor card with picture and name
              Row(
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage('lib/images/doctor.png'), // Add a picture for Dr. Susan
                    radius: 30.0,
                  ),
                  SizedBox(width: 16.0),
                  Text(
                    'Dr. Susan',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20.0),
        
              // Blue card with appointment details
              Container(
                width: double.infinity, // Make the container span the full width
                padding: EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  color: Colors.blue.shade100,
                  borderRadius: BorderRadius.circular(8.0),
                  border: Border.all(color: Colors.blue.shade200),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Today 12:30',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue,
                      ),
                    ),
                    SizedBox(height: 4.0),
                    Text(
                      'The call will start in 5 minutes',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20.0),
        
              // Appointment details cards
              _buildDetailCard('Type of Delivery', 'Online advice'),
              _buildDetailCard('Inspection Time', 'Monday 12:30'),
              _buildDetailCard('Duration', '15 minutes'),
              _buildDetailCard('Payment', '\$80'),
              SizedBox(height: 20.0),
        
              // Confirm button
              SizedBox(
                width: double.infinity, // Make the button span the full width
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Checkout1Page()),
                );
                    // Handle confirm action
                  },
                  child: Text('Confirm'),
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
      ),
    );
  }

  Widget _buildDetailCard(String title, String detail) {
    return Container(
      width: double.infinity, // Make the container span the full width
      margin: EdgeInsets.only(bottom: 10.0),
      padding: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: BorderRadius.circular(8.0),
        border: Border.all(color: Colors.grey.shade300),
      ),
      child: Column( // Use Column to align items vertically
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 16,
              color: Colors.grey,
            ),
          ),
          SizedBox(height: 4.0),
          Text(
            detail,
            style: TextStyle(
              fontSize: 16,
              color: Colors.blue,
            ),
          ),
        ],
      ),
    );
  }
}
