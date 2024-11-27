import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'InvestApp',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                Text(
                  'Have fun learning how to save and invest your money',
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ),
            Image.asset('assets/images/piggy bank.gif'),
            Column(
              children: [
                ElevatedButton(
                  onPressed: () {}, 
                  child: Text('Login'),
                ),
                ElevatedButton(
                  onPressed: () {}, 
                  child: Text('Register'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
