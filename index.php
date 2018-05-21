<?php include './header.php';?>

    <!-- Page Content -->
    <div class="container">

      <div class="row">

        <div class="col-lg-2">

          <h2 class="my-3">Categories</h2>
          <div class="list-group">
            <a href="#" class="list-group-item">Computers</a>
            <a href="#" class="list-group-item">Phones</a>
            <a href="#" class="list-group-item">Accesories</a>
          </div>

          <h2 class="my-3">Sort By</h2>
          <div class="list-group">
            <a href="#" class="list-group-item">Price</a>
            <a href="#" class="list-group-item">Alfabetical Order</a>
            <a href="#" class="list-group-item">Company</a>
          </div>
        </div>



        <!-- /.col-lg-3 -->
        <div class="col-lg-10">

          <div id="carouselExampleIndicators" class="carousel slide my-4" data-ride="carousel">
            <ol class="carousel-indicators">
              <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
              <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
              <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
            </ol>
            <div class="carousel-inner" role="listbox">
              <div class="carousel-item active">
                <img class="d-block img-fluid" src="./img/carousel/carousel01.png" alt="First slide">
              </div>
              <div class="carousel-item">
                <img class="d-block img-fluid" src="./img/carousel/carousel02.png" alt="Second slide">
              </div>
              <div class="carousel-item">
                <img class="d-block img-fluid" src="./img/carousel/carousel03.png" alt="Third slide">
              </div>
            </div>
            <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
              <span class="carousel-control-prev-icon" aria-hidden="true"></span>
              <span class="sr-only">Previous</span>
            </a>
            <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
              <span class="carousel-control-next-icon" aria-hidden="true"></span>
              <span class="sr-only">Next</span>
            </a>
          </div>

          <div class="row">
            <?PHP
              $result = mysqli_query($con,"SELECT * FROM producto");

              while($row = mysqli_fetch_array($result)) {
                echo "<div class='col-lg-4 col-md-6 mb-4'>";
                echo "<div class='card card text-center h-100 w-280'>";
                echo "<form action='./php/product.php' method='post'>";
                echo "<button type='submit' class='btn btn-link' name='id' value='{$row['id_producto']}'><img class='card-img-top' src='". $row['p_foto'] ."' alt=''></button>";
                echo "<div class='card-body'>";
                echo "<h4 class='card-title'>";
                echo "<input type='hidden' value='{$row['id_producto']}' name='id'></input>";
                echo "<button type ='submit' class='btn btn-outline-primary btn-large'>";
                echo "". $row['p_nombre'] ."</button></form></h4>";
                echo "<h5>$". $row['p_precio'] ."</h5>";
                echo "<p class='card-text'>". $row['p_descripcion'] ."</p></div>";
                echo "<div class='card-footer'>";
                echo "<small class='text-muted'>".$row['p_fabricante']." - ".$row['p_origen']."</small>";
                echo "</div></div></div>";
              }
            ?>



          </div>
          <!-- /.row -->

        </div>
        <!-- /.col-lg-9 -->

      </div>
      <!-- /.row -->

    </div>
    <!-- /.container -->

<?php include './php/headerAndFooter/footer.php';?>
