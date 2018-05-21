<?PHP
  session_start();

  if(!isset($_SESSION['sess_user'])){
    header("Location:../index.php");
  }else {
    $con = mysqli_connect('localhost','root','portalphantom','zanite');

    // Check connection
    if (mysqli_connect_errno()) {
      echo "Failed to connect to MySQL: " . mysqli_connect_error();
    }

    $result = mysqli_query($con,"UPDATE usuario_producto SET pagado=1, fecha_compra='". date("Y/m/d") ."'WHERE u_mail='{$_SESSION['sess_user']}'");
    header("Location: ./history.php");
  }
?>
