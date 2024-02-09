import 'package:flutter/material.dart';

class DisplayPage extends StatelessWidget {
  const DisplayPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
   final routeArgs = ModalRoute.of(context)?.settings?.arguments as Map<String, String>;
    final name = routeArgs['name'].toString();
    final age = routeArgs['age'].toString();

    return Scaffold(
      appBar: AppBar(
        title: Text('Display Page'),
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              name,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30.0,
              ),
            ),
            Text(
              age,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30.0,
              ),
            ),
            ElevatedButton(onPressed: () {
              Navigator.pop(context);
            }, child: Text('<<Back'))
          ],
        ),
      ),
    );
  }
}