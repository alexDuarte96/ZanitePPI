<!DOCTYPE html>
<html lang="en">

  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Zanite Shop</title>

    <!-- Bootstrap core CSS -->
    <link href="../vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <!-- Custom styles for this template -->
    <link href="../css/shop-item.css" rel="stylesheet">
  </head>
  <?php
    $con = mysqli_connect('localhost','root','portalphantom','zanite');
    // Check connection
    if (mysqli_connect_errno()) {
      echo "Failed to connect to MySQL: " . mysqli_connect_error();
    }
  ?>
  <body>

    <!-- Navigation -->
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
      <div class="container">
        <a class="navbar-brand" href="#">Zanite</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
          <ul class="navbar-nav ml-auto">
            <li class="nav-item active">
              <a class="nav-link" href="#">Home
                <span class="sr-only">(current)</span>
              </a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#">Shop</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#">Contact</a>
            </li>

            <li class="nav-item">
              <a class="nav-link" href="#">Login</a>
            </li>
          </ul>
        </div>
      </div>
    </nav>

    <!-- Page Content -->
    <div class="container">

      <!-- Product -->
      <?PHP
        $id = $_GET['id'];
        $result = mysqli_query($con,"SELECT * FROM producto WHERE id_producto = $id");

        while($row = mysqli_fetch_array($result)) {
          echo "<br><h1 class='my-4'>". $row['p_nombre'] ."  ";
          echo "<small> - ". $row['p_fabricante'] ."</small></h1>";
          echo "<div class='row'>";
          echo "<div class='col-md-7'>";
          echo "<a href='#'>";
          echo "<img class='img-fluid rounded mb-3 mb-md-0' src='.". $row['p_foto'] ."' alt=''>";
          echo "</a></div>";
          echo "<div class='col-md-5'><br><br><br><br><br>";
          echo "<p style='font-size: 30px;'>". $row['p_descripcion'] ."</p>";
          echo "<h3> $". $row['p_precio'] ."</h3><br>";
          echo "<h5 style='color: gray;'> Stock: ". $row['p_cantidad'] ."</h5><br>";
          echo "<a class='btn btn-primary' href='#'>Add to Cart</a>";
          echo "</div></div><hr>";
        }
      ?>


    </div>
    <!-- /.container -->

    <!-- Footer -->
    <footer class="py-5 bg-dark">
      <div class="container">
        <p class="m-0 text-center text-white">Copyright &copy; Your Website 2018</p>
      </div>
      <!-- /.container -->
    </footer>

    <!-- Bootstrap core JavaScript -->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  </body>

</html>
