// FILE: docs/DEVELOPER_NOTES.md
# Developer Notes — MoneyMentor

## How to generate Drift files
`flutter pub run build_runner build --delete-conflicting-outputs`

## Key coding guidelines
- Riverpod for state management.
- Repositories should be small and unit-testable.
- Keep UI thin; business logic in repositories/services.
- Add detailed unit tests for repository logic (quick-pay transaction).

## Milestones
1. Wire DB -> Repositories -> Providers (2 days)
2. Add complete Add/Edit/Delete flows for Entries (3 days)
3. Dashboard aggregations & charts (2 days)
4. Quick-pay flow & PaymentHistory (2 days)
5. Export CSV/PDF & backup/restore (2 days)
6. Settings: PIN/biometric + backup (1 day)
7. Tests & CI (2 days)

