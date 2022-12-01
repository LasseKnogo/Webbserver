<style>
    <?php include 'main.css'; ?><?php include 'inlamning2.html'; ?><?php include 'inlamning3.html'; ?>
</style>

<?php
$target_dir = "uploads/";
$target_file = $target_dir . basename($_FILES["fileToUpload"]["name"]);
$uploadOk = 1;
$imageFileType = strtolower(pathinfo($target_file, PATHINFO_EXTENSION));

if (isset($_POST["submit"])) {
    $check = getimagesize($_FILES["fileToUpload"]["tmp_name"]);
    if ($check !== false) {
        echo "Filen är en bild bra jobbat! " . $check["mime"] . ".";
        $uploadOk = 1;
    } else {
        echo "Filen är inte en bild!";
        $uploadOk = 0;
    }
}
?>



<?php
$myfile = fopen("data.txt", "w") or die("Unable to open file!");
$txt = "[fileToUpload]\n";
fwrite($myfile, $txt);
$txt = "Bild1\n";
fwrite($myfile, $txt);
fclose($myfile);
?>

<?php
$fp = fopen('data.txt', 'a');
fwrite($fp, ' this is additional text ');
fwrite($fp, 'appending data');
fclose($fp);


?>