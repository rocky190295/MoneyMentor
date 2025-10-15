// FILE: lib/features/ai_coach/ai_coach_stub.dart
/// AI Financial Coach — Stub (future)
/// - The folder contains placeholders for the AI Coach feature.
/// - Offline fallback uses rule-based insights (simple heuristics).
///
/// Design:
/// - ai_service.dart: handles network calls, caching, and local rule-based fallback.
/// - ai_provider.dart: Riverpod provider exposes insights and Q&A.
/// - ui: conversation screen and "Monthly insights" card.
///
/// Implementation notes:
/// - MVP will only include a rule-based module:
///    - E.g., if "Eating Out" > 20% of expenses last month -> suggest "Reduce X meals/week".
/// - When online, send aggregates to cloud model or call local on-device LLM (future).

/// Next Steps:
/// - Implement ai_service.ruleBasedInsights(db) to return list of suggestions.
/// - Add UI and opt-in toggle in Settings.

