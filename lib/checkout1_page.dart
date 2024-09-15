import 'package:clinic/payment_page.dart';
import 'package:flutter/material.dart';

class Checkout1Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Total Payment'),
       
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Total Payment Amount
            Text(
              '\$80',
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 20.0),

            // Enter Coupon Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  // Handle coupon action
                },
                child: Text('Enter Coupon'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue.shade100,
                  foregroundColor: Colors.blue,
                  padding: EdgeInsets.symmetric(vertical: 16.0 ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20.0),

            // Available Balance
            Text(
              'Available Balance is \$120',
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey,
              ),
            ),
            SizedBox(height: 20.0),

            // Pay From Balance Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton.icon(
                onPressed: () {
                  Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PaymentPage()),
                );
                },
                icon: Icon(Icons.account_balance_wallet, color: Colors.white),
                label: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(width: 10,),
                    Text('Pay from Balance',style: TextStyle(fontSize: 18, color: Colors.white),),
                    Icon(Icons.arrow_forward, color: Colors.white),
                  ],
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  padding: EdgeInsets.symmetric(vertical: 16.0, horizontal:20.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  textStyle: TextStyle(fontSize: 18, color: Colors.white),
                ),
              ),
            ),
            SizedBox(height: 30.0),

            // Payment Options Grid
            Expanded(
              child: Container(
                padding: EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  color: Colors.blue.shade50,
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: GridView.count(
                  crossAxisCount: 3, // 3 columns
                  crossAxisSpacing: 10.0,
                  mainAxisSpacing: 10.0,
                  children: [
                    _buildPaymentOptionCard('Comms Bank', Icons.account_balance),
                    _buildPaymentOptionCard('PayPal', Icons.payment),
                    _buildPaymentOptionCard('Zip', Icons.credit_card),
                    _buildPaymentOptionCard('Apple Pay', Icons.phone_iphone),
                    _buildPaymentOptionCard('AfterPay', Icons.shopping_bag),
                    _buildPaymentOptionCard('GPay', Icons.wallet_giftcard),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Helper method to build payment option cards
  Widget _buildPaymentOptionCard(String name, IconData icon) {
    return Card(
      elevation: 0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, color: Colors.blue, size: 40.0),
            SizedBox(height: 10.0),
            Text(
              name,
              style: TextStyle(
                fontSize: 14,
                color: Colors.black,
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
