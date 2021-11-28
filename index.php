<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">    
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link href="style.css" rel="stylesheet" type="text/css" />
    <style>
        body{ font: 14px sans-serif; }
        .wrapper{ width: 90%; padding: 20px; margin: auto;}
    </style>
    <title>Cars Home</title>
</head>
<header>
    <?php
        require_once ('navbar.php');
    ?>
</header>
<body>
    <div class="wrapper">
        <?php        
            session_start();
            require_once ("includes/dbh.php");
            if(isset($_SESSION['loggedin']) && $_SESSION['loggedin'] == true){
                require_once ("includes/getCarsInTable.php");
            }else{
                header("location: login.php");
            }            
            
        ?>
    </div>
</body>
</html>