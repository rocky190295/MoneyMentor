// FILE: lib/screens/settings_screen.dart
import 'package:flutter/material.dart';

/// Settings screen with theme, currency, date format, backup/restore, security lock.
class SettingsScreen extends StatelessWidget {
  static const String routeName = '/settings';
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Settings')),
      body: ListView(
        children: [
          ListTile(
            leading: const Icon(Icons.color_lens),
            title: const Text('Theme'),
            subtitle: const Text('Light / Dark / System'),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.currency_rupee),
            title: const Text('Currency'),
            subtitle: const Text('INR'),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.lock),
            title: const Text('App Lock'),
            subtitle: const Text('PIN / Biometric'),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.backup),
            title: const Text('Backup / Restore'),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}

/// Next Steps:
/// - Implement settings provider, persistent storage, and PIN management in secure storage.

