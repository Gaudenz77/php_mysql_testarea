
<div class='container'>
    <div class='row'>
        <div class='col-sm-8 bg-secondary'>
            <div class='Display-1'>HEllo You</div>
        </div>
    </div>
</div>


<!-- <section>
<h1>GeeksForGeeks</h1> -->
<!-- TABLE CONSTRUCTION -->
<table>
    <tr>
        <th>GFG UserHandle</th>
        <th>Practice Problems</th>
        <th>Coding Score</th>
        <th>GFG Articles</th>
    </tr>
    <!-- PHP CODE TO FETCH DATA FROM ROWS -->
    <?php
        // LOOP TILL END OF DATA
        while($rows=$result->fetch_assoc())
        {
    ?>
    <tr>
        <!-- FETCHING DATA FROM EACH
            ROW OF EVERY COLUMN -->
        <td><?php echo $rows['title'];?></td>
        <td><?php echo $rows['author'];?></td>
        
    </tr>
    <?php
        }
    ?>
</table>
</section>



<table class='table table-striped-columns'>
  ...
</table>
<p></p>


SELECT `title`, `genre`, `author`, `description`, `publisher`, `ISBN`, `price`, `currency`, `out_of_print` AS `Titel`, `Genre`, `Author`, `Description`, `Publisher`, `ISBN`, `Price`, `Currency`, `Soldout` FROM `books` WHERE `id` = 5;

class='radiobtn'

<label for='w3review'>Review of W3Schools:</label>

<textarea id='w3review' name='w3review' rows='4' cols='50'>
At w3schools.com you will learn how to make a website. They offer free tutorials in all web development technologies.
</textarea>

textarea id='w3review' name='w3review' rows='4' cols='50'

<select name='cars' id='cars'>
  <option value='volvo'>Volvo</option>
  <option value='saab'>Saab</option>
  <option value='mercedes'>Mercedes</option>
  <option value='audi'>Audi</option>
</select>


<div class='form-floating'>
  <textarea class='form-control' placeholder='Leave a comment here' id='floatingTextarea2' style='height: 100px'></textarea>
  <label for='floatingTextarea2'>Comments</label>
</div>

class='myTextarea'

INSERT INTO `books`(`title`, `genre`, `author`, `description`, `publisher`,`price`, `currency`, `out_of_print`) VALUES ('[value-2]','[value-3]','[value-4]','[value-5]','[value-6]','[value-8]','[value-9]','[value-10]')