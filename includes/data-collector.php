<?php

/* Muss vor dem Gebrauch von $_SESSION ausgeführt werden.
Am Besten ganz am Anfang einer Webseite, bevor irgendwelche
ander PHP-Skripte ausgeführt werden. */

session_start();

// Hilfswerkzeuge laden
include 'tools.php';

if (isset($_POST["lastPageID"])) {

    // Hole den Namen der letzen Seite aus $_POST "lastPageID".
    $lastPageID = $_POST["lastPageID"];

    // Speichere alle Daten des letzen Posts mit den Namen $lastPageID in der Session.
    $_SESSION[$lastPageID] = $_POST;
}

// DEVONLY: Gib die aktuelle $_SESSION in die Seite aus.
prettyPrint($_SESSION);

/* Während der Entwicklung braucht man das zum anzeigen 
auf der Feedback Seite, danach bitte auskommentieren oder löschen. */

?>