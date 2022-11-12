# MZU Slide Generator

## Ziel

## Verwendung

### Repository clonen

1. Downloade das Repository

Um den MZU-Slide-Generator zu verwenden, musst du die Dateien aus diesem Repository auf deinen PC herunterladen. 

![image](git_plots/screenshot_repo_download.png)

2. Unzippe die heruntergeladene zip-Datei und öffne den erzeugten Ordner *MZU_Slide_Generator-main*. 

![image](git_plots/screenshot_repo_download.png)

Der Inhalt des Ordners sollte wie folgt aussehen:

![image](git_plots/screenshot_repo_download_3.png)

3. Innerhalb von *MZU_Slide_Generator-main* erstelle zwei Ordner namens *data* und *plots*

![image](git_plots/screenshot_repo_download_4.png)

4. Lade die Ergebnisse der Umfrage herunter, die mit der Vorlage *MZU_Vorlage_MZU_Generator* erstellt wurde (https://docs.google.com/forms/d/1H9aMkMYazCJUuGxSp_PbZURgpABJs_KrQUux8jZMuRg/edit), in den Ornder *data* als *csv Datei* herunter. Verwende den Dateinamen *umfrage.csv* (Hintergrund: Das Script *MZU_Slide_Generator.Rmd* erwartet die Umfrage-Antworten in einer Datei namens *umfrage.csv*) 

![image](git_plots/screenshot_umfrage_download.png)

![image](git_plots/screenshot_umfrage_download.png)

5. Öffne das R-Projekt *MZU_Slide_Generator.Rproj* 

![image](git_plots/screenshot_rproj.png)

6. Öffne *MZU_Slide_Generator.Rmd* innerhalb von RStudio bzw. des Projekts *MZU_Slide_Generator.Rproj* 

![image](git_plots/screenshot_open_rmd_script.png)

![image](git_plots/screenshot_open_rmd_script_2.png)

7. Erzeuge die Ergebnis-Präsentation

- Nach den SChritten 1-6 sollte RStutio wie folt aussehen:

![image](git_plots/screenshot_slide_generation.png)

- Ändere den Titel der Präsentation

![image](git_plots/screenshot_slide_generation_2.png)

- Erzeuge die Slides durch einen Klick auf *Knit*

![image](git_plots/screenshot_slide_generation_3.png)

- Die erzeugten Slides werden unter *MZU_Slide_Generator.html* abgespeichert

![image](git_plots/screenshot_generated_html.png)

- Die fertige Präsentation öffnet sich dur Doppel-Klick auf *MZU_Slide_Generator.html* in deinem Browser 

*MZU_Slide_Generator.html_2*






