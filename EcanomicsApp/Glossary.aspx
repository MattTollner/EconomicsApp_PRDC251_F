<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Glossary.aspx.cs" Inherits="Glossary" %>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Economics App</title>
	
	<link href="css/bootstrap.css" rel="stylesheet" type="text/css">
	<div class="container">
	<div class="row">
        
	</div>
</div>
	
	
  </head>
  <body style="background-color:#2B3A42">
	<div class="container">
	<ul class="list-inline">
	<li><a href="home.aspx">Home</a></li>
	<li><a href="RevisionMaterial.aspx">Revision Material</a></li>
	<li><a href="#">Quiz</a></li>
	<li><a href="#">Quiz Archive</a></li>
	<li><a href="Glossary.aspx">Glossary</a></li>
	<li><a href="NewsOutlet.aspx">News Outlets</a></li>
	<li style="float:right"><a href="#">Account Details</a></li>
	</ul>
  <table class="table table-bordered table-striped table-hover">
	<h1>Glossary</h1>
	<div id="custom-search-input">
                <div class="input-group col-md-12">
                    <input type="text" class="form-control input-md" placeholder="Search for definition" id="myInput" onkeyup="myFunction()"/>
                    <span class="input-group-btn">
                        <button class="btn btn-info btn-md" type="button">
                            <i class="glyphicon glyphicon-search"></i>
                        </button>
                    </span>
                </div>
            </div><br />
	
	
	<ul class="list-group" id="myUL">
  <li class="list-group-item"><h4><a href="#def1"  data-toggle="collapse">Ability	To	Pay</a></h4>
  <div id="def1" class="collapse ">
    Where taxes should be set according to how well a person can afford to pay.
  </div></li>
  
  
  
	<li class="list-group-item"><h4><a href="#def2"  data-toggle="collapse">Ad valorem tax</a></h4>
  <div id="def2" class="collapse">
    An indirect tax based on a percentage of the sales price of a good or service.
  </div></li>

  
  
	<li class="list-group-item"><h4><a href="#def3"  data-toggle="collapse">Adam Smith</a></h4>
  <div id="def3" class="collapse ">
    One of the founding fathers of modern economics. His most famous work was the	
Wealth of Nations(1776) - a study of the progress of nations where people act	
according to their own self-interest - which improves the public good. Smith's discussion	
of the advantages of division of labour	remains	a potent idea.</div></li>

	
	<li class="list-group-item"><h4><a href="#def4"  data-toggle="collapse">Adverse selection</a></h4>
  <div id="def4" class="collapse">
    Where the expected value of a transaction is known more accurately by the buyer or	
	the seller due to an asymmetry of information; e.g. health insurance.
  </div></li>
  
  
  
  
  
  
  </ul>
  </div>



	
	
	<script>
function myFunction() {
    // Declare variables
    var input, filter, ul, li, a, i;
    input = document.getElementById('myInput');
    filter = input.value.toUpperCase();
    ul = document.getElementById("myUL");
    li = ul.getElementsByTagName('li');

    // Loop through all list items, and hide those who don't match the search query
    for (i = 0; i < li.length; i++) {
        a = li[i].getElementsByTagName("a")[0];
        if (a.innerHTML.toUpperCase().indexOf(filter) > -1) {
            li[i].style.display = "";
        } else {
            li[i].style.display = "none";
        }
    }
}
</script>
	
	
     <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
  </body>
</html>
