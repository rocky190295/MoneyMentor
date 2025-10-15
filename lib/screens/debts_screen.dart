// FILE: lib/screens/debts_screen.dart
import 'package:flutter/material.dart';

/// Debts screen shows a priority-sorted list and Quick-pay action.
class DebtsScreen extends StatelessWidget {
  static const String routeName = '/debts';
  const DebtsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Replace with provider-driven list
    return Scaffold(
      appBar: AppBar(title: const Text('Debts & Loans')),
      body: ListView(
        padding: const EdgeInsets.all(12),
        children: [
          Card(
            child: ListTile(
              title: const Text('Home Loan'),
              subtitle: const Text('Balance: ₹ 1,20,000 • EMI ₹ 4,500'),
              trailing: ElevatedButton(onPressed: () {}, child: const Text('Quick-pay')),
            ),
          )
        ],
      ),
    );
  }
}

/// Next Steps:
/// - Implement quickPay dialog, call DebtRepository.quickPay and update UI.
/// - Add reorderable list to change priorities.

