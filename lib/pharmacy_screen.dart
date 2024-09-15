import 'package:clinic/components/bottom_nav_bar.dart';
import 'package:flutter/material.dart';

class PharmacyScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pharmacy"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Heading
            Text(
              "Please select",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),

            // Subheading
            Text(
              "Type of product",
              style: TextStyle(
                fontSize: 18,
                color: Colors.grey[700],
              ),
            ),
            SizedBox(height: 20),

            // Search box
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Row(
                children: [
                  Icon(Icons.search, color: Colors.grey[600]),
                  SizedBox(width: 10),
                  Text(
                    "Search",
                    style: TextStyle(color: Colors.grey[600], fontSize: 16),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),

            // Grid of product cards
            Expanded(
              child: GridView.count(
                crossAxisCount: 3,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                children: [
                  buildProductCard(context, Icons.local_offer, "Vitamin"),
                  buildProductCard(context, Icons.medication, "Pills"),
                  buildProductCard(context, Icons.health_and_safety, "Health Support"),
                  buildProductCard(context, Icons.child_friendly, "Baby"),
                  buildProductCard(context, Icons.woman, "Women"),
                  buildProductCard(context, Icons.clean_hands, "Dental"),
                  buildProductCard(context, Icons.build, "Equipments"),
                  buildProductCard(context, Icons.restore_from_trash, "Disposable"),
                  buildProductCard(context, Icons.favorite, "Nursing Care"),
                  buildProductCard(context, Icons.brush, "Beauty"),
                  buildProductCard(context, Icons.star, "Highlighted"),
                ],
              ),
            ),

            // Continue button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
  onPressed: () {
    // Handle continue action
  },
  child: Text("Continue"),
  style: ElevatedButton.styleFrom(
    backgroundColor: Colors.blue, // Background color of the button
    foregroundColor: Colors.white, // Text color
    padding: EdgeInsets.symmetric(vertical: 16.0),
    textStyle: TextStyle(fontSize: 18),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(8), // Less rounded corners
    ),
  ),
),

            ),

          ],
        ),
      ),
    );
  }

  // Helper function to build each product card
  Widget buildProductCard(BuildContext context, IconData icon, String title) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 20, color: Colors.blue),
            SizedBox(height: 10),
            Text(
              title,
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
