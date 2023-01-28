# PROBLEM CONNECT TO MYSQL DATABASE
## DB_NAME = $dbName CASE-SENITIVITY
----
### Problem at setup new PDO connection (SET NEW PDO MYSQL DNS)
----
### Usage: Open .md in browser of choice

## Problem-Description:
When setting up a new PDO-connection (PDO_MYSQL DSN, look up: [PHP Manual]('https://www.php.net/manual/en/ref.pdo-mysql.connection.php')) a PHP error stopped output and data-query:

<ol><li> 
<span style="color:red">

$dbName = getenv("DB_NAME");<br>
 		$dbConnection = new PDO("mysql:host=$dbHost;dbName=$dbName;charset=utf8", $dbUser,  $dbPassword);
        
<li> Then get all library content from `table`:<br> $query = $dbConnection->query("SELECT * FROM `books`"); (here as `books`*)
 		<br>--->>>ERROR:<br>(Fatal error: Uncaught PDOException: SQLSTATE[3D000]: Invalid catalog name: 1046 No database selected in /var/www/php/includes/db.php:15 Stack trace: #0 /var/www/php/includes/db.php(15): PDO->query('SELECT * FROM `...') #1 /var/www/php/index.php(24): require('/var/www/php/in...') #2 {main} thrown in /var/www/php/includes/db.php on line 15)</li></ol><br>

## Workaraound:
To work around the error, I had to set  explicitly the database-name (`library`), in front of table-name (`books`) with a connector dot(.)like this:
* $query = $dbConnection->query("SELECT * FROM `library.books`");

## Solution:
### After research at Google, the following two links gave me the solution:
### [PHP Manual]('https://www.php.net/manual/en/ref.pdo-mysql.connection.php')
### [stack overflow]('https://stackoverflow.com/questions/45087819/simple-php-pdo-invalid-catalog-name-1046-no-database-selected')
[screenshot page stack overflow]('https://drive.google.com/file/d/1LBgO3uBfd42Ua73rf3DOAsBWZC_8Sbji/view?usp=share_link')

### In the connection "new PDO" to phpMyAdmin-database, I had to change database-variable "$dbName" to all lowercase "$dbname".
### like shown here:

<ul>
<span style="color:green">
<li>$dbHost = getenv('DB_HOST');
<li>$dbname = getenv("DB_NAME");
<li>$dbUser = getenv('DB_USER');
<li>$dbPassword = getenv('DB_PASSWORD');<br><br>
<li>$dbConnection = new PDO("mysql:host=$dbHost;dbname=$dbname;charset=utf8", $dbUser,  $dbPassword);</li></ul>

<br>

# that helped
### For further question feel free to ask me or mail me [@Gaudenz]('mailto:gaudenzraiber@yahoo.de')