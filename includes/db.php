<?php
// connect to mysql, using php-PDO-Object
$dbHost = getenv('DB_HOST');
$dbname = getenv("DB_NAME");
$dbUser = getenv('DB_USER');
$dbPassword = getenv('DB_PASSWORD');

$dbConnection = new PDO("mysql:host=$dbHost;dbname=$dbname;charset=utf8", $dbUser,  $dbPassword);
// set ERROR-MODE for webDevs ("->" calls function in class-object (new PDO (see above), "::" is a static variable, like a constant-variable)
$dbConnection->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION); 


// --- CONNECTION SHOULD ACTUALLY BE SET EITHER IN A SEPARATE FILE AS HERE  OR EVEN IN THE PAGE WHERE ITS USED (IN FACT IT WILL BE FUNCTIONALLY CALLED WHEN USED)
// STEP 1: ((STEP 2 on INDEX) FIRST WE DIED THE TABLE HERE AND SET IT BY INCLUDE TO THE INDEX.PHP

/* echo "$dbHost $dbname $dbUser $dbPassword"; */

/* // FETCH ALL DATA From `books` with SELECT -statement;
 $query = $dbConnection->query("SELECT * FROM `books`"); */

/*     echo "<div class='container'>
            <div class='row justify-content-center'>
                <div class='col-sm text-white'>";
                    echo "<table class='table table-dark table-striped'>";
                    echo "<thead><tr>";

//complete echo of table header
// https://www.php.net/manual/en/pdostatement.columncount

  $columnCount = $query->columnCount();

  for ($c= 0; $c < $columnCount; $c++) { 
// $columnInfo retrieves an array with column meta data
// https://www.php.net/manual/en/pdostatement.getcolumnmeta.php
    $columnMeta = $query->getColumnMeta($c);

    // get the value for 'name' and echo to tabel-header (<th></th>)
    $columnName = $columnMeta['name'];
    echo "<th>$columnName</th>";
  }

  echo "</tr></thead>";
  echo "<tbody>";
// IF"row" === "null", (condition) will be interpreted as "false" by PHP
// While Loop can be left
while ($row = $query->fetch(PDO::FETCH_ASSOC)) {
    // code...(do something)
    
                echo "<tr>";

    // FOR LOOP give ARRAY of book table conntent in a row

    foreach ($row as $columName => $value) {
        // code...
                echo "<td>$value</td>";
    }
    
                echo "</tr>";
}
echo "</tbody>";
echo "</table>";
                echo "</div>
              </div>
            </div>"; */
?>
<?php
// Translate Column-Fieldnames
define( 
        "NAME_MAP",
          array(
          // Translaztion, Key: Fieldname=>USER-Readable Format (could be translated to German)
          "title"=>"Title",
          "genre"=>"Genre", 
          "author"=>"Author", 
          "description"=>"Description", 
          "publisher"=>"Publisher", 
          "ISBN"=>"ISBN", 
          "price"=>"Price", 
          "currency"=>"Currency", 
          "out_of_print"=>"Soldout")
        );


function translateColumnName($columnName) {

  return NAME_MAP[$columnName];


  //ucfirst for onlyUpperCase Letter big
}
?>

