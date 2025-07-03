import 'package:flutter/material.dart';

class CategoryPage extends StatelessWidget {
  const CategoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> services = [
      {'name': 'Importation Training', 'icon': Icons.school},
      {'name': 'Procurement Services', 'icon': Icons.shopping_cart},
      {'name': 'Product Sourcing', 'icon': Icons.search},
      {'name': 'RMB Exchanger', 'icon': Icons.currency_exchange},
      {'name': 'WeChat Verification', 'icon': Icons.verified_user},
      {'name': 'Preorder Items', 'icon': Icons.reorder},
      {'name': 'Supplier Contacts', 'icon': Icons.contacts},
      {'name': 'CAC Registration', 'icon': Icons.assignment},
    ];

    return Scaffold(
      appBar: AppBar(title: const Text('Service Categories')),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: GridView.builder(
          itemCount: services.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            childAspectRatio: 1,
          ),
          itemBuilder: (context, index) {
            final service = services[index];
            return GestureDetector(
              onTap: () {
                // Add individual page navigation here later
              },
              child: Card(
                elevation: 4,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(service['icon'], size: 40, color: Colors.teal),
                    const SizedBox(height: 10),
                    Text(
                      service['name'],
                      textAlign: TextAlign.center,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}