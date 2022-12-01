<style>
    <?php include 'main.css'; ?>
</style>


<?php
$huvudstader = array(
    "Sverige" => "Stockholm",
    "Finland" => "Helsingfors",
    "Danmark" => "Köpenhamn",
    "Norge" => "Oslo",
    "Island" => "Reykjavik",
    "Estland" => "Tallinn",
    "Lettland" => "Riga",
    "Litauen" => "Vilnius"
);


echo "<table>";

foreach ($huvudstader as $x => $x_value) {

    echo "<tr>";
    echo "<td>$x</td>";
    echo "<td>$x_value</td>";
    echo "</tr>";
}

echo "</table>"




?>


<?php

$larare = array(
    "Webbserverprogrammering" => "Holger",
    "Matematik" => "Anton",
    "Webbutveckling" => "Martin",
    "Svenska" => "Anna-Karin",
    "Psykologi" => "Göran",
    "Historia" => "Tommy",
    "Programmering" => "Johannes",
    "Bild" => "Malin"
);


echo "<table>";

foreach ($larare as $x => $x_value) {

    echo "<tr>";
    echo "<td>$x</td>";
    echo "<td>$x_value</td>";
    echo "</tr>";
}

echo "</table>"







?>