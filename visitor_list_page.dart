import 'package:flutter/material.dart';

class VisitorListPage extends StatelessWidget {
  const VisitorListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Mock data for visitors
    final List<Map<String, String>> visitors = [
      {'name': 'John Doe', 'time': '10:00 AM', 'purpose': 'Meeting'},
      {'name': 'Jane Smith', 'time': '11:30 AM', 'purpose': 'Delivery'},
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Visitor List'),
      ),
      body: ListView.builder(
        itemCount: visitors.length,
        itemBuilder: (context, index) {
          final visitor = visitors[index];
          return Card(
            child: ListTile(
              title: Text(visitor['name']!),
              subtitle: Text('Time: ${visitor['time']}\nPurpose: ${visitor['purpose']}'),
            ),
          );
        },
      ),
    );
  }
}
