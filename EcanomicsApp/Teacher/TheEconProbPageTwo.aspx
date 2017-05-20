<%@ Page Language="C#" AutoEventWireup="true" CodeFile="TheEconProbPageTwo.aspx.cs" Inherits="TheEconProbPageTwo" %>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Economics App</title>
	
	<link href="css/teacherBootstrap.css" rel="stylesheet">
	

  </head>
  <body style="background-color:#2B3A42">
	<div class="container">
	
	<nav class="navbar navbar-fixed-default">
		<div class="container-fluid">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" 
								data-target="#bs-example-navbar-collapse-1" aria-expanded="false" style="color:white">
								
					<span class="sr-only"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>
			</div>	
			
		<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
			
	<ul class="nav navbar-nav">
		<li class="active"><a href="home.aspx">Home<span class="sr-only">(current)</span></a></li>
		<li><a href="RevisionMaterial.aspx">Revision Material</a></li>
		<li><a href="#">Quiz</a></li>
		<li><a href="#">Archive</a></li>
		<li><a href="Glossary.aspx">Glossary</a></li>
		<li><a href="NewsOutlet.aspx">News Outlets</a></li>
		<li style="float:right" class="dropdown"><a href="#" class="dropdown-toggle" 
					data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Account<span class="caret"></span>
					<ul class="dropdown-menu">
					<li><a href="#">Edit Details</a></li>
					<li><a href="#">Logout</a></li>
					</ul>
	</ul>
				
			</div>	
				
			
		</div>
	</nav>
	<div class="page-header">
	<h5><a href="AsMicroRevisionMaterial.aspx">-Chapter Page</a><h5><center><h1>The Economic Problem</h1></center>
	</div>
	<ul class="list-inline">
		<li><a href="TheEconProbPageOne.aspx">Previous Page</a></li>
		
		<li style="float:right"><a href="TheEconPorbPageThree.aspx">Next Page</a></li>
	</ul>
	<h4>Production Possibility Frontiers show the Maximum passible output</h4>
	<p>
	The PPF below shows the maximum number of houses(on the horizontal axis) and vehicles (on the vertical axis) that can
	be made, using the existing level of resources in an economy.<br />
	<center><img src="images/ppfdiagram.png" class="img-rounded" alt="Cinque Terre" width="330" height="230"></center><br />
	Points A, B and C (and every other point on the PPF) are all achievable without using any extra resources.
	However, they are only achievable when all the available resources are used as efficiently as is actually possible.
	<li>Notice how, as you move along the curve from A to B, you’re building more houses (about 22 500 instead of 1000) but fewer vehicles 
	(80 000 instead of 120 000).</li>
	<li>Moving along the curve from A to B like this corresponds to allocating more resources to the production of houses,
	and fewer resources to the production of vehicles.</li>
	<li>In other words, there’s a trade-off between ‘building more houses’ and ‘making more vehicles’<br />
	— to do more of one, you have to do less of the other.</li>	
	</p>
	<p>
	3) All points on the PPF are productively efficient (see p.59) because all resources are
	used as efficiently as possible to produce the maximum possible output. Not all
	points on the PPF are allocatively efficient. This is because not all points will reflect
	the allocation of resources that lead to the production of goods which maximise
	consumer satisfaction (fulfil people’s wants or needs). E.g. if all resources are used to
	produce vehicles, this might not match society’s need for houses.<br />
	4) Point E lies outside the PPF, so it isn’t achievable using the current level of resources in the economy.
	To build that many houses and vehicles at the same time, extra (or better) resources would need to be found.<br />
	5) Point F lies inside the PPF (rather than on it) — this means making this mix of goods is productively inefficient.
	With the current level of resources, you could build more houses without making fewer vehicles
	(or more vehicles without making fewer houses).<br />
	</p>
	<h4>Opportunity Cost is the next best thing that you're forced to give up</h4>
	<p style="color:white">
	1) The trade-off described above involves an opportunity cost.<br />
	2) An opportunity cost is what you give up in order to do something else — i.e. it’s the cost of any choice that’s made.<br />
	3) So moving from A to B on the PPF above means you have the opportunity to build 21 500 extra houses as long
	as you give up the opportunity to make 40 000 vehicles. In other words, the opportunity cost of building 21 500
	extra houses is the lost production of 40 000 vehicles.<br />
	4) Opportunity cost is a key concept in Economics which is used to ensure a more efficient allocation of resources.
	For example, consumers use the concept to choose what to spend their income on; producers use it to look
	at the profit forgone by not making an alternative product; and governments use it to look at the lost value to
	society from the policies they choose not to implement.
	5) However, there are some problems with using the concept of opportunity cost:
	<li>Often, not all alternatives are known.</li>
	<li>Some factors don’t have alternative uses.</li>
	<li>There may be a lack of information on alternatives and their costs.</li>
	<li>Some factors (e.g. land) can be hard to switch to an alternative use.</li>
	</p>
	<h4>Economic Growth shifts the PPF</h4>
	<p>
	1) A PPF shows what’s possible using a particular level of resources (e.g. a particular number of people, a particular
	amount of capital and raw materials, and so on).
	2) If this level of resources is fixed, then movements along the PPF just show a reallocation of those resources.
	3) However, if the total amount of resources changes, then the PPF itself moves. 
	4) Improved technology or improvements to labour (e.g. through training) can also shift the PPF outwards, because it allows more
	output to be produced using the same resources.
	5) An outward shift of the PPF shows economic growth.
	6) When fewer total resources are available (e.g. after some kind of natural disaster), the opposite happens — the PPF shifts inwards,
	showing that the total possible output has shrunk. This shows negative economic growth.
	
	</p>
	
	
	
	
	
	</div>

	
	
	
	
	
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
  </body>
</html>
