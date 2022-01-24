# Documents

I prefer to scan my entire post incoming via iphone [Readdle - Scanner Pro](https://apps.apple.com/de/app/scanner-pro-dokumente-scannen/id333710667) to my cloud and organize my personal document collection in following structure:

- **Arbeit und  Beruf**
  Zeugnisse, Studienunterlagen, Diplome, Arbeits- und Ausbildungsverträge, Fortbildungsmaßnahmen, Arbeitsverträge, Lohn- und Gehaltsabrechnungen, Beurteilungen

- **Fahrzeuge**
  Fahrzeugpapiere, Unterlagen Kfz-Steuer, Rechnungen Reparatur, Belege zu Unfällen, Mitgliedschaften Automobilclub, TÜV- und ASU-Belege

- **Finanzen und Steuern**
  Steuererklärungen, Steuerbescheide, Kontoeröffnungen, Kontoauszüge, Freistellungsaufträge, Vermögenswirksame Leistungen, Kreditverträge, Aktien, Geldanlagen

- **Gesundheit**
  Krankenversicherung, Schreiben Krankenkasse, Impf- oder Mutterpass, Auslandskrankenversicherung, Pflegeversicherung, Rechnungen zu Behandlungen, Ärztliche Gutachten

- **Persönliche Dokumente**
  Heirats- und Geburtsurkunden, Familienstammbuch, Reisepass, Meldebestätigungen, Lebenslauf, Testament, Patientenverfügung, Vorsorgevollmacht, Meldungen zur Sozialversicherung

- **Versicherungen**
  Versicherungsverträge jeder Art, Versicherungsnachträge, Unterlagen zur privaten und gesetzlichen Rentenversicherung

- **Wohnen oder Immobilien**
  Mietverträge, Belege für Kaution, Nebenkostenabrechnungen, Verträge mit Versorgungsträgern (Strom, Gas, Wasser) und Telefonanbietern, Rundfunkbeiträge, Kaufbelege Wohnungseinrichtung und Elektrogeräte, Notarielle Verträge und Urkunden zum Eigenheim bzw. zur   Eigentumswohnung,  Grundbuchauszug, Rechnungen zu Reparaturen und Modernisierung

- **Kinder**
  Für jedes Kind wird ein Ordner mit folgenden Dokumenten angelegt:
Geburtsurkunde, Impfausweis, Zeugnisse, Ausbildungsnachweise, Hobby, Mitgliedschaften in Vereinen

- **Hobby, Freizeit und Sport**
  Verträge zu Mitgliedschaften im Fitnessstudios oder Vereinen, Kaufbelege für Sportgeräte oder –Ausrüstung

<details>
<summary>Script for create folder structure in terminal...</summary>
<p>

```bash
mkdir -p "Arbeit und  Beruf/Zeugnisse"
mkdir -p "Arbeit und  Beruf/Studienunterlagen"
mkdir -p "Arbeit und  Beruf/Diplome"
mkdir -p "Arbeit und  Beruf/Arbeits- und Ausbildungsverträge"
mkdir -p "Arbeit und  Beruf/Fortbildungsmaßnahmen"
mkdir -p "Arbeit und  Beruf/Arbeitsverträge"
mkdir -p "Arbeit und  Beruf/Lohn- und Gehaltsabrechnungen"
mkdir -p "Arbeit und  Beruf/Beurteilungen"

mkdir -p "Fahrzeuge/Fahrzeugpapiere"
mkdir -p "Fahrzeuge/Unterlagen Kfz-Steuer"
mkdir -p "Fahrzeuge/Rechnungen Reparatur"
mkdir -p "Fahrzeuge/Belege zu Unfällen"
mkdir -p "Fahrzeuge/Mitgliedschaften Automobilclub"
mkdir -p "Fahrzeuge/TÜV- und ASU-Belege"

mkdir -p "Finanzen und Steuern/Steuererklärungen"
mkdir -p "Finanzen und Steuern/Steuerbescheide"
mkdir -p "Finanzen und Steuern/Kontoeröffnungen"
mkdir -p "Finanzen und Steuern/Kontoauszüge"
mkdir -p "Finanzen und Steuern/Freistellungsaufträge"
mkdir -p "Finanzen und Steuern/Vermögenswirksame Leistungen"
mkdir -p "Finanzen und Steuern/Kreditverträge"
mkdir -p "Finanzen und Steuern/Aktien"
mkdir -p "Finanzen und Steuern/Geldanlagen"

mkdir -p "Gesundheit/Krankenversicherung"
mkdir -p "Gesundheit/Schreiben Krankenkasse"
mkdir -p "Gesundheit/Impf- oder Mutterpass"
mkdir -p "Gesundheit/Auslandskrankenversicherung"
mkdir -p "Gesundheit/Pflegeversicherung"
mkdir -p "Gesundheit/Rechnungen zu Behandlungen"
mkdir -p "Gesundheit/Ärztliche Gutachten"

mkdir -p "Persönliche Dokumente/Heirats- und Geburtsurkunden"
mkdir -p "Persönliche Dokumente/Familienstammbuch"
mkdir -p "Persönliche Dokumente/Reisepass"
mkdir -p "Persönliche Dokumente/Meldebestätigungen"
mkdir -p "Persönliche Dokumente/Lebenslauf"
mkdir -p "Persönliche Dokumente/Testament"
mkdir -p "Persönliche Dokumente/Patientenverfügung"
mkdir -p "Persönliche Dokumente/Vorsorgevollmacht"
mkdir -p "Persönliche Dokumente/Meldungen zur Sozialversicherung"

mkdir -p "Versicherungen/Versicherungsverträge"
mkdir -p "Versicherungen/Versicherungsnachträge"
mkdir -p "Versicherungen/Unterlagen Rentenversicherung"

mkdir -p "Wohnen oder Immobilien/Mietverträge"
mkdir -p "Wohnen oder Immobilien/Belege für Kaution"
mkdir -p "Wohnen oder Immobilien/Nebenkostenabrechnungen"
mkdir -p "Wohnen oder Immobilien/Verträge mit Versorgungsträgern und Telefonanbietern"
mkdir -p "Wohnen oder Immobilien/Rundfunkbeiträge"
mkdir -p "Wohnen oder Immobilien/Kaufbelege Wohnungseinrichtung und Elektrogeräte"
mkdir -p "Wohnen oder Immobilien/Notarielle Verträge und Urkunden"
mkdir -p "Wohnen oder Immobilien/Grundbuchauszug"
mkdir -p "Wohnen oder Immobilien/Rechnungen"

mkdir -p "Kinder/Geburtsurkunde"
mkdir -p "Kinder/Impfausweis"
mkdir -p "Kinder/Zeugnisse"
mkdir -p "Kinder/Ausbildungsnachweise"
mkdir -p "Kinder/Hobby"
mkdir -p "Kinder/Vereine"

mkdir -p "Hobby, Freizeit und Sport/Verträge"
mkdir -p "Hobby, Freizeit und Sport/Kaufbelege"
```

</p>
</details>

Source: [sos-buerodienste](https://sos-buerodienste.de/anleitung-papiere-sortieren/)

