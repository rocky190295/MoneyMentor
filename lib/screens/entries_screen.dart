// FILE: lib/screens/entries_screen.dart
import 'package:flutter/material.dart';

/// Entries screen manages Income & Expense CRUD flows.
/// For MVP, provide list + FAB to create new entry.
/// Use forms with seeded dropdowns for Category and Type.
class EntriesScreen extends StatefulWidget {
  static const String routeName = '/entries';
  const EntriesScreen({super.key});

  @override
  State<EntriesScreen> createState() => _EntriesScreenState();
}

class _EntriesScreenState extends State<EntriesScreen> {
  @override
  Widget build(BuildContext context) {
    // Replace with Riverpod provider to fetch list from DB
    return Scaffold(
      appBar: AppBar(title: const Text('Entries')),
      body: const Center(child: Text('Entries list will appear here')),
      floatingActionButton: FloatingActionButton(
        onPressed: _openAddEntry,
        child: const Icon(Icons.add),
      ),
    );
  }

  void _openAddEntry() {
    // TODO: open modal form to add IncomeExpense using repository
  }
}

/// Next Steps:
/// - Implement form with validation, dropdowns; seed categories from assets/json.
/// - Wire provider to insert into DB and refresh list.

