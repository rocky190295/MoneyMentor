// FILE: lib/screens/cards_screen.dart
import 'package:flutter/material.dart';

/// Credit card limit & utilization view.
class CardsScreen extends StatelessWidget {
  static const String routeName = '/cards';
  const CardsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Replace with provider for cards from DB
    return Scaffold(
      appBar: AppBar(title: const Text('Credit Cards')),
      body: ListView(
        padding: const EdgeInsets.all(12),
        children: [
          Card(
            child: ListTile(
              leading: const Icon(Icons.credit_card),
              title: const Text('HDFC Cashback'),
              subtitle: const Text('Limit ₹ 1,00,000 • Utilization 54%'),
              trailing: ElevatedButton(onPressed: () {}, child: const Text('Update')),
            ),
          )
        ],
      ),
    );
  }
}

/// Next Steps:
/// - Add ability to update utilization & lastUpdate timestamp.
/// - Add utilization chart & alert when >80%.

