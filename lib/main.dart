import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Coding Test App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Coding Test App'),
      ),
      body: SingleChildScrollView( // Ensures scrollable content on small screens
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Card(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Reverse a String',
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 10.0),
                    RichText(
                      text: const TextSpan(
                        children: [
                          TextSpan(
                            text: 'Write a function that reverses the characters in a given string.',
                            style: TextStyle(color: Colors.black),
                          ),
                          TextSpan(
                            text: '\n\nExample:',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          TextSpan(
                            text: '\nInput: "Hello World"\nOutput: "dlroW olleH"',
                            style: TextStyle(color: Colors.grey),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20.0),
            const TextField(
              maxLines: null, // Enables multiline input for code
              decoration: InputDecoration(
                hintText: 'Write your code here...',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                // Simulate submit button press (no functionality yet)
                print('Code submitted!');
              },
              child: const Text('Submit Code'),
            ),
          ],
        ),
      ),
    );
  }
}
