// FILE: test/widget_test.dart
import 'package:flutter_test/flutter_test.dart';
import 'package:money_mentor/main.dart';

void main() {
  testWidgets('App initializes', (WidgetTester tester) async {
    await tester.pumpWidget(const MoneyMentorApp());
    expect(find.text('MoneyMentor — See. Compare. Optimize.'), findsNothing);
    // Basic smoke test; extend to find Dashboard widgets after wiring providers.
  });
}

/// Next Steps:
/// - Add widget tests for Add Entry form, Quick-pay flow & Export action.

