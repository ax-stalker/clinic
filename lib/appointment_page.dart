import 'package:clinic/doctor_page.dart';
import 'package:flutter/material.dart';

class AppointmentPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
  
      
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Title section
            Text(
              'Examination',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            // List of clickable cards
            Expanded(
              child: ListView(
                children: [
                  _buildCategoryCard(context, 'Lungs'),
                  _buildCategoryCard(context, 'Cardiology'),
                  _buildCategoryCard(context, 'Children'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCategoryCard(BuildContext context, String category) {
    return InkWell(
      onTap: () {
         
        Navigator.push(context, MaterialPageRoute(builder: (context) => DoctorPage()));
      },
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 12.0),
        margin: EdgeInsets.only(bottom: 10.0),
        decoration: BoxDecoration(
          border: Border(bottom: BorderSide(color: Colors.grey.shade300, width: 1)),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              category,
              style: TextStyle(
                fontSize: 18,
                color: Colors.blue,
              ),
            ),
            Icon(
              Icons.arrow_forward_ios,
              color: Colors.blue,
              size: 16.0,
            ),
          ],
        ),
      ),
    );
  }
}
