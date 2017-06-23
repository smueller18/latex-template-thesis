# Latex-Template für Abschlussarbeiten
Angepasst an die Richtlinien für die Fakultät für Wirtschaftswissenschaften an der Hochschule Karlsruhe

Wenn ihr die Vorlage nutzt, dürft ihr dem Projekt gerne ein Stern geben ;-)

## Contribution
Dank an [Patrick Wiener](https://github.com/wipatrick) für die Erstellung des [Basistemplates](https://github.com/wipatrick/latex-vorlage-thesis).

Wenn jemand noch gute Beispiele für das Template hat, dürft ihr diese gerne über ein Pull-Request einreichen.

## Vorschau
Eine Vorschau des PDFs wird in unregelmäßigen Abständen per [Release](https://github.com/smueller18/latex-template-thesis/releases/latest) veröffentlicht.

## Inhalt

| Abschnitt | Feature | Beschreibung |
|---|---|---|
| | Aufbau | Allgemeiner Aufbau einer wissenschaftlichen Arbeit |
| | Verzeichnisse | Inhalts-, Tabellen-, Abbildungs-, Algorithmus-, Abkürzungs-, Symbol-, Literatur-Verzeichnis und Glossar |
| 2.1 | Abkürzungen | Abkürzungen |
| 2.2 | Formeln | Verwendung von Formeln |
| 2.3 | Tabelle | Vorlage zur Erstellung einer Latex-Tabelle inkl. Tabellenfußnoten |
| 2.4 | Abbildung | Vorlage zum Einfügen einer Abbildung |
| 2.5 | Schriften | Verwendung verschiedener Schriftarten |
| 2.6 | Algorithmen | Vorlage zum Einfügen von Pseudo-Code |
| 2.7 | Zitieren | Vorlage zur Referenzierung von Quellenangaben im [natdin-Stil](http://be-jo.net/2013/08/latex-welchen-bibliographystyle-wahlen/#natdin) |
| 2.8 | Quelltext | Vorlage zum Einfügen von Quelltext |
| | Anhang | Verwendung des Anhangs |

Eine Erläuterung der einzelnen Inhalte ist gegebenenfalls in den Tex-Dokumenten selbst zu finden.

## Projektstruktur

Das Projekt ist so präpariert, dass die produzierte Ausgabe von Tex streng vom Rest des Projektes getrennt wird, um eine maximale Übersicht zu gewährleisten. Daher werden alle Ausgabedateien bei Nutzung der vorkonfigurierten ausführbaren Skripten in dem Verzeichnis `output` erzeugt.

| Pfad | Inhalt |
|---|---|
| 00-praeambel/ | Paketinitialisierung und Einstellungen |
| 01-vorspann/ | Eintragungen im Glossar, Deckblatt, Kurzfassung, Danksagung |
| 02-inhalt/ | Inhaltlicher Teil der Thesis |
| 03-anhang/ | Anhang der Thesis |
| 04-nachspann/ | Eidesstattliche Erklärung |
| bilder/ | Sammlung aller Bilder |
| bin/ | Ausführbare Dateien zum Erzeugen des PDFs |
| output/ | Speicherung aller Dateien die beim Erzeugen des PDFs entstehen udn PDF selbst |
| skripte/ | Sammlung von Skripten zum Erstllen von Grafiken |
| sourcecode/ | Sammlung von Quellcodedateien |
| literatur.bib | Literaturquellen |
| natdin.bst | Zitierstil |
| thesis.tex | Hauptdokument der Thesis |

## Code Styling
### Label
Labels werden mir `\label{label:name-des-labels}` defniert und mit `ref{label:name-des-labels}` referenziert. Für die verschiedenen Umgebungen sollten folgende Abkürzungen für das Label gewählt werden:

| Umgebung | label | Name |
|---|---|---|
| chapter | chap | Kapitel |
| section | sec | Abschnitt |
| subsection | ssec | Unterabschnitt |
| subsubsection | sssec | Unterunterabschnitt |
| figure | fig | Abbildung |
| table | tbl | Tabelle |
| code | lst | Listing |
| algorithm | alg | Algorithmus |
| equation | eq | Gleichung |


## Generierung des PDF Dokumentes über die Konsole
###### Linux
```bash
bin/build-complete.sh thesis
```

###### Windows
```
bin\build-complete.bat thesis
```


## Entwicklungsumgebung

### Tex Distribution
TexLive 2016

##### Installation

###### Linux
```bash
sudo apt install -y texlive-full
```

###### Windows
Installationsdatei unter https://www.tug.org/texlive/acquire-netinstall.html herunterladen und installieren.

### Editoren
Für eine plattformübergreifende Erstellung eines Tex-Dokumentes sollte ein bestimmter Style des Codes eingehalten werden, vor allem damit der Code bei unterschiedlichen Editorenfensterbreiten flüssig lesbar ist.
Es werden folgende Einstellungen empfohlen:
- Automatischer Zeilenumbruch aktivieren (Soft Wrap)
- Tabs durch 2 Leerzeichen ersetzen (Soft Tabs)

Zur Übersicht sind hier verschiedene Editoren aufgelistet

| | Atom<sup>[1](#1)</sup> | TeXstudio |
| --- | --- | --- |
| Übersicht Latex Funktionen | - | + |
| Fehlerdebugging | - | + |
| Sync-Tex Unterstützung<sup>[2](#2)</sup> | - | + |
| Autovervollständigung | 0 | + |
| Nachtmodus | + | - |
| Mehrsprachenunterstützung | + | - |
| Git Integration | + | - |
| Unterstütze Platformen | Linux, Windows, MAC | Linux, Windows, MAC |

Für Anfänger ist TeXstudio die bessere Wahl, da dort sämtliche Latex Funktionen zur Verfügung stehen und das Fehlerdebugging sehr komfortabel ist. Dahingegen ist Atom für Fortgeschrittene geeignet, die über das fehlende Fehlerdebugging und eingeschränkten Shortcuts hinwegsehen können.

<a name="1">1</a>: Mit Erweiterung [atom-latex](https://atom.io/packages/latex) und [atom-language-latex](https://atom.io/packages/language-latex).<br>
<a name="2">2</a>: Synchronisation zwischen Quellcode und PDF Ausgabe.

#### Atom
Die Erweiterung [atom-latex](https://atom.io/packages/latex) stellt die Funktionalität bereit, eine PDF-Datei zu erzeugen. Dafür muss sie an die Umgebung des Templates angepasst werden.
Am einfachsten ist die Nutzung einer `*.latexcfg`-Datei, welche im Hauptordner dieses Projektes liegt. Für Atom wurden jeweils für Linux und Windows eine Konfigurationsdatei zum automatischen Übernehmen des Latexbuild-Aufruf aufgenommen. Bei Nutzung von Linux ist die Datei `.linux.latexcfg` in `.latexcfg` umzubenennen, bei der Nutzung von Windows ist die Datei `.windows.latexcfg` in `.latexcfg` umzubenennen.<br>
Bei der Nutzung von mehreren Betriebssystemen, ist eine Nutzung der `.latexcfg` nicht sinnvoll, da ansonsten bei jedem Wechsel des Betriebssystem die Dateien umbenannt werden müssten. In einem solchen Fall muss die Eigenschaft `Custom Toolchain commands` in jeder Atominstanz gesetzt werden mit:

| Linux | Windows |
|---|---|
| `bin/build-complete.sh %DOC` | `bin\\build-complete.bat %DOC` |

Eine Änderung der anderen Compilereinstellungen ist damit nicht mehr nötig.

##### Installation
###### Linux
```bash
sudo add-apt-repository -y ppa:webupd8team/atom
sudo apt update
sudo apt install -y atom
apm install language-nginx
apm install language-latex
```

###### Windows
Installationsdatei unter https://atom.io/ herunterladen und installieren.
```bash
apm install language-nginx
apm install language-latex
```

### TeXstudio

##### Installation
###### Linux
```bash
sudo apt install -y TeXstudio
```

###### Windows
Installationsdatei unter http://www.TeXstudio.org/ herunterladen und installieren.

### Skripting
Mit Python-Skripten können dynamische Inhalte erstellt werden, wie z.B. Plots, die direkt als PDF-Datei gespeichert werden können.

Um Pythonskripte ausführen zu können muss Python installiert sein. Für Plots wird das Modul `matplotlib` benötigt.

Die Skripte können in den dafür vogesehenen Ordner `skripte` gespeichert werden.
In der Datei `skripte/__init__.py` können globale Standardeinstellungen gespeichert werde, die in jedem Skript importiert werden können.

Die einzelnen Skripte können dann über die Kommandozeile gestartet werden:
```bash
python skripte/mein_skript.py
```
