// ****************************************************
// Name: Abdul Rafay
// SAP ID: 54689
// Course: Mobile App Development
// Assignment # 1
// ****************************************************

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

// ******************** MyApp (Root Widget) ********************
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Removes the debug banner
      title: 'Bidding App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MaximumBid(),
    );
  }
}

// ******************** MaximumBid StatefulWidget ********************
class MaximumBid extends StatefulWidget {
  const MaximumBid({super.key});

  @override
  State<MaximumBid> createState() => _MaximumBidState();
}

// ******************** State Class for MaximumBid ********************
class _MaximumBidState extends State<MaximumBid> {
  int _currentBid = 0; // Initial bid amount

  // ********** Function: Increase Bid **********
  void _increaseBid() {
    setState(() {
      _currentBid += 50; // Increase by $50 each time
    });
  }

  // ******************** UI Building ********************
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Bidding Page"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Your Current Maximum Bid:",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Text(
              "\$$_currentBid",
              style: const TextStyle(
                fontSize: 36,
                fontWeight: FontWeight.bold,
                color: Colors.green,
              ),
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: _increaseBid,
              child: const Text(
                "Increase Bid by \$50",
                style: TextStyle(fontSize: 18),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
