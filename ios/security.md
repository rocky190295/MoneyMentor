// FILE: security.md
# Security & Privacy notes — MoneyMentor

- Data is stored locally (Drift DB) by default. No network calls unless user enables sync.
- Backups (export/restore) are explicit user actions. Exports to CSV/PDF contain only local data.
- If Google Sheets / Email features are enabled, OAuth credentials are stored in secure storage and only used with explicit consent.
- Biometric/PIN lock uses `local_auth` for biometric and `shared_preferences` for hashed PIN (consider using secure_storage for higher security).
- Do not store raw OAuth refresh tokens unencrypted; use platform secure storage in production.

Next Steps:
- Integrate `flutter_secure_storage` for tokens & PIN.
- Threat model and privacy policy generation.

