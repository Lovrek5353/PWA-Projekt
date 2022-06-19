<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="article_style.css">
    <title>Franffurter Allgemeine</title>
</head>
<body>
    <ul>
        <li><a href="index.php">HOME</a></li>
        <li><a href="#">POLITIK</a></li>
        <li><a href="#">SPORT</a></li>
        <li><a href="admin.php">ADMINISTRACIJA</a></li>
    </ul>
    <h1>Franffurter Allgemeine</h1>
    <hr>
    <?php
        $articleID=$_GET['id'];
        $dbc=mysqli_connect('localhost', 'root', '', 'project') or 
        die('Error connecting to MySQL server ' . mysqli_connect_error());
        
        $query = "SELECT kategorija, naslov, slika, tekst, sazetak FROM news WHERE id = '$articleID'"; //zamjeni za article id
        
        $result = $dbc->query($query);
        $row = $result->fetch_assoc();
        $cat = $row['kategorija'];
        $head = $row['naslov'];
        $img = $row['slika'];
        $txt = $row['tekst'];
        $sTxt = $row['sazetak'];

        echo '<h1>'.$head.'</h1>';
        echo '<br>';
        switch($articleID){
            case "1":
                echo '<img src="dina-levacic-gibraltar_PIwSHMp.webp" alt="Article image" class="center">';
                break;
            case "2":
                echo '<img src="2022-06-18t162136z-182162715-up1ei6i19fzjb-rtrmadp-3-handball-champions_UVWfh8p.webp" alt="Article image" class="center">';
                break;
            case "3":
                echo '<img src="pxl-180622-94125228.webp" alt="Article image" class="center">';
                break;
            case "4":
                 echo '<img src="pxl-170622-94114090.webp" alt="Article image" class="center">';
                 break;
            case "5":
                echo '<img src="fvdatxpxsamu0lf.webp" alt="Article image" class="center">';
                break;
            case "6":
                echo '<img src="21-10-19-sokol-portrait-str-41.webp" alt="Article image" class="center">';
                break;
            default: 
                echo '<img src="missing-image.png" alt="Article image" class="center">';
                break;
        }
        echo '<br>';
        echo '<h3 style="text-align: center;">'.$sTxt.'</h3>';
        echo '<br>';
        echo '<p>'.$txt.'</p>';
        mysqli_close($dbc);
    ?>
    
    <footer>
        <h2>Franffurter Allgemeine</h2>
    </footer>
</body>
</html>