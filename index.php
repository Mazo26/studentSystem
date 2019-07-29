<?php
include "include/header.php";
?>

<h3 class="text-center">Welcome to Student system</h3>
<h4 class="text-center">This system will show you information about students</h4>
<h5 class="text-center">Enjoy using our system</h5>

<form class="form-inline" action="student.php" method="get">
        <div class="form-group mb-2">
          <h6>Search student by ID number</h6>
        </div>
        <div class="form-group mx-sm-3 mb-2">
          <input type="text" class="form-control" name="s" placeholder="ID number">
        </div>
        <button type="submit" name="searchStudent" class="btn btn-primary mb-2">Search</button>
      </form>

<?php
include "include/footer.php";
?>