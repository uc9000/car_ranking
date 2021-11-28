<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <ul class="navbar">
    <li><a href="index.php">Home</a></li>
<?php 
    session_start();
    if(!isset($_SESSION['username'])){
        ?>
        <li><a href="login.php">Login</a></li>
        <li><a href="signup.php">Sign Up</a></li>
        <?php 
    }else{
        ?>
        <li><a href="includes/logout.php">Log Out</a></li>
        <li><a href="addNewCarForm.php">Add New Car</a></li>
        <?php 
    }
?>
    <li><a href="aboutPage.php">About</a></li>
    </ul>
</nav>
<?php
    session_start();
    if(isset($_SESSION['username'])){ ?>
        <h3>Logged in as: <?php echo $_SESSION['username'] ?></h3>
        <?php
    }
    ?>