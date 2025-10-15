// FILE: lib/screens/weekly_screen.dart
import 'package:flutter/material.dart';

/// Weekly review journaling screen.
class WeeklyScreen extends StatefulWidget {
  static const String routeName = '/weekly';
  const WeeklyScreen({super.key});

  @override
  State<WeeklyScreen> createState() => _WeeklyScreenState();
}

class _WeeklyScreenState extends State<WeeklyScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Weekly Review')),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            const Text('Create weekly review (week start date, metrics, wins, slip-ups)'),
            ElevatedButton(onPressed: _openNewReview, child: const Text('Add Review')),
          ],
        ),
      ),
    );
  }

  void _openNewReview() {
    // TODO: show form modal
  }
}

/// Next Steps:
/// - Provide metric dropdowns and a simple metric scorer.
/// - Save weekly review to DB and surface in a list with trend analysis.

