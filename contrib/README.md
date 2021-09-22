# Automatisches Update der Kapselring-Informationen von Github mit systemd

## Installation

Zuerst muss das Script sync.sh in das Verzeichnis /usr/local/bin kopiert werden und ausführbar gemacht werden:
```
cp sync.sh /usr/local/bin/
chmod +x /usr/local/bin/sync.sh
```

Die beiden Dateien kapselring.service und kapselring.timer müssen nun auf dem System in das Verzeichnis vom systemd kopiert werden:
```
cp kapselring.service kapselring.timer /etc/systemd/system/
```

Nun muss in der Datei kapselring.service in der Zeile ExecStart weiter hinten das Zielverzeichnis, wo Deine Gemini-Dateien liegen und die Zeilennummer, in welcher der Link zu Deiner Kapsel ist, angepasst werden. Damit wird Deine eigene Zeile aus der Datei entfernt, weil Du ja nicht auf Dich selbst verweisen willst.

Nun können wird das Ganze mal ausprobieren, indem wir den Service händisch starten:
```
systemctl start kapselring.service
```

Der Service wird nun einmalig ausgeführt und in Deiner Kapsel sollte jetzt die Datei vom Github liegen. Kontrolliere nochmal, ob auch die richtige Zeile aus der Date entfernt wurde.

Wenn alles funktioniert hat, kannst Du jetzt das ganze regelmäßig und automatisch ausführen lassen. In der kapselring.timer-Datei ist »daily« eingestellt, es wäre aber auch »weekly« sinnvoll, wenn man nicht so oft updaten möchte.

Nun kann die ganze Mechanik automatisiert werden:
```
systemctl enable kapselring.service
systemctl enable kapselring.timer
systemctl start kapselring.timer

Das war's. Viel Spaß im Geminispace!
