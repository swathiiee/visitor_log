import 'package:flutter/material.dart';
import 'visitor_list_page.dart';
import 'add_visitor_page.dart';

class SecurityDashboard extends StatelessWidget {
  const SecurityDashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Security Dashboard'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const AddVisitorPage()),
              );
            },
            child: const Text('Add Visitor'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const VisitorListPage()),
              );
            },
            child: const Text('View All Visitors'),
          ),
        ],
      ),
    );
  }
}
