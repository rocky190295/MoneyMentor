// FILE: lib/services/export_service.dart
import 'dart:convert';
import 'dart:io';
import 'package:csv/csv.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:printing/printing.dart';
import 'package:money_mentor/services/db/app_database.dart';

/// ExportService
/// - Export tables / filtered data to CSV or PDF.
/// - Exports are synchronous and write to a temporary directory for now.
class ExportService {
  final AppDatabase db;
  ExportService(this.db);

  /// Exports all income/expense rows to CSV and returns the file path.
  Future<String> exportIncomeToCsv() async {
    final rows = <List<String>>[];
    rows.add(['id', 'date', 'category', 'description', 'amount', 'type', 'notes', 'weekNum']);
    final entries = await db.getAllIncomeExpenses();
    for (final e in entries) {
      rows.add([
        e.id.toString(),
        e.date.toIso8601String(),
        e.category,
        e.description,
        e.amount.toString(),
        e.typeFixedOrVariable,
        e.notes ?? '',
        e.weekNum.toString()
      ]);
    }
    final csv = const ListToCsvConverter().convert(rows);

    // Use temp dir as a safe fallback for now (works on all platforms).
    final dir = await Directory.systemTemp.createTemp('money_mentor_exports');

    final file = File('${dir.path}/income_export_${DateTime.now().millisecondsSinceEpoch}.csv');
    await file.writeAsString(csv);
    return file.path;
  }

  Future<void> exportDashboardPdf(String title, Map<String, dynamic> data) async {
    final pdf = pw.Document();
    pdf.addPage(
      pw.Page(
        build: (context) => pw.Center(child: pw.Text('$title\n\n${jsonEncode(data)}')),
      ),
    );
    await Printing.layoutPdf(onLayout: (format) => pdf.save());
  }
}
