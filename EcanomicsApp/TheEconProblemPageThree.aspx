<%@ Page Language="C#" AutoEventWireup="true" CodeFile="TheEconProblemPageThree.aspx.cs" Inherits="TheEconProblemPageThree" %>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Economics App</title>
	
	<link href="css/bootstrap.css" rel="stylesheet">
	

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
	<h5><a href="AsMicroRevisionMaterial.aspx">-Chapter Page</a></h5><center><h1>The Economic Problem</h1></center>
	</div>
	<ul class="list-inline">
		<li><a href="TheEconProbPageTwo.aspx">Previous Page</a></li>
		
		<li style="float:right"><a href="#">Next Page</a></li>
	</ul>
	<!--content and tings-->
	<h4>Markets are a method for allocating Scarce Resources </h4>
	<p style="color:white">
	1) Markets are a way of allocating resources. They don’t have to be a place, or involve the exchange of physical objects.<br />
	2) Each buyer or seller in a market chooses to exchange something they have for something they’d prefer to have instead. For example, 
	someone’s labour (their ‘work’) is a resource. If they have a job, they exchange their labour for a salary.<br />
	3) Since everyone is considered to be rational in a free market (see p.13), an economist would assume that:
	<li>the worker would prefer to have their wages, but less free time.</li>
	<li>the employer would prefer to have less money, and to know that there’s someone there to do some work.</li>
	4) Exchanging things in this way eventually results in a particular allocation of resources.
	</p>
	<h4>Mixed Economies combine free markets and Government Intervention</h4>
	<p>
	1) A free market allocates resources based on supply and demand and the price mechanism. In other words, anything can be sold 
	at any price that people will pay for it. (See Section 2 for more about the free market).
	2) Free market economies have a number of advantages... but there are also some downsides.	
	</p>
	
	<div class="col-lg-6 col-md-6 col-sm-10 col-xs-12">
	<h5>Pros of a free Economy</h5>
	<li>Efficiency — As any product can be bought and sold, only those of the best value will be in demand. So firms have an incentive to try to
	make goods in as efficient a way as possible.</li>
	<li>Entrepreneurship — In a market economy, the rewards for good ideas (e.g. new, better products, or better ways to make existing products)
	can make entrepreneurs a lot of money. This encourages risk-taking and innovation.</li>
	<li>Choice — The incentives for innovation can lead to an increase in choice for consumers. (And in a free market, consumers aren’t restricted to
	buying only what the government recommends).</li>	
	</div>
	
	<div class="col-lg-6 col-md-6 col-sm-10 col-xs-12">
	<h5>Cons of a free Economy</h5>
	<li>Inequalities — Market economies can lead to huge differences in income — this can be controversial, since many people think particularly
	large differences are unfair. And in a completely free market, anyone who is unable to work (even if it’s not their fault) would receive no income. </li>
	<li>Non-profitable goods may not be made — For example, drugs to treat rare medical conditions may never sell enough for a firm to
	make any profit, so these would not be made.</li>
	<li>Monopolies — Successful businesses can become the only supplier of a product — this market dominance can be abused.</li>	
	</div>
	
	<p>
	In a command (or planned) economy, it’s the government (not markets) that decides how resources should be allocated. Communist countries
	(e.g. the former USSR) have command economies, but they’re much rarer since the collapse of communism in the late 20th century.
	However, some countries still have command economies, such as North Korea. 
	</p>
	
	<div class="col-lg-6 col-md-6 col-sm-10 col-xs-12">
	<h5>Pros of a command Economy</h5>
	<li>Maximise welfare — Governments have more control over the economy, so they can prevent inequality and redistribute income fairly. They
	can also ensure the production of goods that people need and are beneficial to society.</li>
	<li>Low unemployment — The government can try to provide everyone with a job and a salary. </li>
	<li>Prevent monopolies — The market dominance of monopolies can be prevented by the government.</li>	
	</div>
	
	<div class="col-lg-6 col-md-6 col-sm-10 col-xs-12">
	<h5>Cons of a command Economy</h5>
	<li>Poor decision-making — A lack of information means that governments may make poor (and slow) decisions about what needs to be produced. </li>
	<li>Restricted choice — Consumers have a limited choice in what they can consume, and firms will make what they’re told to make. 
</li>
	<li>Lack of risk-taking and efficiency — Government-owned firms have no incentive to increase efficiency, take risks or innovate, because they
	don’t need to make profit. </li>	
	</div>
	
	
	<p style="color:white">
	4) Market failure happens when free markets result in undesirable outcomes — for example, traffic congestion is seen as a market failure.<br />
	5) Governments often intervene when there’s a market failure.
	<li>They might change the law, or offer tax breaks (e.g. reduce taxes for anyone carrying out particular activities), or create 
	some other kind of incentive to try to influence people’s behaviour.</li>
	<li>Governments can also intervene in the economy by buying or providing goods or services.</li>
	6) When both the government and markets play a part in allocating resources, this is called a mixed economy.
	</p>
	<h4>A mixed Economy has a public sector and a private sector</h4>
	<p style="color:white">
	1) In a mixed economy, the government is known as the public sector.<br />
	2) Businesses that are privately owned make up the private sector.<br />
	3) Private-sector organisations usually have to break even or make a profit to survive.<br />
	4) Most countries have a mixed economy, including the UK — there are no purely free market economies where the government doesn’t intervene in some way.<br />
	5) In a pure free market economy there would be no public sector and in a pure command economy there would be no private sector.<br /> 
	</p>
	<h4>Smith, Marx and Hayek were influence economic thinkers</h4>
	
	
	
	
	</div>

	
	
	
	
	
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
  </body>
</html>