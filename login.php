<!DOCTYPE html>
<html>
<body>

<h2>Login</h2>

<form name="loginForm" action="" method="post" onsubmit="return validateLoginForm()">
  <label for="fname">Username:</label><br>
  <input type="text" id="username" name="username"><br>
  <label for="lname">Password:</label><br>
  <input type="password" id="username" name="password"><br><br>
  <input type="submit" value="Submit">
</form> 

<script type="text/javascript">
        function validateLoginForm(){
            var slanje_forme=true;
            var username=document.forms["loginForm"]["username"].value;
            var password=document.forms["loginForm"]["password"].value;
            if(username.lenght==0){
                slanje_forme=false;
            }
            if(password.lenght==0){
                slanje_forme=false;
            }
            if(slanje_forme!=true){
                event.preventDefault();
            }
        }
</script>
</body>
</html>

<?php
$username=$_POST['username'];
$password=$_POST['password'];
$hashed_password=password_hash($password, CRYPT_BLOWFISH);

if(isset($username)and isset($password)){
    $dbc=mysqli_connect('localhost', 'root', '', 'project') or 
    die('Error connecting to MySQL server ' . mysqli_connect_error());
    $query = "SELECT * FROM korisnik";
    $result = $dbc->query($query);
    $temp=false;
    if($result){
        while($row=mysqli_fetch_array($result)){
            if($row['username']==$username and $row['password']==$hashed_password){
                $temp=true;
            }
            else{
                $temp=false;
            }
        }
        if($temp==true){
            echo 'Prijava je uspješna';
            echo "<script>location.replace('admin.php);</script>";
        }
        else{
            echo 'Prijava nije uspješna';
            echo "<script>location.replace('registration.php');</script>";
        }
    }
    mysqli_close($dbc);
}
else{
    echo "Error";
}


?>