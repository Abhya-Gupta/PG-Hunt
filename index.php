<?php
session_start();
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Welcome | PG Hunt</title>

    <?php
    include "includes/head_links.php";
    ?>
    <link href="css/home.css" rel="stylesheet" />
</head>

<body>
    <?php
    include "includes/header.php";
    ?>

    <div class="banner-container">
        <h2 class="white pb-3">A Home Away From Home</h2>

        <form id="search-form" action="property_list.php" method="GET">
            <div class="input-group city-search">
                <input type="text" class="form-control input-location" id='city' name='city' placeholder="Enter your location" />
                <div class="input-group-append">
                    <button type="submit" class="btn btn-secondary">
                        <i class="fa fa-search"></i>
                    </button>
                </div>
            </div>
        </form>
    </div>

    <div class="page-container">
        <h1 class="city-heading">
            Major Locations
        </h1>
        <div class="row abc" >
            <div class="city-card-container col-md">
                <a href="property_list.php?city=Morabadi">
                    <div class="city-card">
                        <h3>MORABADI</h3>  
                    </div>
                </a>
            </div>

            <div class="city-card-container col-md">
                <a href="property_list.php?city=Bariatu">
                    <div class="city-card ">
                        <h3>BARIATU</h3> 
                    </div>
                </a>
            </div>

            <div class="city-card-container col-md">
                <a href="property_list.php?city=Namkum">
                    <div class="city-card ">
                        <h3>NAMKUM</h3> 
                    </div>
                </a>
            </div>

            <div class="city-card-container col-md">
                <a href="property_list.php?city=Main Road">
                    <div class="city-card">
                    <h3>MAIN ROAD</h3> 
                    </div>
                </a>
            </div>

            <div class="city-card-container col-md">
                <a href="property_list.php?city=Lalpur">
                    <div class="city-card">
                    <h3>LALPUR</h3> 
                    </div>
                </a>
            </div>


            <div class="city-card-container col-md">
                <a href="property_list.php?city=Ratu Road">
                    <div class="city-card">
                    <h3>RATU ROAD</h3> 
                    </div>
            </div>

        </div>
    </div>

    <?php
    include "includes/signup_modal.php";
    include "includes/login_modal.php";
    include "includes/footer.php";
    ?>

</body>

</html>
