import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            Container(
              width: double.infinity,
              color: Colors.red,
              height: 60,
              alignment: Alignment.center,
              child: const Text(
                "my title",
                style: TextStyle(color: Colors.white),
              ),
            ),
            Expanded(
              child: ListView.separated(
                itemBuilder: (context, index) => Container(
                  height: 200,
                  color: Colors.blueGrey,
                ),
                separatorBuilder: (context, index) => const SizedBox(
                  height: 20,
                ),
                itemCount: 13,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
