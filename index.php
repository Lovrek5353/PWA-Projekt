<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="index_style.css">
    <title>Franffurter Allgemeine</title>
    <script type="text/javascript">
            function Clicked(x){
                window.location.replace('article.php?id='+x);    
            }
        </script>
</head>
<body>
    <ul>
        <li><a href="index.php">HOME</a></li>
        <li><a href="#">POLITIK</a></li>
        <li><a href="#">SPORT</a></li>
        <li><a href="login.php">ADMINISTRACIJA</a></li>
    </ul>
    <h1>Franffurter Allgemeine</h1>
    <aside>
        <hr size="50">
        <h3 style="margin-bottom: 500px;">SPORT</h3>
        <hr size="50">
        <h3>POLITIK</h3>
    </aside>
    <section>
        <?php
                $dbc=mysqli_connect('localhost', 'root', '', 'project') or 
                die('Error connecting to MySQL server ' . mysqli_connect_error());
                $query=mysqli_query($dbc, "SELECT id, naslov, slika, sazetak FROM news WHERE kategorija='sport'" );
                $i=0;
                while($row=mysqli_fetch_assoc($query)){
                    $id=$row['id'];
                    $naslov=$row['naslov'];
                    $slika=$row['slika'];
                    $sazetak=$row['sazetak'];
                    switch($id){
                        case "1":
                            $img="dina-levacic-gibraltar_PIwSHMp.webp";
                            break;
                        case "2":
                            $img="2022-06-18t162136z-182162715-up1ei6i19fzjb-rtrmadp-3-handball-champions_UVWfh8p.webp";
                            break;
                        case "3":
                            $img="pxl-180622-94125228.webp";
                            break;
                        default: 
                            $img="missing-image.png";
                            break;
                    }
                    echo '
                            <article onclick=Clicked('.$id.') style="margin-left:100px; width=500px; height: 500px; float:left; margin-bottom: 100px;">
                                <img src="'.$img.'" alt="Article image" class="center" style="width: 450px; height: 350px;">
                                <h5 style="text-align: center">'.$naslov.'</h5>
                                <p style="text-align: center">'.$sazetak.'</p>
                            </article>
                    ';

                    $i++;
                    if($i >= 3){
                        break;
                    }
                }
                mysqli_close($dbc)
        ?>
    </section>
    <br>
    <section>
    <?php
                $dbc=mysqli_connect('localhost', 'root', '', 'project') or 
                die('Error connecting to MySQL server ' . mysqli_connect_error());
                $query=mysqli_query($dbc, "SELECT id, naslov, slika, sazetak FROM news WHERE kategorija='politika'" );
                $i=0;
                while($row=mysqli_fetch_assoc($query)){
                    $id=$row['id'];
                    $naslov=$row['naslov'];
                    $slika=$row['slika'];
                    $sazetak=$row['sazetak'];
                    switch($id){
                        case "4":
                            $img="pxl-170622-94114090.webp";
                            break;
                        case "5":
                            $img="fvdatxpxsamu0lf.webp";
                            break;
                        case "6":
                            $img="21-10-19-sokol-portrait-str-41.webp";
                            break;
                        default: 
                            $img="missing-image.png";
                            break;
                    }
                    echo '
                            <article onclick=Clicked('.$id.') style="margin-left:100px; width=500px; height: 500px; float:left;">
                                <img src="'.$img.'" alt="Article image" class="center" style="width: 450px; height: 350px;">
                                <h5 style="text-align: center">'.$naslov.'</h5>
                                <p style="text-align: center">'.$sazetak.'</p>
                            </article>
                    ';

                    $i++;
                    if($i >= 3){
                        break;
                    }
                }
                mysqli_close($dbc)
        ?>
    </section>
    <footer>
        <h2>Franffurter Allgemeine</h2>
    </footer>
</body>
</html>