// FILE: lib/screens/dashboard_screen.dart
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:money_mentor/widgets/summary_card.dart';

/// Dashboard screen:
/// - Summary cards (monthly total, savings, debt outstanding, CC utilization)
/// - Small trend line chart (income vs expense)
/// - Recent payments quick list
class DashboardScreen extends ConsumerWidget {
  static const String routeName = '/dashboard';
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // TODO: replace with providers for aggregated data
    return Scaffold(
      appBar: AppBar(title: const Text('MoneyMentor')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: const [
                Expanded(child: SummaryCard(title: 'This Month', value: '₹ 12,430')),
                SizedBox(width: 8),
                Expanded(child: SummaryCard(title: 'Debt', value: '₹ 64,200')),
              ],
            ),
            const SizedBox(height: 12),
            Card(
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Column(
                  children: [
                    const Text('Income vs Expense'),
                    SizedBox(
                      height: 160,
                      child: LineChart(
                        LineChartData(
                          lineBarsData: [
                            LineChartBarData(spots: [FlSpot(0, 10), FlSpot(1, 15), FlSpot(2, 8)], isCurved: true),
                            LineChartBarData(spots: [FlSpot(0, 7), FlSpot(1, 14), FlSpot(2, 6)], isCurved: true),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 12),
            const Text('Recent Payments', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
            Card(
              child: ListTile(
                leading: const Icon(Icons.payment),
                title: const Text('Quick-pay: Personal Loan'),
                subtitle: const Text('₹ 5,000 - 2 days ago'),
                trailing: ElevatedButton(onPressed: () {}, child: const Text('Reconcile')),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(items: const [
        BottomNavigationBarItem(icon: Icon(Icons.dashboard), label: 'Dashboard'),
        BottomNavigationBarItem(icon: Icon(Icons.list), label: 'Entries'),
        BottomNavigationBarItem(icon: Icon(Icons.account_balance_wallet), label: 'Debts'),
      ]),
      drawer: Drawer(
        child: ListView(
          children: [
            const DrawerHeader(child: Text('MoneyMentor')),
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text('Settings'),
              onTap: () => Navigator.pushNamed(context, '/settings'),
            ),
          ],
        ),
      ),
    );
  }
}

/// Next Steps:
/// - Wire summary values to providers (DB aggregates).
/// - Add interactive charts with drill-down to lists.

