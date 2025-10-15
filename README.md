// FILE: README.md
# MoneyMentor — See. Compare. Optimize.

Production-ready Flutter MVP scaffold for MoneyMentor — an offline-first, modular financial coach app inspired by the `Rakshit_30Day_Finance_Tracker.xlsx`.

This repository implements:
- Typed offline DB using Drift.
- Riverpod state management.
- Core models: IncomeExpense, DebtInstrument, CreditCard, PaymentHistory, WeeklyReview.
- CRUD flows, dashboard with charts (fl_chart), CSV/PDF export stubs, settings incl. PIN/biometric lock.
- Feature skeletons for AI Coach, Google Sheets sync, Monthly Email.
- Unit, widget & integration test stubs.
- CI workflow: GitHub Actions.

## Quickstart
1. Install Flutter stable (>=3.x).
2. `flutter pub get`
3. Build generated Drift files: `flutter pub run build_runner build --delete-conflicting-outputs`
4. Run: `flutter run -d <device>`

## Project structure (high-level)
- `/lib` — app code
    - `/models` — data classes
    - `/services` — db, export, email, sheets, ai
    - `/repositories` — repository layer
    - `/screens` — UI screens
    - `/widgets` — shared widgets
    - `/features` — future-ready feature folders
    - `/utils` — helpers
- `/assets` — icons / illustrations / splash
- `/test` — tests
- `.github/workflows/ci.yml` — CI

## Acceptance checklist
- [ ] Add expense persists after restart.
- [ ] Dashboard shows monthly totals & charts.
- [ ] Quick-pay reduces debt & logs payment.
- [ ] Weekly review entries saved.
- [ ] Export CSV/PDF works.
- [ ] Settings: theme, currency, lock.

---

For detailed developer notes and Next Steps, open `docs/DEVELOPER_NOTES.md` (created below).

