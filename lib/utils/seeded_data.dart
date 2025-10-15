// FILE: lib/utils/seeded_data.dart
import 'dart:convert';
import 'package:flutter/services.dart';

/// Loads seeded dropdowns from assets.
Future<List<String>> loadCategories() async {
  final jsonStr = await rootBundle.loadString('assets/seeded_categories.json');
  final list = jsonDecode(jsonStr) as List<dynamic>;
  return list.map((e) => e.toString()).toList();
}

/// Next Steps:
/// - Add seeded descriptions and type lists.
