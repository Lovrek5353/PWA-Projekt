<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="admin_style.css">
    <title>Franffurter Allgemeine</title>
    <script type="text/javascript">
        function validateForm(){
            var slanje_forme=true;
            var naslov=document.forms["newsForm"]["title"].value;
            var sadržaj=document.forms["newsForm"]["about"].value;
            var tekst=document.forms["newsForm"]["content"].value;
            var slika=document.forms["newsForm"]["photo"].value;
            var arhiva=document.forms["newsForm"]["archive"].value;
            var kategorija=document.forms["newsForm"]["category"].value;
            if(naslov.length < 5 || naslov.length >100){
                slanje_forme=false;
            }
            if(category.length ==0){
                slanje_forme=false;
            }
            if(image.length==0){
                slanje_forme=false;
            }
            if(sadržaj.length==0 ||sadržaj.length>150){
                slanje_forme=false;
            }
            if(tekst.length==0){
                slanje_forme=false;
            }
            if(slanje_forme!=true){
                event.preventDefault();
            }
        }
</script>
</head>
<body>
    <ul>
        <li><a href="index.php">HOME</a></li>
        <li><a href="">POLITIK</a></li>
        <li><a href="">SPORT</a></li>
        <li><a href="admin.php">ADMINISTRACIJA</a></li>
    </ul>
    <h1>Franffurter Allgemeine</h1>
    <hr>
    <form name="newsForm" action="" method="Post" onsubmit="return validateForm()">
        <div>
            <label for="title">Naslov vijesti</label>
            <br>
            <input type="text" name="title">
            <br>
        </div>
        <div>
            <label for="about">Kratki sadržaj vijesti (do 50 znakova)</label>
            <br>
            <textarea name="about" cols="30" rows="10"></textarea>
            <br>
        </div>
        <div>
            <label for="content">Sadržaj vijesti</label>
            <br>
            <textarea name="content" cols="30" rows="10"></textarea>
            <br>
        </div>
        <div>
            <label for="picture">Slika: </label>
            <br>
            <input type="file" accept="image/jpg,image/gif" name="photo">
            <br>
        </div>
        <div>
            <label for="category">Kategorija vijesti</label>
            <br>
            <select name="category">
                <option value="sport">Sport</option>
                <option value="politika">Politika</option>
            </select>
            <br>
        </div>
        <div>
            <label>Spremiti u arhivu</label>
            <br>
            <input type="checkbox" name="archive">
        </div>
        <div>
            <button type="reset" value="Poništi">Poništi</button>
            <button type="submit" value="Prihvati">Prihvati</button>
        </div>
    </form>
</body>
</html>

<?php
$title=$_POST['title'];
$about=$_POST['about'];
$content=$_POST['content'];
$picture=$_POST['picture'];
$category=$_POST['category'];
$archive=$_POST['archive'];
$datum=date("Y.m.d");
$dbc=mysqli_connect('localhost', 'root', '', 'project') or 
die('Error connecting to MySQL server ' . mysqli_connect_error());
$query="INSERT INTO news(datum, naslov, sazetak, tekst, slika, kategorija, arhiva)
        VALUES('$datum', '$title', '$about', '$content', '$picture', '$category', '$archive')";
$result=mysqli_query($dbc, $query) or
die('Error querying database.');
mysqli_close($dbc)
?>