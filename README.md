# Word Trainer

Ein Vokabeltrainer zur Unterstützung beim schulischen Englischlernen – mit AI-generierten Audios, Fehleranalyse und originalen Vokabellisten bayerischer Schulbücher.  
Aktuell produktiv im Einsatz, ursprünglich entwickelt zur Unterstützung meiner Tochter in der 6. Klasse.

🔗 **Live-Demo:** [https://word-trainer-test-3b93bf2b34e4.herokuapp.com/](https://word-trainer-test-3b93bf2b34e4.herokuapp.com/) (*benötigt beim ersten Starten des Dynos ca. 30 Sekunden zum Laden*)

👤 **Testzugänge:** (*Funktionen der Rollen unterscheiden sich momentan noch nicht*)
- `user` / `user`  
- `teacher` / `teacher`  
- `admin` / `admin`  

---

## 🛠️ Tech Stack

- **Backend:** Java, Spring Boot, Spring Data JPA, Flyway, Lombok
- **Frontend:** Thymeleaf, HTML/CSS (Server-side Rendering)
- **Datenbank:** PostgreSQL (lokal via Docker, produktiv via Heroku)
- **Build & Test:** Maven, JaCoCo, TestContainers
- **CI/CD:** Renovate für automatische Dependency-Updates
- **Hosting:** Heroku (mit Dyno-Keep-Alive-Funktion)

---

## 🚀 Features

- ✅ AI-generierte Audios für alle Vokabeln und Sätze (werden bei Änderungen aktualisiert)
- ✅ Unterstützung von Synonymen und alternativen Schreibweisen
- ✅ Detaillierter Fehlermodus mit intelligenter Ähnlichkeitsanalyse
- ✅ Original-Vokabellisten aus bayerischen Schulbüchern
- ✅ Zeitlich gesteuerte Wortfreischaltung bis zu den Sommerferien
- ✅ Wiederholungsintervalle via Umgebungsvariable steuerbar
- ✅ Erweiterte Logging-Funktionalität
- ✅ Integriertes Feedbackformular zur Fehler- und Kartenmeldung
- ✅ Dyno-Wachhalter, um Heroku-Ladezeiten zu minimieren

---

## 📦 Deployment & Nutzung

### Lokal starten

```bash
docker-compose up -d
./mvnw spring-boot:run
```

### Verbindung zur Datenbank

- **Lokal:**  
  `docker exec -it word-trainer-postgres psql -U word-trainer`
- **Heroku Test-DB:**  
  `heroku pg:psql -a word-trainer-test`

### Tests ausführen

```bash
./mvnw clean test
```

Generiert automatisch einen JaCoCo-Coverage-Report.

---

## 🧠 Ideen & Verbesserungen

### Technisch:
- [ ] Frontend auf React oder Angular umstellen
- [ ] Caching mit Spring Boot verbessern
- [ ] Ladezeiten der TestContainer optimieren
- [ ] Algorithmus zur Karten-Wiederholungsplanung durch FSRS ersetzen
- [ ] Synonyme dynamisch über Thesaurus-API laden
- [ ] Gamification: Punkte, Streaks, Avatare
- [ ] Mehr statistische Auswertungen

### Inhaltlich:
- [ ] Vokabelimport aus JSON-Dateien
- [ ] Verbesserte Aufbereitung falsch gelöster Eingaben
- [ ] Trennung von mehrteiligen Vokabeln (z. B. *to do, did, done*)

---

## 🧪 Datenmigration & Backups

### Datenbank umziehen

```bash
# Dump erstellen
pg_dump -Fp --no-acl --no-owner <DB_CONNECTION_STRING> > dump.sql

# Import in Docker-Postgres
docker exec -i word-trainer-postgres psql -U word-trainer -d word-trainer < dump.sql
```

### Backup bei Heroku

```bash
heroku pg:backups:capture -a word-trainer-live
```

---

## 📌 Hinweise

Vor der Einführung von Admin-Funktionen (z. B. Kartenerstellung/-löschung) sollten die Testnutzer entfernt oder geändert werden.

