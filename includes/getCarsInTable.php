<?php
    session_start();
    $sort = "car_make";
    $order = "ASC";    

    if($_SERVER["REQUEST_METHOD"] == "POST"){
        $sort = $_POST["sort"];
        $order = $_POST["order"];
    }
?>


<div class="wrapper">
    <form action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]); ?>" method="post">
        <div class="form-group">
            <label for="engine_select">Sort by:</label>
            <select name="sort" id="sort_select" class="form-control" required>
                <option value="car_make"  <?php
                    if($sort == "car_make"){
                        echo(" selected");
                    }
                ?>>Car make</option>
                <option value="horse_pow" <?php
                    if($sort == "horse_pow"){
                        echo(" selected");   
                    }                
                ?>>Horse Power</option>
            </select>
            <label for="engine_select">order:</label>
            <select name="order" id="order_select" class="form-control" required>
                <option value="ASC"<?php
                    if($order == "ASC"){
                        echo(" selected");   
                    }                
                ?>>Ascending</option>
                <option value="DESC"<?php
                    if($order == "DESC"){
                        echo(" selected");   
                    }                
                ?>>Descending</option>
            </select>
        </div>
        <div class="form-group">
            <input type="submit" class="btn btn-primary" value="Sort">
        </div>
    </form>
</div>

<table class = "table">
    <tr>
        <th>Car make</th>
        <th>Model</th>
        <th>Engine Type</th>
        <th>Horse Power</th>
        <th>Capacity</th>
        <th></th>
        <th></th>
    </tr>

<?php
require_once ("dbh.php");

$sql = "SELECT cars.id, car_make, car_name, engine_type, horse_pow, capacity FROM cars
    JOIN engines ON engines.id=cars.engine_id ORDER BY $sort $order;";

$result = mysqli_query($link, $sql);
$rowCount = mysqli_num_rows($result);

if($rowCount > 0){
    while($row = mysqli_fetch_assoc($result)){
    ?>        
    <tr>
        <td><?php echo $row['car_make']; ?></td>
        <td><?php echo $row['car_name']; ?></td>
        <td><?php echo $row['engine_type']; ?></td>
        <td><?php echo $row['horse_pow']; ?></td>
        <td><?php echo $row['capacity'] . " dm^3"; ?></td>
        <td><a href="includes/deleteCar.php?id=<?php echo $row['id']; ?>" class="btn btn-primary btn-lg active" role="button">Delete</a></td>
    </tr>
    <?php
    }
}    
?>
</table>