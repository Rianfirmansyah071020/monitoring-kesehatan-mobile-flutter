import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: const [
            Icon(Icons.health_and_safety, color: Colors.lightBlue, size: 40),
            SizedBox(width: 10),
            Text(
              "Monitoring Kesehatan",
              style: TextStyle(
                fontSize: 20,
                color: Colors.lightBlue,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
