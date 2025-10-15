// FILE: lib/main.dart
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:money_mentor/screens/dashboard_screen.dart';
import 'package:money_mentor/screens/settings_screen.dart';
import 'package:money_mentor/utils/theme.dart';

/// App entry point
/// - Uses Riverpod's ProviderScope for state management.
/// - Configures localization and theme.
/// - BottomNav for mobile; Drawer for desktop is inside each scaffold.
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const ProviderScope(child: MoneyMentorApp()));
}

class MoneyMentorApp extends ConsumerWidget {
  const MoneyMentorApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeMode = ThemeUtils.themeMode; // placeholder to extend with settings
    return MaterialApp(
      title: 'MoneyMentor — See. Compare. Optimize.',
      debugShowCheckedModeBanner: false,
      theme: ThemeUtils.buildLightTheme(),
      darkTheme: ThemeUtils.buildDarkTheme(),
      themeMode: themeMode,
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [Locale('en', 'IN')],
      initialRoute: DashboardScreen.routeName,
      routes: {
        DashboardScreen.routeName: (_) => const DashboardScreen(),
        SettingsScreen.routeName: (_) => const SettingsScreen(),
      },
    );
  }
}

/// Next Steps:
/// - Wire themeMode to settings provider (shared_preferences).
/// - Add onboarding flow and PIN/biometric wrapper on app start.
/// - Add deep links and platform-specific splash assets.

