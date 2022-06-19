<!DOCTYPE html>
<html>
<body>

<h2>Register</h2>

<form name="regForm" action="" method="post" onsubmit="return validateRegForm()">
  <label for="fname">Username:</label><br>
  <input type="text" id="username" name="username"><br>
  <label for="lname">Password:</label><br>
  <input type="password" id="username" name="password"><br><br>
  <input type="submit" value="Submit">
</form> 

<script type="text/javascript">
        function validateRegForm(){
            var slanje_forme=true;
            var username=document.forms["regForm"]["username"].value;
            var password=document.forms["regForm"]["password"].value;
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

if(isset($username) and isset($password)){
    $hashed_password=password_hash($password, CRYPT_BLOWFISH);

    $dbc=mysqli_connect('localhost', 'root', '', 'project') or 
    die('Error connecting to MySQL server ' . mysqli_connect_error());
    
    $sql="INSERT INTO korisnik (username, password) VALUES(?, ?)";
    $stmt=mysqli_stmt_init($dbc);
    if(mysqli_stmt_prepare($stmt,$sql)){
        mysqli_stmt_bind_param($stmt, 'ss', $username, $hashed_password);
        
        mysqli_stmt_execute($stmt);
    }
    mysqli_close($dbc);
}
else{
    echo "Error";
}

?>
