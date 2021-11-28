<?php
session_start();
require_once ("dbh.php");
$sql = "SELECT * FROM engines";
$result = mysqli_query($link, $sql);
$rowCount = mysqli_num_rows($result);
$selectedId = $_GET['id'];


if($rowCount > 0){
    while($row = mysqli_fetch_assoc($result)){
    ?>      
        <option value=<?php
        echo $row['id'];
        if ($row['id'] == $selectedId){
            echo(" selected");
        }
        ?> > <?php echo($row['engine_type'] . " " . $row['capacity'] . " " . $row['horse_pow'] . "hp"); ?> </option>
    <?php
    }
}
    
?>
