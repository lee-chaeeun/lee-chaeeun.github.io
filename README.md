# Stuttgarter Kataster Architektur Projekt

## Beschreibung
Das Ziel dieses Repositories ist es, eine Website zu erstellen, auf der eine Galerie von architektonischen Aspekten Stuttgarts betrachtet werden kann.

(Ein Geschenk für Künstlerfreunde, für die die Künstlerische Gestaltung der Website möglicherweise nicht ausreicht, aber ich habe mein Bestes gegeben. Vielleicht nicht das Beste, aber über dem Durchschnitt hoffentlich.)

### Das Repository ist organisiert in die Folgende Art:

Hauptseite der Website:
*index.html 

Inforomationseite der Website:
*info.html 

Fotos und entsprechender Code befinden sich hier:
*photos/photo#.html 
*photos/files/photo#.png

### Erweiterung Des Websites

Die Website kann erweitert werden, um weitere Fotos durch Bearbeiten des folgenden Codes einzubeziehen:
*index.html 

Fügen Sie einfach mehr davon hinzu und ändern Sie den Pfad zur Fotodatei, sodass er dem Foto entspricht, das Sie anzeigen möchten.
```
	<div class="container">
		<a href="photos/photo5.html"><img src="photos/files/photo5.png" alt="Photo 5" class="photo"></a>
		<a href="photos/photo6.html"><img src="photos/files/photo6.png" alt="Photo 6" class="photo"></a>
		<a href="photos/photo7.html"><img src="photos/files/photo7.png" alt="Photo 7" class="photo"></a>
		<a href="photos/photo8.html"><img src="photos/files/photo8.png" alt="Photo 8" class="photo"></a>
	</div>
```

*photos/generator.sh
```
#!/bin/bash

for i in {2..8}
do
  # create HTML file with filename "photo<i>.html"
  echo '<!DOCTYPE html>
<html>
<head>
	<title>Photo '"$i"'</title>
	<style>
		body {
			background-color: #FFFFFF;
			font-family: Arial, sans-serif;
			text-align: center;
			margin: 0;
			padding: 0;
		}
		.photo {
			width: 100%;
			max-width: 800px;
			margin: 20px auto;
		}
		.description {
			font-size: 18px;
			font-weight: bold;
			margin: 20px 0;
		}
		.back-button {
			display: block;
			position: absolute;
			top: 0;
			left: 0;
			margin: 20px;
			color: #1C1C1C;
			border: none;
			padding: 10px 20px;
			font-size: 16px;
			cursor: pointer;
			text-decoration: none;
		}
		.back-arrow {
			display: inline-block;
			vertical-align: middle;
			margin-right: 10px;
			font-size: 24px;
		}
		.back-button:hover {
			color: #1C1C1C;
			text-decoration: underline;
		}
	</style>
</head>
<body>
	<a href="../index.html" class="back-button"><span class="back-arrow">&lt;</span>BACK</a>
	
	<img src="files/photo'"$i"'.png" alt="Photo '"$i"'" class="photo">
	
	<div class="description">
		<p>ORT /// FUNKTION /// ZEIT </p>
	</div>
	
</body>
</html>' > photo"$i".html

done

```
Im obigen Code ändern Sie einfach die erste Zeile `for i in {2..8}` so, dass sie der Anzahl der von Ihnen hochzuladenden Fotos entspricht.

Führen Sie diesen Code aus, indem Sie Folgendes in Ihr Terminal eingeben: `bash generator.sh`
Dies wird weitere Dateien generieren, die Webseiten für das entsprechende Foto erstellen werden.
Laden Sie den generierten Code in den Ordner "Fotos" hoch.



