import 'package:clinic/payment_success_page.dart';
import 'package:flutter/material.dart';

class PaymentPage extends StatefulWidget {
  @override
  _PaymentPageState createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  final TextEditingController _couponController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Payment'),
        centerTitle: true, // Center the title
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Coupon text field
            TextField(
              controller: _couponController,
              onChanged: (value) {
                setState(() {
                  _couponController.text = value.toUpperCase(); // Convert input to uppercase
                  _couponController.selection = TextSelection.fromPosition(
                    TextPosition(offset: _couponController.text.length),
                  );
                });
              },
              decoration: InputDecoration(
                labelText: 'Enter Coupon',
                labelStyle: TextStyle(color: Colors.grey),
                suffixIcon: _couponController.text.isNotEmpty
                    ? IconButton(
                        icon: Icon(Icons.clear),
                        onPressed: () {
                          setState(() {
                            _couponController.clear(); // Clear the text field
                          });
                        },
                      )
                    : null,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  borderSide: BorderSide(color: Colors.blue),
                ),
              ),
            ),
            SizedBox(height: 20.0),

            // Actual Fee card
            _buildPaymentDetailCard('Actual Fee', '\$80'),

            // Coupon card
            _buildPaymentDetailCard('Coupon', '-\$50'),

            // Total Payment card with bold and larger text for value
            _buildPaymentDetailCard('Total Payment', '\$30', isTotal: true),
            
            SizedBox(height: 30.0),

            // Proceed Payment Button
            SizedBox(
              width: double.infinity, // Make the button span the width
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PaymentSuccessPage()),
                );
                },
                child: Text('Proceed Payment'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  padding: EdgeInsets.symmetric(vertical: 16.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  textStyle: TextStyle(fontSize: 18),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Helper method to build each payment detail card
  Widget _buildPaymentDetailCard(String title, String value, {bool isTotal = false}) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 12.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.lightBlue,
                ),
              ),
              Text(
                value,
                style: TextStyle(
                  fontSize: isTotal ? 20 : 16, // Larger and bold for total
                  fontWeight: isTotal ? FontWeight.bold : FontWeight.normal,
                  color: Colors.blue,
                ),
              ),
            ],
          ),
        ),
        Divider(color: Colors.grey.shade300, height: 1), // Faint line separating the cards
      ],
    );
  }
}
