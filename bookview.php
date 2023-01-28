<?php
require "./includes/include_head.php";
require "./includes/header.php";
require './includes/tools.php'
?>
<title>DATABASE_02</title>
<body>
<main>
<?php
require 'includes/db.php';

//<a href='bookview.php?id=$id'>$value</a>
//$_GET brings ID from URL: bookview.php?id=$id'
if(isset($_GET['id'])) {
  $id = $_GET['id'];

}
else {
  // Exit and leave PHP  (url:https://www.php.net/manual/en/function.exit.php)
  exit("ATTENTION: Identifier ID in URL missing!");
}

//echo like log console js
// echo "id = $id<br>";

// FETCH ALL DATA(whole table-row) from `books` with $id = 'id' ;
//$query = $dbConnection->query("SELECT * FROM `books`");
$query = $dbConnection->query("SELECT `title`, `genre`, `author`, `description`, `publisher`, `ISBN`, `price`, `currency`, `out_of_print` FROM `books` WHERE `id` = $id");
$row = $query->fetch(PDO::FETCH_ASSOC);
// TO make array visiple (console-log like) (class=dev only)
//print_r($row);// (class=dev only)
//prettyPrint($row); (class=dev only)


?>
<div class="container">
    <div class="col-sm ">
    <table class="table table-dark table-striped">
      <thead>
        <tr class="table-dark">
          <th scope="col">ISBN <?php echo $row['ISBN'];?></th>
          <th scope="col"><?php echo $row['title'];?> / <?php echo $row['author'];?></th>
        </tr>
      </thead>
      <tbody>
        <?php
        //left column for titlename, right columne for values
            foreach ($row as $columnName => $value) {
             $translatedColumnName = translateColumnName($columnName);

            echo "<tr>
                    <td>$translatedColumnName</td>
                    <td>$value</td>
                  </tr>";
            }
        ?>
      </tbody>
    </table>
    </div>
    <div class="col-sm text-center">
    <a class="btn btn-outline-info btn-lg " href="./index.php" role="button">Back</a>
    </div>
  </div>
</div>
   



<?php
require "./includes/footer.php";
?>
</main>


    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
  </body>
</html>
