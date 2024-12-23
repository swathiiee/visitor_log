import 'package:flutter/material.dart';

class AddVisitorPage extends StatelessWidget {
  const AddVisitorPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextEditingController nameController = TextEditingController();
    final TextEditingController purposeController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Visitor'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: nameController,
              decoration: const InputDecoration(labelText: 'Visitor Name'),
            ),
            TextField(
              controller: purposeController,
              decoration: const InputDecoration(labelText: 'Purpose of Visit'),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                // Call API or save to DB
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Visitor added successfully')),
                );
                nameController.clear();
                purposeController.clear();
              },
              child: const Text('Add Visitor'),
            ),
          ],
        ),
      ),
    );
  }
}
