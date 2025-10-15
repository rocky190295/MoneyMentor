// FILE: lib/widgets/summary_card.dart
import 'package:flutter/material.dart';
import 'package:money_mentor/utils/theme.dart';

/// Small reusable card used on the Dashboard for KPI summaries.
class SummaryCard extends StatelessWidget {
  final String title;
  final String value;
  const SummaryCard({super.key, required this.title, required this.value});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Theme.of(context).cardColor,
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title, style: const TextStyle(fontSize: 12, color: ThemeUtils.gray)),
            const SizedBox(height: 8),
            Text(value, style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          ],
        ),
      ),
    );
  }
}

/// Next Steps:
/// - Add optional sparkline and percent-change indicator.

