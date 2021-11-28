<?php
    session_start();
    require_once "includes/dbh.php";
    
    if($_SERVER["REQUEST_METHOD"] == "POST"){
        $car_make = $_POST["car_make"];
        $car_name = $_POST["car_name"];
        $engine_id = $_POST["engine_id"];
        
        $sql = "INSERT INTO cars (car_make, car_name, engine_id) values ('$car_make', '$car_name', '$engine_id');";

        mysqli_query($link, $sql);
    }
?>
 
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Add car</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link href="style.css" rel="stylesheet" type="text/css" />
    <style>
        body{ font: 14px sans-serif; }
        .wrapper{ width: 360px; padding: 20px; }
    </style>
</head>
<header>
    <?php
        require_once ('navbar.php');
    ?>
</header>
<body>
    <div class="wrapper">
        <h2>Specify your car</h2>

        <form action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]); ?>" method="post">
            <div class="form-group">
                <label>Car make</label>
                <input type="text" name="car_make" class="form-control" required>
            </div>    
            <div class="form-group">
                <label>Car model</label>
                <input type="text" name="car_name" class="form-control" required>
            </div>
            <div class="form-group">
                <label for="engine_select">Select engine</label>
                <select name="engine_id" id="engine_select" class="form-control" required>
                <?php                
                    require_once "includes/getEngineSelectionMenu.php";
                ?>
                </select>
            </div>
            <div class="form-group">
                <input type="submit" class="btn btn-primary" value="Add">
            </div>
        </form>
    </div>
</body>
</html>