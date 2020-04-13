<?php 

include 'include/header.php';

?>
<?php

 include_once 'include/dbconnection.php';
?>

<link rel="stylesheet" href="include/style.css">

 <title> Rental Portal </title>
 
 <h1> Rental Portal </h1>
 <link rel="stylesheet" href="include/style.css">
 
 
 <body>
 
 <div>
 <table>
 <tr>
 <td>
 <h6> Select Flat Type(no.of rooms) </h6>
 <ul>
 <?php
 $sql = "SELECT DISTINCT flattype FROM rentaldetails ORDER BY flattype";
 $result = $conn->query($sql);
 while($row = $result->fetch_assoc()){
	 ?>
	 <li>
	 <div>
	 <label>
	 <input type="checkbox" class="form-check-input product_check" value="<?= $row['flattype']; ?>" id = "flattype"> <?= $row['flattype']; ?>
	 </label>
	 </div>
	 </li>
 <?php } ?>
 </ul>
 </td>
 
 <td>
 <h6> City </h6>
 <ul>
 <?php
 $sql = "SELECT DISTINCT address FROM rentaldetails ORDER BY address";
 $result = $conn->query($sql);
 while($row = $result->fetch_assoc()){
	 ?>
	 <li>
	 <div>
	 <label>
	 <input type="checkbox" class="form-check-input product_check" value="<?= $row['address']; ?>" id = "address"> <?= $row['address']; ?>
	 </label>
	 </div>
	 </li>
 <?php } ?>
 </ul>
 </td>
 </tr>
 
 </table>
 
 
 </div>
 
 <div>
<table>
 <tr>
 <th>Apartment Name</th>
 <th>Address</th>
 <th>Flat Type</th>
 <th>Flat Area(Sq.Ft)</th>
 <th>Rent</th>
 <th>Contact Number</th>
 </tr>
 <div id = "result">
 <?php
 $sql="SELECT * FROM rentaldetails";
 $result=$conn->query($sql);
 while($row=$result->fetch_assoc()){
	 ?>
	 
	 <div>
	 <tr>
	 
	 <td> <?= $row['name']; ?> </td>
	 
	 <td> <?= $row['address']; ?> </td>
 
    <td> <?= $row['flattype']; ?> </td>
	
	<td> <?= $row['flatarea']; ?> </td>
	
	<td> <?= $row['rent']; ?> </td>
	
	<td> <?= $row['phonenumber']; ?> </td>
 
 
 
</tr>
</div>

 <?php } ?>
 </div>
</table>
</div> 
 
 
 </body>
 
 <?php include 'include/footer.php';?>
 