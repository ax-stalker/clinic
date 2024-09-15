import 'package:clinic/success_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'components/bottom_nav_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          
          children: [
        
        
        
           // Title Text
            const Padding(
          padding: EdgeInsets.symmetric(horizontal: 25.0), // Adjust padding as needed
          child: Text(
            "My Appointment",
            style: TextStyle(
        fontSize: 20, // Adjust size as needed
        fontWeight: FontWeight.bold,
        color: Colors.black87,
            ),
          ),
        ),
            const SizedBox(height: 10),
            
            // Appointment Container
            Container(
        height: 200,
        margin:const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
        decoration: BoxDecoration(
          color: Colors.blue.shade100,
          borderRadius: BorderRadius.circular(10),
        ),
        padding: const EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // No active hours text
            const Text(
              "You have no active hours booked",
              style: TextStyle(
                color: Colors.grey,
                fontSize: 16,
              ),
            ),
            const SizedBox(height: 10),
        
            // Search Button
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SuccessPage()),
                );
              },
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                margin:const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 5,
                      spreadRadius: 2,
                    ),
                  ],
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.search, color: Colors.blue),
                    SizedBox(width: 10),
                    Text(
                      "Search doctor, hospital",
                      style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
            ),
        
        
        
        
        
        
            
            // medication reminder card
           // Title Text
            const Padding(
          padding: EdgeInsets.symmetric(horizontal: 25.0), // Adjust padding as needed
          child: Text(
            "Medication Reminder",
            style: TextStyle(
        fontSize: 20, // Adjust size as needed
        fontWeight: FontWeight.bold,
        color: Colors.black87,
            ),
          ),
        ),
            const SizedBox(height: 10),
            
            // Appointment Container
            Container(
        height: 200,
        margin:const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
        decoration: BoxDecoration(
          color: Colors.blue.shade100,
          borderRadius: BorderRadius.circular(10),
        ),
        padding: const EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // No active hours text
            const Text(
              "You don't have a medication reminder",
              style: TextStyle(
                color: Colors.grey,
                fontSize: 16,
              ),
            ),
            const SizedBox(height: 10),
        
            // alarm Button
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SuccessPage()),
                );
              },
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                margin:const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 5,
                      spreadRadius: 2,
                    ),
                  ],
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.alarm, color: Colors.blue),
                    SizedBox(width: 10),
                    Text(
                      "Remind Medication",
                      style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
            ),
        
        
        
        
        
        
        
        
        
        
            // highlighted doctors cards
        
           // Title Text
            const Padding(
          padding: EdgeInsets.symmetric(horizontal: 25.0), // Adjust padding as needed
          child: Text(
            "Highlighted doctors",
            style: TextStyle(
        fontSize: 20, // Adjust size as needed
        fontWeight: FontWeight.bold,
        color: Colors.black87,
            ),
          ),
        ),
            const SizedBox(height: 10),
         // Horizontally scrollable Row of Doctor Cards
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: SizedBox(
              height: 180, // Set a fixed height for the card container
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    // Doctor 1 Card
                    Card(
                      elevation: 3,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Container(
                        width: 200, // Adjust width as needed
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Icon(Icons.person, size: 40, color: Colors.blue),
                            const SizedBox(height: 10),
                            const Text(
                              "Dr. Susan",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 5),
                            Text(
                              "Sydney Hospital",
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.grey[700],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(width: 16), // Space between cards
                    
                    // Doctor 2 Card
                    Card(
                      elevation: 3,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Container(
                        width: 200, // Adjust width as needed
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Icon(Icons.person, size: 40, color: Colors.blue),
                            const SizedBox(height: 10),
                            const Text(
                              "Dr. Mike",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 5),
                            Text(
                              "Sydney Hospital",
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.grey[700],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        
        
        
        
        
        
        
        
        
        
        
            
            // promotions news cards
 const Padding(
          padding: EdgeInsets.symmetric(horizontal: 25.0), // Adjust padding as needed
          child: Text(
            "Promotions news",
            style: TextStyle(
        fontSize: 20, // Adjust size as needed
        fontWeight: FontWeight.bold,
        color: Colors.black87,
            ),
          ),
        ),
            const SizedBox(height: 10),
            
            // Appointment Container
            Container(
        height: 200,
        margin:const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
        decoration: BoxDecoration(
          color: Colors.blue.shade100,
          borderRadius: BorderRadius.circular(10),
        ),
        padding: const EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // No active hours text
            const Text(
              "You don't have any notifications",
              style: TextStyle(
                color: Colors.grey,
                fontSize: 16,
              ),
            ),
            const SizedBox(height: 10),
        
            // alarm Button
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SuccessPage()),
                );
              },
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                margin:const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 5,
                      spreadRadius: 2,
                    ),
                  ],
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.newspaper, color: Colors.blue),
                    SizedBox(width: 10),
                    Text(
                      "Subscribe",
                      style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
            ),
        







        
        
        
            // MyBottomNavBar(onTabChange: (int ) {  }, selectedIndex: 0,),
          ],
        ),
        
      ),);
  }
}

