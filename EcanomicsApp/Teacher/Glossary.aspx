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
	
	<div class="row">
        
	</div>
</div>
	
	
  </head>
  <body style="background-color:#2B3A42">
      <form id="form1" runat="server">

       <!--Start of navbar-->
<nav class="navbar navbar-default navbar-fixed-top">
  <div class="container-fluid">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="TeacherHome.aspx">Economics App</a>
    </div>
          <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav">
        <li><a href="RevisionMaterial.aspx">Revision Material <span class="sr-only">(current)</span></a></li>
        <li><a href="#">Quiz</a></li>
        <li><a href="#">Quiz Archive</a></li>
		<li><a href="Glossary.aspx">Glossary</a></li>
		<li><a href="NewsOutlet.aspx">News Outlets</a></li>
	  </ul>
     
	
      <ul class="nav navbar-nav navbar-right">
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Account<span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="#">Edit Account</a></li>
            <li role="separator" class="divider"></li>
            <li><asp:Button ID="btnLogOut" CssClass="btn bnt-default" runat="server" Text="Log Out" OnClick="btnLogOut_Click"></asp:Button></li>
          </ul>
        </li>
      </ul>
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav></br>
<!-- end of navbar-->

    <div class="container">
  <table class="table table-bordered table-striped table-hover">
    <div class="page-header">
	<h1>Glossary</h1>
    </div>
	<div id="custom-search-input">
                <div class="input-group col-md-12">
                    <input type="text" class="form-control input-md" placeholder="Search for definition" id="myInput" onkeyup="myFunction()"/>
                    <span class="input-group-btn">
                        <button class="btn btn-info btn-md" type="button">
                            <i class="glyphicon glyphicon-search"></i>
                        </button>
                    </span>
                </div>
            </div></br>
	
	
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
  
<li class="list-group-item"><h4><a href="#def5"  data-toggle="collapse">Air passenger duty</a></h4>
  <div id="def5" class="collapse">
    APD is a charge on air travel from UK airports. The level of APD depends on the country to which an airline passenger is flying.
  </div></li>

<li class="list-group-item"><h4><a href="#def6"  data-toggle="collapse">Alcohol duties</a></h4>
  <div id="def6" class="collapse">
    Excise duties on alcohol are a form of indirect tax and are chargeable on beer, wine and spirits according to their volume and/or alcoholic content.
  </div></li>

<li class="list-group-item"><h4><a href="#def7"  data-toggle="collapse">Alienation</a></h4>
  <div id="def7" class="collapse">
    A sociological term to describe	the	estrangement many workers feel from	their work, which may reduce their motivation and productivity.
	It is sometimes argued that alienation is a	result of the division of labour because workers are not involved with the satisfaction	of producing a
	finished product, and do not feel part of a	team.
  </div></li>  
  
 <li class="list-group-item"><h4><a href="#def8"  data-toggle="collapse">Allocaative Efficiency</a></h4>
  <div id="def8" class="collapse">
    Allocative	efficiency	occurs	when	the	value	that	consumers	place	on	a	good	or	service	
(reflected	in	the	price	they	are	willing	and	able	to	pay)	equals	the	cost	of	the	resources	
used	up	in	production (technical	definition:	price	equals	marginal	cost).	Scarce	
resources	are	allocated	optimally.
  </div></li>  

<li class="list-group-item"><h4><a href="#def9"  data-toggle="collapse">Asking price</a></h4>
  <div id="def9" class="collapse">
    The	price	at	which	a	security,	commodity	or	currency	is	offered	for	sale	on	the	market	-
generally	the	lowest	price	the	seller	will	accept
  </div></li>  

<li class="list-group-item"><h4><a href="#def10"  data-toggle="collapse">Asymmetric information</a></h4>
  <div id="def10" class="collapse">
    When	somebody	knows	more	than	somebody	else	in	the	market.	Such	asymmetric	
information	can	make	it	difficult	for	the	two	people	to	do	business	together
  </div></li>  

<li class="list-group-item"><h4><a href="#def11"  data-toggle="collapse">Automation</a></h4>
  <div id="def11" class="collapse">
    Production technique that uses capital machinery/technology to	replace	or enhance	
	human labour and	bring about a rise in productivity.
  </div></li>    
  
  <li class="list-group-item"><h4><a href="#def12"  data-toggle="collapse">Average cost</a></h4>
  <div id="def12" class="collapse">
    Total	cost	divided	by	the	number	of	units	of	the	commodity	produced
  </div></li>  
  
  <li class="list-group-item"><h4><a href="#def13"  data-toggle="collapse">Average fixed cost</a></h4>
  <div id="def13" class="collapse">
    Average	fixed	costs	are total	fixed	costs	divided	by	the	number	of	units	of	output,	that	
is,	fixed	cost	per	unit	of	output
  </div></li>  
  
  <li class="list-group-item"><h4><a href="#def14"  data-toggle="collapse">Barriers to entry</a></h4>
  <div id="def14" class="collapse">
    Factors	making	it	expensive	for	new	firms	to	enter	a	market.	Examples	include	the	effect	
of	patents;	brand	loyalty	among	consumers;	the	high	costs	of	buying	capital	equipment	
and	the	need	to	win	licences	to	operate	in	certain	markets
  </div></li>  
  
  <li class="list-group-item"><h4><a href="#def15"  data-toggle="collapse">Barter</a></h4>
  <div id="def15" class="collapse">
    The	practice	of	exchanging	one	good	or	service	for	another,	without	using	money
  </div></li>  
  
  <li class="list-group-item"><h4><a href="#def16"  data-toggle="collapse">Basic problem</a></h4>
  <div id="def16" class="collapse">
    There	are	infinite	wants	but	finite	(scarce)	resources	with	which	to	satisfy	them
  </div></li> 
  
  <li class="list-group-item"><h4><a href="#def17"  data-toggle="collapse">Behavioural economics</a></h4>
  <div id="def17" class="collapse">
    Branch	of	economics	that	studies	the	impact	of	psychological	and	social	factors	on	
economic	decision	making
  </div></li>
  
  <li class="list-group-item"><h4><a href="#def18"  data-toggle="collapse">Black market</a></h4>
  <div id="def18" class="collapse">
    An	illegal	market	in	which	the	market	price	is	higher	than	a	legally	imposed	price	ceiling.	
Black	markets	can	develop	where	there	is	excess	demand for	a	commodity
  </div></li>
  
  <li class="list-group-item"><h4><a href="#def19"  data-toggle="collapse">Bottlenecks</a></h4>
  <div id="def19" class="collapse">
    Any	factor	that	causes	production	to	be	delayed	or	stopped	– this	may	reduce	the	price	
elasticity	of	supply	of	a	product
  </div></li>
  
  <li class="list-group-item"><h4><a href="#def20"  data-toggle="collapse">Buffer stock</a></h4>
  <div id="def20" class="collapse">
    Buffer	stock	schemes	seek to	stabilize	the	market	price	of	agricultural	products	by	
buying	up	supplies	of	the	product	when	harvests	are	plentiful	and	selling	stocks	of	the	
product	onto	the	market	when	supplies	are	low
  </div></li>
  
  <li class="list-group-item"><h4><a href="#def21"  data-toggle="collapse">Bulk-buying</a></h4>
  <div id="def21" class="collapse">
    The	purchase	by	one	organisation	of	large	quantities	of	a	product	or	raw	material,	which	
often	results	in	a	lower	price	because	of	their	market	power	and	because	it	is	cheaper	
to	deal	with	one	customer and	the	deliveries	can	be	on	a	larger	scale.
  </div></li>
  
  <li class="list-group-item"><h4><a href="#def22"  data-toggle="collapse">Buyer's market</a></h4>
  <div id="def22" class="collapse">
    A	market	that	favours	buyers	because	supply is	plentiful	relative	to	demand	and	
therefore	prices	are	relatively	low.	The	opposite	of	a	seller's	market
  </div></li>
  
  <li class="list-group-item"><h4><a href="#def23"  data-toggle="collapse">By-product</a></h4>
  <div id="def23" class="collapse">
    Something	produced	as	a	consequence	of	producing	another	good	or	service
  </div></li>
  
  <li class="list-group-item"><h4><a href="#def24"  data-toggle="collapse">Capacity Utilisation</a></h4>
  <div id="def24" class="collapse">
    The	extent	to	which	a	business	is	making	full	use	of	existing	factor	resources	e.g.	80%	
capacity	utilisation	means	that	20%	of	capacity	is	not	being	used	(spare).
  </div></li>
  
  <li class="list-group-item"><h4><a href="#def25"  data-toggle="collapse">Capital goods</a></h4>
  <div id="def25" class="collapse">
    Producer	or	capital	goods	such	as	plant	(factories)	and	machinery	and	equipment	are	
useful	not	in	themselves	but	for	the goods	and	services	they	can	help	produce	in	the	
future.
  </div></li>
  
  <li class="list-group-item"><h4><a href="#def26"  data-toggle="collapse">Capital-intensive</a></h4>
  <div id="def26" class="collapse">
    A	production	technique	which	uses	a	high	proportion	of	capital	to	labour
  </div></li>
  
  <li class="list-group-item"><h4><a href="#def27"  data-toggle="collapse">Capitalist economy</a></h4>
  <div id="def27" class="collapse">
    Economic	system	organised	along	capitalist	lines	uses	market prices	to	guide	our	
choices	about	the	production	and	distribution	of	goods.	One	key	role	for	the	state	is	to	
maintain	the	rule	of	law	and	protect	private	property
  </div></li>
  
  <li class="list-group-item"><h4><a href="#def28"  data-toggle="collapse">Carbon capture and storage</a></h4>
  <div id="def28" class="collapse">
    The	process	of	trapping	and	storing	carbon	dioxide	produced	by	burning	fossil	fuels
  </div></li>
  
  <li class="list-group-item"><h4><a href="#def29"  data-toggle="collapse">Carbon credits</a></h4>
  <div id="def29" class="collapse">
    An	allowance	to	a	business	to	generate	a	specific	level	of	emissions – may	be	traded	in	a	
carbon	market
  </div></li>
  
  <li class="list-group-item"><h4><a href="#def30"  data-toggle="collapse">Cartel</a></h4>
  <div id="def30" class="collapse">
    A	cartel	is	a	formal	agreement	among	firms.	Cartel	members	may	agree	on	prices,	total	
industry output,	market	shares,	allocation	of	customers,	allocation	of	territories,	bid	
rigging,	establishment	of	common	sales	agencies,	and	the	division	of	profits	or	
combination	of	these.	Cartels	are	illegal	under	UK	and	European	competition	laws
  </div></li>
  
  <!--                  31-40                   -->
  
  <li class="list-group-item"><h4><a href="#def31"  data-toggle="collapse">Ceteris	paribus</a></h4>
  <div id="def31" class="collapse">
    To	simplify	analysis,	economists	isolate	the	relationship	between	two	variables	by	
assuming	ceteris	paribus	- all	other	influencing	factors	are	held	constant
  </div></li>
  
  <li class="list-group-item"><h4><a href="#def32"  data-toggle="collapse">Cigarette duties</a></h4>
  <div id="def32" class="collapse">
    UK	taxes	on	cigarettes	= 16.5%	retail	price	+ £154.95	per	thousand	cigarettes.
  </div></li>
  
  <li class="list-group-item"><h4><a href="#def33"  data-toggle="collapse">Collusion</a></h4>
  <div id="def33" class="collapse">
    Collusion	is	any	agreement	between	suppliers	in	a	market	to	avoid	competition.	The	
main	aim	is	to	reduce	market	uncertainty	and	achieve	a	level	of	joint	profits	similar	to	
that	which	might	be	achieved	by	a	pure	monopolist
  </div></li>
  
  <li class="list-group-item"><h4><a href="#def34"  data-toggle="collapse">Command and control</a></h4>
  <div id="def34" class="collapse">
    Laws and	regulation	backed	up	by	inspection	and	penalties	for	non-compliance e.g.	
regulations	on	carbon	emissions
  </div></li>
  
  <li class="list-group-item"><h4><a href="#def35"  data-toggle="collapse">Commonand economy</a></h4>
  <div id="def35" class="collapse">
    Economic	system	where	resources	are	allocated	by	the	government
  </div></li>
  
  <li class="list-group-item"><h4><a href="#def36"  data-toggle="collapse">Common resources</a></h4>
  <div id="def36" class="collapse">
    Goods or	services	that	have characteristics	of	rivalry	in	consumption	and	nonexcludability
- grazing	land	or	fish	stocks	are	examples.	The	over-exploitation	of	
common	resources	can	lead	to	the	"tragedy	of	the	commons"
  </div></li>
  
  <li class="list-group-item"><h4><a href="#def37"  data-toggle="collapse">Competition policy</a></h4>
  <div id="def37" class="collapse">
    Government	policy	directed	at	encouraging	competition	in	the	private	sector:	e.g.	the	
investigation	of	takeovers	or	restrictive	practices
  </div></li>
  
    <li class="list-group-item"><h4><a href="#def38"  data-toggle="collapse">Competitive market</a></h4>
  <div id="def38" class="collapse">
    A market	where	no	single firm	has	a	dominant	position	and	where	the	consumer	has	
plenty	of	choice.	There	are	few	barriers	to	the	entry	of	new	firms
  </div></li>
  
    <li class="list-group-item"><h4><a href="#def39"  data-toggle="collapse">Competitive supply</a></h4>
  <div id="def39" class="collapse">
    Alternative	products	a	firm	could	make	with	its	resources.	E.g. a	farmer	can	plant	
potatoes	or	carrots.	An	electronics	factory	can	produce	VCRs	or	DVDs
  </div></li>
  
    <li class="list-group-item"><h4><a href="#def40"  data-toggle="collapse">Complments</a></h4>
  <div id="def40" class="collapse">
    Two	complements	are	said	to	be	in	joint	demand.
  </div></li>
  
								<!-- 41 - 50      -->
								
	  <li class="list-group-item"><h4><a href="#def41" data-toggle="collapse">Composite	demand</a></h4>
  <div id="def41" class="collapse">
    Where	goods	or	services	have	more	than	one	use	so	that	an	increase	in	the	demand	for	
one	product	leads	to	a	fall	in	supply	of	the	other.	E.g.	milk	which	can	be	used	for	cheese,	
yoghurts,	cream,	butter.	If	more	milk	is	used	for	manufacturing	cheese,	ceteris paribus	
there	is	less	available	for	butter
  </div></li>

  <li class="list-group-item"><h4><a href="#def42"  data-toggle="collapse">Congestion charing</a></h4>
  <div id="def42" class="collapse">
    A	direct	charge	for	use	of	roads	in	a	defined	zone	e.g.	central	London
  </div></li>

  <li class="list-group-item"><h4><a href="#def43"  data-toggle="collapse">Constraints</a></h4>
  <div id="def43" class="collapse">
    Conspicuous	consumption	is	consumption	designed	to	impress	others	rather	than	
something	that	is wanted	for	its	own	sake
  </div></li>  
  
  <li class="list-group-item"><h4><a href="#def44"  data-toggle="collapse">Consumer	durable</a></h4>
  <div id="def44" class="collapse">
    A	good	such	as	a	washing	machine	or	a	digital	camera	that	lasts	a	period	of	time,	during	
which	the	consumer	can	continue	getting	utility	from	it
  </div></li> 

	<li class="list-group-item"><h4><a href="#def45"  data-toggle="collapse">Consumer sovereignty</a></h4>
  <div id="def45" class="collapse">
    Consumer	sovereignty	exists	when	the	economic	system	allows	scarce	resources	to	be	
allocated	to	producing	goods	and	services	that	reflect	the	wishes	of	consumers.	
Sovereignty	can	be	distorted	by	the	effects	of	persuasive	advertising
  </div></li>  
  
  <li class="list-group-item"><h4><a href="#def46"  data-toggle="collapse">Consumer	surplus</a></h4>
  <div id="def46" class="collapse">
    Consumer	surplus	is	the	difference	between	the	total	amount	that	consumers	are	
willing	and	able	to	pay	for	a	good	or	service	(indicated	by	the	demand	curve)	and	the	
total	amount	that	they	actually	pay	(the	market	price)
  </div></li>  
  
  <li class="list-group-item"><h4><a href="#def47"  data-toggle="collapse">Consumption</a></h4>
  <div id="def47" class="collapse">
    The	act	of	buying	and	using	goods	and	services	to	satisfy	wants
  </div></li>  
  
  <li class="list-group-item"><h4><a href="#def48"  data-toggle="collapse">Contestable	market</a></h4>
  <div id="def48" class="collapse">
    Market	with	no	entry	barriers	- firms	can	enter	or	leave	without	significant	cost
  </div></li>  
  
  <li class="list-group-item"><h4><a href="#def49"  data-toggle="collapse">Cost	Benefit	Analysis</a></h4>
  <div id="def49" class="collapse">
    CBA	is	a	decision	making	tool	which	compares	the	social	costs	and	social	benefits	of	a	
project,	over	time,	to	establish	a	net	present	value
  </div></li>  
  
  <li class="list-group-item"><h4><a href="#def50"  data-toggle="collapse">Costs</a></h4>
  <div id="def50" class="collapse">
    Costs	faced	by	a	business	when	producing	a	good	or	service	for	a	market
  </div></li>  
  
				<!--                    51 - 60                       -->
  
  <li class="list-group-item"><h4><a href="#def51"  data-toggle="collapse">Cross	price	elasticity of demand</a></h4>
  <div id="def51" class="collapse">
    Responsiveness	of	demand	for	good	X	following	a	change	in	the	price	of	good	Y	(a	
related	good).	With	cross	price	elasticity	we	make	a distinction	between	substitute	
products	and	complementary	goods	and	services
  </div></li> 
  
  <li class="list-group-item"><h4><a href="#def52"  data-toggle="collapse">Cyclical	demand</a></h4>
  <div id="def52" class="collapse">
    Demand	that	change	in	a	regular	way	over	time depending	on	the	part	of	the	economic	
(business) cycle	that	a	country	is	in	or	the	time	of	year
  </div></li> 
  
  <li class="list-group-item"><h4><a href="#def53"  data-toggle="collapse">Deadweight loss</a></h4>
  <div id="def53" class="collapse">
    The	loss	in	producer	and	consumer	surplus	due	to	an	inefficient	level	of	production	
perhaps	resulting	from	market	failure	or	government	failure
  </div></li> 
  
  <li class="list-group-item"><h4><a href="#def54"  data-toggle="collapse">Demand</a></h4>
  <div id="def54" class="collapse">
    Quantity	of	a	good	or	service	that	consumers	are	willing	and	able	to	buy	at	a	given	price	
in	a	given	time	period
  </div></li> 
  
  <li class="list-group-item"><h4><a href="#def55"  data-toggle="collapse">Demand	curve</a></h4>
  <div id="def55" class="collapse">
    A	demand curve	shows	the	relationship	between	the	price	of	an	item	and	the	quantity	
demanded	over	a	period	of	time.	For	normal	goods,	more	of	a	product	will	be	
demanded	as	the	price	falls
  </div></li> 
  
  <li class="list-group-item"><h4><a href="#def56"  data-toggle="collapse">De-merit	goods</a></h4>
  <div id="def56" class="collapse">
    The	consumption	of	de-merit	goods	can	lead	to	negative	externalities	which	causes	a	
fall	in	social	welfare.	The	government	normally	seeks	to	reduce	consumption	of	de-merit goods.
	Consumers	may	be	unaware	of	the	negative	externalities	that	these	goods create	- they	have	imperfect	information
  </div></li> 
  
  <li class="list-group-item"><h4><a href="#def57"  data-toggle="collapse">Deregulation</a></h4>
  <div id="def57" class="collapse">
    The	removal	of	legally	enforced	rules	that	restrict	or	ban	specified	activities
  </div></li> 
  
  <li class="list-group-item"><h4><a href="#def58"  data-toggle="collapse">Derived demand</a></h4>
  <div id="def58" class="collapse">
    Derived	demand	occurs	when	the	demand	for	a	particular	product	depends	on	the	
demand	for	another	product	or	activity
  </div></li> 
  
  <li class="list-group-item"><h4><a href="#def59"  data-toggle="collapse">Diminishing	returns</a></h4>
  <div id="def59" class="collapse">
    As	more	of	a	variable		factor	(e.g.	labour)	is	added	to	a	fixed	factor	(e.g.	capital)	a	firm	
will	reach	a	point	where	it	has	a	disproportionate	quantity	of	labour	to	capital	and	so	
the	marginal	product	of	labour	will	fall,	thus	raising	marginal	costs
  </div></li> 
  
  <li class="list-group-item"><h4><a href="#def60"  data-toggle="collapse">Diseconomies	of	scale</a></h4>
  <div id="def60" class="collapse">
    Disadvantages	to	the	firm,	in	the	form	of	higher	long-run	unit	costs,	from	increasing	
their	size	of	operation.
  </div></li> 
  
  <!-- 61 - 70 -->
  
  <li class="list-group-item"><h4><a href="#def61"  data-toggle="collapse">Disequilibrium</a></h4>
  <div id="def61" class="collapse">
    A situation	where	there	is	a	state	of	imbalance	and	so	a	tendency	for	change
  </div></li> 
  
  <li class="list-group-item"><h4><a href="#def62"  data-toggle="collapse">Diversification</a></h4>
  <div id="def62" class="collapse">
    The	reduction	of	risk	achieved	by	replacing	a	single	risk	with	a	larger	number	of	smaller	
unrelated	risks
  </div></li> 
  
  <li class="list-group-item"><h4><a href="#def63"  data-toggle="collapse">Division	of	labour</a></h4>
  <div id="def63" class="collapse">
    The	specialization	of	labour	in	specific	tasks,	intended	to	increase	productivity
  </div></li> 
  
  <li class="list-group-item"><h4><a href="#def64"  data-toggle="collapse">Dominant	monopoly</a></h4>
  <div id="def64" class="collapse">
    A	firm	with	40%	or	higher	market	share
  </div></li> 
  
  <li class="list-group-item"><h4><a href="#def65"  data-toggle="collapse">Economic	agents</a></h4>
  <div id="def65" class="collapse">
    Decision	makers	e.g.	consumers	and	producers
  </div></li> 
  
  <li class="list-group-item"><h4><a href="#def66"  data-toggle="collapse">Economic	efficiency</a></h4>
  <div id="def66" class="collapse">
    Economic	efficiency	is	about	making	the	best or	optimum	use	of scarce	resources	
among	competing	ends	so	that	economic	and	social	welfare	is	maximised	over	time
  </div></li> 
  
  <li class="list-group-item"><h4><a href="#def67"  data-toggle="collapse">Economic	growth</a></h4>
  <div id="def67" class="collapse">
    An	increase	in	the	productive	potential	of	the	country – shown	by	an	outward	shift	of	
the	production	possibility	frontier
  </div></li> 
  
  <li class="list-group-item"><h4><a href="#def68"  data-toggle="collapse">Economy	of	scale</a></h4>
  <div id="def68" class="collapse">
    Benefits,	in	the	form	of	lower	unit	costs,	from	increasing	the	size	of	operation.
  </div></li> 
  
  <li class="list-group-item"><h4><a href="#def69"  data-toggle="collapse">Economy	of	scope</a></h4>
  <div id="def69" class="collapse">
    Economies	of	scope	occur	where	it	is	cheaper	to	produce	a	range	of	products
  </div></li> 
  
  <li class="list-group-item"><h4><a href="#def70"  data-toggle="collapse">Effective	demand</a></h4>
  <div id="def70" class="collapse">
    Demand	in	economics	must	be	effective.	Only	when	a	consumers'	desire	to	buy	a	
product	is	backed	up	by	an	ability	to	pay	for	it	do	we	speak	of	demand
  </div></li> 
  
							<!--  			71 				- 				80 -->
  
  <li class="list-group-item"><h4><a href="#def71"  data-toggle="collapse">Elastic	demand</a></h4>
  <div id="def71" class="collapse">
    Demand	for	which	price	elasticity	is	greater	than	1
  </div></li>
  
  <li class="list-group-item"><h4><a href="#def72"  data-toggle="collapse">Elastic	supply</a></h4>
  <div id="def72" class="collapse">
    Where	the	price	elasticity	of	supply	is	greater	than	+1
  </div></li>
  
  <li class="list-group-item"><h4><a href="#def73"  data-toggle="collapse">Elasticity	of	supply</a></h4>
  <div id="def73" class="collapse">
    Price	elasticity	of	supply	measures	the	relationship	between	change	in	quantity	supplied	
and	a	change	in	price
  </div></li>
  
  <li class="list-group-item"><h4><a href="#def74"  data-toggle="collapse">Emission	tax</a></h4>
  <div id="def74" class="collapse">
    A charge	made	to	firms	that	pollute	the	environment	based	on	the	quantity	of	pollution	
they	emit i.e.	the	volume	of	CO2	emissions
  </div></li>
  
  <li class="list-group-item"><h4><a href="#def75"  data-toggle="collapse">Entrepreneur</a></h4>
  <div id="def75" class="collapse">
    An	individual	who	seeks	to	supply	products	to	a	market	for	a	rate	of	return	(i.e.	a	profit).	
Entrepreneurs	will	usually	invest	their	own	financial	capital	in	a	business	and	take	on	
the	risks	associated	with	a business	investment.
  </div></li>
  
  <li class="list-group-item"><h4><a href="#def76"  data-toggle="collapse">Equilibrium</a></h4>
  <div id="def76" class="collapse">
    Equilibrium	means	‘at	rest’	or	‘a	state	of	balance’	- i.e.	a	situation	where	there	is	no
tendency	for	change.	The	concept	is	used	in	microeconomics	(e.g.	equilibrium	prices)	
and	in	macroeconomics (e.g.	national	income or	GDP)
  </div></li>
  
  <li class="list-group-item"><h4><a href="#def77"  data-toggle="collapse">Equity</a></h4>
  <div id="def77" class="collapse">
    Fairness;	a	view	on	the	‘rightness’	of	an	issue	based	on	opinion	rather	than	fact	-
requires	a	value	judgement
  </div></li>
  
  <li class="list-group-item"><h4><a href="#def78"  data-toggle="collapse">Excess	demand</a></h4>
  <div id="def78" class="collapse">
    The	difference	between	the	quantity	supplied	and	the	higher	quantity	demanded	when	
price	is	set	below	the	equilibrium price.	This	will	result	in	queuing	and	an	upward	pressure on price.
  </div></li>
  
  <li class="list-group-item"><h4><a href="#def79"  data-toggle="collapse">Excess	supply</a></h4>
  <div id="def79" class="collapse">
    When	supply	is	greater	than	demand	and	there	are	unsold	goods	in	the	market.	
Surpluses	put	downward	pressure	on	the	market	price
  </div></li>
  
  <li class="list-group-item"><h4><a href="#def80"  data-toggle="collapse">Excise	duties</a></h4>
  <div id="def80" class="collapse">
    Excise	duties	are	indirect	taxes	levied	on	our	spending	on	goods	and	services	such	as	
cigarettes,	fuel	and	alcohol.	There	are	also	duties	on	air	travel,	car	insurance
  </div></li>
  
  <!--           81 - 90             -->
  
  <li class="list-group-item"><h4><a href="#def81"  data-toggle="collapse">Excludability</a></h4>
  <div id="def81" class="collapse">
    The	property	of	a	good	whereby	a	person	can	be	prevented	from	using	it
  </div></li>

  <li class="list-group-item"><h4><a href="#def82"  data-toggle="collapse">External	cost</a></h4>
  <div id="def82" class="collapse">
    External	costs	are	those	costs	faced by	a	third	party	for	which	no	appropriate	
compensation	is	forthcoming
  </div></li>

  <li class="list-group-item"><h4><a href="#def83"  data-toggle="collapse">Externalities</a></h4>
  <div id="def83" class="collapse">
    Externalities	are	third	party	effects	arising	from	production	and	consumption	of	goods	
and	services	for	which	no	appropriate	compensation	is	paid
  </div></li>

  <li class="list-group-item"><h4><a href="#def84"  data-toggle="collapse">Extreme	poverty</a></h4>
  <div id="def84" class="collapse">
    A	severe	and	persistent	deprivation	of	basic	human	needs
  </div></li>

  <li class="list-group-item"><h4><a href="#def85"  data-toggle="collapse">Factor	incomes</a></h4>
  <div id="def85" class="collapse">
    Factor	incomes	are	the	rewards	to	factors	of	production.	Labour	receives	wages	and	
salaries,	land	earns	rent,	capital	earns	interest	and	enterprise	earns	profit
  </div></li>

  <li class="list-group-item"><h4><a href="#def86"  data-toggle="collapse">Finite	resources</a></h4>
  <div id="def86" class="collapse">
    There	are	only	a	finite	number	of	workers,	machines,	acres	of	land	and	reserves	of	oil	
and	other	natural	resources.	By	producing	more	for	an	ever-increasing	population,	we	
may	destroy the	natural	resources	of	the	planet
  </div></li>

  <li class="list-group-item"><h4><a href="#def87"  data-toggle="collapse">Firm</a></h4>
  <div id="def87" class="collapse">
    An	organisation	that hires	and	organises	resources	to	make	products
  </div></li>

  <li class="list-group-item"><h4><a href="#def88"  data-toggle="collapse">First	mover advantage</a></h4>
  <div id="def88" class="collapse">
    The	first	company	to	introduce	a	new	product	to	market,	has	the	opportunity	to	extract	
the	greatest	long	term	benefit	from	the	product	introduction
  </div></li>

  <li class="list-group-item"><h4><a href="#def89"  data-toggle="collapse">Fixed	costs</a></h4>
  <div id="def89" class="collapse">
    Costs	that	do	not	vary	directly	with	the	level	of	output.	Examples	of	fixed	costs	include:	
rent	and	business	rates,	the	depreciation	in	the	value	of	capital	equipment	(plant	and	
machinery)	due	to	age	and	marketing	and	advertising	costs
  </div></li>

  <li class="list-group-item"><h4><a href="#def90"  data-toggle="collapse">Flexible	pricing</a></h4>
  <div id="def90" class="collapse">
    A firm	varies	price	by	customer	to	maximise	revenue.
  </div></li>  
  
  <!--    		91 - 100				-->
  
  <li class="list-group-item"><h4><a href="#def91"  data-toggle="collapse">Flexible	working</a></h4>
  <div id="def91" class="collapse">
    A	workforce	that	is	multi-skilled	and	able	to	work	variable	hours	in	response	to	changing	
demand	
  </div></li>
  
  <li class="list-group-item"><h4><a href="#def92"  data-toggle="collapse">Free	market</a></h4>
  <div id="def92" class="collapse">
    In	a	free	market,	the	forces	of	supply	and	demand	alone	determine	price	and output	
without	any	government	intervention.	Free	markets	are	totally	unregulated
  </div></li>
  
  <li class="list-group-item"><h4><a href="#def93"  data-toggle="collapse">Freemium</a></h4>
  <div id="def93" class="collapse">
    A business	model,	especially	on	the	Internet,	whereby	basic	services	are	provided	free	
of	charge	while	more	advanced (premium) features	must	be	paid	for
  </div></li>
  
  <li class="list-group-item"><h4><a href="#def94"  data-toggle="collapse">Geographical	immobility</a></h4>
  <div id="def94" class="collapse">
    People	may	also	experience	geographical	immobility	– meaning	that	there	are	barriers	
to	them	moving	from	one	area	to	another	to	find	work
  </div></li>
  
  <li class="list-group-item"><h4><a href="#def95"  data-toggle="collapse">Gini	Coefficient</a></h4>
  <div id="def95" class="collapse">
    The	Gini	coefficient	measures	the	extent	to	which	the	distribution	of	income	(or	
consumption	expenditures)	among	individuals	or	households	within	an	economy	
deviates	from	a	perfectly	equal	distribution.	The	coefficient	ranges	from	0	- meaning	
perfect	equality	- to	1- meaning	complete	inequality
  </div></li>
  
  <li class="list-group-item"><h4><a href="#def96"  data-toggle="collapse">Globalisation</a></h4>
  <div id="def96" class="collapse">
    A	process by	which	economies	and	cultures	have	been	drawn	together	through	a	global	
network	of	trade, investment,	capital	flows,	and	rapid	spread	of	technology
  </div></li>
  
  <li class="list-group-item"><h4><a href="#def97"  data-toggle="collapse">Goods</a></h4>
  <div id="def97" class="collapse">
    Tangible,	physical	products	e.g.	cars	and	computers
  </div></li>
  
  <li class="list-group-item"><h4><a href="#def98"  data-toggle="collapse">Government failure</a></h4>
  <div id="def98" class="collapse">
    Policies	that	cause	a	deeper	market	failure.	Government	failure may	range	from	the	
trivial,	when	intervention	is	merely	ineffective,	to	cases	where	intervention	produces	
new	and	more	serious	problems	that	did	not	exist	before
  </div></li>
  
  <li class="list-group-item"><h4><a href="#def99"  data-toggle="collapse">Government spending</a></h4>
  <div id="def99" class="collapse">
    Government	spending	is	by	central	and	local	government on	goods	and	services
  </div></li>
  
  <li class="list-group-item"><h4><a href="#def100"  data-toggle="collapse">Health rationing</a></h4>
  <div id="def100" class="collapse">
    Health	rationing	occurs	when	the	demand	for	health	care	services	outstrips	the	
available	resources	leading	to	waiting	lists	and	delays	for	health	treatment
  </div></li>
  
  <!--     				101 - 110					-->
  
  <li class="list-group-item"><h4><a href="#def101"  data-toggle="collapse">Hedging</a></h4>
  <div id="def101" class="collapse">
    The	process	of	protecting	oneself	against	risk.	For	example,	a	company	who	owes	
money	to	an	overseas	company	may	want	to	hedge	against	the	risk	that	the	exchange	
rate	moves	against	them.	They	could	do	this	by	taking	out	a	future	contract	for	the	
purchase	of	foreign	exchange	at	a	fixed	future	rate
  </div></li>
  
  <li class="list-group-item"><h4><a href="#def102"  data-toggle="collapse">Horizontal	equity</a></h4>
  <div id="def102" class="collapse">
    Horizontal	equity	requires	equals	to	be	treated	equally	e.g.	people	in	the	same	income	
group	should	be	taxed	at	the	same	percentage	rate
  </div></li>
  
  <li class="list-group-item"><h4><a href="#def103"  data-toggle="collapse">Horizontal	integration</a></h4>
  <div id="def103" class="collapse">
    Where	two	firms	join	at	the	same	stage	of	production	in	one	industry.	For	example	two	
car	manufacturers	may	decide	to	merge
  </div></li>
  
  <li class="list-group-item"><h4><a href="#def104"  data-toggle="collapse">Incentives</a></h4>
  <div id="def104" class="collapse">
    Incentives	matter!	For	competitive	markets	to	work	efficiently	economic	agents	(i.e.	
consumers	and	producers)	must	respond	to	price	signals	in	the	market
  </div></li>
  
  <li class="list-group-item"><h4><a href="#def105"  data-toggle="collapse">Incidence	of	a	tax</a></h4>
  <div id="def105" class="collapse">
    How	the	final	burden	of	a	tax	is	shared	out.	If	demand		for	a	good	is	elastic	and	a tax	is	
imposed	then	the	tax	will fall	mainly	on	the	producer	as	they	will	be	unable	to	put	prices	
up	without	losing	a	lot	of	demand
  </div></li>
  
  <li class="list-group-item"><h4><a href="#def106"  data-toggle="collapse">Income</a></h4>
  <div id="def106" class="collapse">
    Income	represents	a	flow	of	earnings	from	using	factors	of	production	to	generate	an	
output	of	goods	and	services.	For	example	wages	and	salaries.
  </div></li>
  
  <li class="list-group-item"><h4><a href="#def107"  data-toggle="collapse">Income elasticity of demand</a></h4>
  <div id="def107" class="collapse">
    Measures	the	relationship	between	a	change	in	quantity	demanded	and	a	change	in	real	
income.	The	formula	for	income	elasticity	is:	percentage	change	in	quantity	demanded	
divided	by	the	percentage	change	in	income
  </div></li>
  
  <li class="list-group-item"><h4><a href="#def108"  data-toggle="collapse">Income	gap</a></h4>
  <div id="def108" class="collapse">
    A measure	of	the	gap	between	the	incomes	of	various	groups shown	by	plotting	the	
average	incomes	of	the	between	the	lowest	and	highest	decile (10%	grouping)
  </div></li>
  
  <li class="list-group-item"><h4><a href="#def109"  data-toggle="collapse">Incumbent	firm</a></h4>
  <div id="def109" class="collapse">
    An	incumbent	is	a	business	already	operating	in and	established	in a	market
  </div></li>
  
  <li class="list-group-item"><h4><a href="#def110"  data-toggle="collapse">Independent	goods</a></h4>
  <div id="def110" class="collapse">
    Two	products	that	have	no	price-quantity	demanded	relationship:	XED=0
  </div></li>
  
						<!-- 111 - 120  -->
	
	<li class="list-group-item"><h4><a href="#def111"  data-toggle="collapse">Indirect	tax</a></h4>
  <div id="def111" class="collapse">
    An	indirect	tax	is	imposed	on	producers	(suppliers)	by	the	government.	Examples	
include	excise	duties	on	cigarettes,	alcohol	and	fuel	and	also	value	added	tax
  </div></li>
  
  <li class="list-group-item"><h4><a href="#def112"  data-toggle="collapse">Inefficiency</a></h4>
  <div id="def112" class="collapse">
    When	the	best	use	of	resources	is	not	being	made
  </div></li>
  
  <li class="list-group-item"><h4><a href="#def113"  data-toggle="collapse">Inelastic	demand</a></h4>
  <div id="def113" class="collapse">
    When	the	co-efficient	of	price	elasticity	of	demand	is	less	than	1
  </div></li>
  
  <li class="list-group-item"><h4><a href="#def114"  data-toggle="collapse">Inelastic	supply	</a></h4>
  <div id="def114" class="collapse">
    When	the	co-efficient	of	price	elasticity	of	supply	is	less	than	+1
  </div></li>
  
  <li class="list-group-item"><h4><a href="#def115"  data-toggle="collapse">Inferior	good</a></h4>
  <div id="def115" class="collapse">
    When	demand	for	a	product	falls	as	real	incomes	increases
  </div></li>
  
  <li class="list-group-item"><h4><a href="#def116"  data-toggle="collapse">Information	failure</a></h4>
  <div id="def116" class="collapse">
    Information	failure	occurs	when	people	have	inaccurate,	incomplete,	uncertain	or	
misunderstood data	and	so	make	potentially	‘wrong’	choices
  </div></li>
  
  <li class="list-group-item"><h4><a href="#def117"  data-toggle="collapse">Infrastructure</a></h4>
  <div id="def117" class="collapse">
    The	stock	of	capital	used	to	support	the	economic	system
  </div></li>
  
  <li class="list-group-item"><h4><a href="#def118"  data-toggle="collapse">Innovation</a></h4>
  <div id="def118" class="collapse">
    The	commercial	development	of	exploiting	new	or	improved	products
  </div></li>
  
  <li class="list-group-item"><h4><a href="#def119"  data-toggle="collapse">Inputs</a></h4>
  <div id="def119" class="collapse">
    Labour,	capital	and	other	resources	used	in	production
  </div></li>
  
  <li class="list-group-item"><h4><a href="#def120"  data-toggle="collapse">Intellectual	property</a></h4>
  <div id="def120" class="collapse">
    Legal	property	rights	over	creations	of	the	mind,	both	artistic	and	commercial,	and	the	
corresponding	fields	of	law.	Common	types	of	intellectual	property	include	copyrights,	
trademarks,	patents,	and	trade	secrets
  </div></li>

  <!--					121 - 130				-->
  
  <li class="list-group-item"><h4><a href="#def121"  data-toggle="collapse">Internalised</a></h4>
  <div id="def121" class="collapse">
    Internalising	is	where	any	spill-over	effects	from	economic	activity	are	absorbed	by	the	
consumer	or	firm	themselves.	This	may	arise	for	example,	where	a	pollution	tax	has	
been	charged	on	the	good	that	makes	them	pay	the	external	costs	themselves
  </div></li>
  
  <li class="list-group-item"><h4><a href="#def122"  data-toggle="collapse">Inventories</a></h4>
  <div id="def122" class="collapse">
    Unsold	products,	finished	&	unfinished,	and	raw	materials	used	to	make	them
  </div></li>
  
  <li class="list-group-item"><h4><a href="#def123"  data-toggle="collapse">Invisible hand</a></h4>
  <div id="def123" class="collapse">
    Adam	Smith described	how	the	invisible	or	hidden	hand	of	the	market	operated	in	a	
competitive	market	through	the	pursuit	of	self-interest	to	allocate	resources	in	society's	
best	interest
  </div></li>
  
  <li class="list-group-item"><h4><a href="#def124"  data-toggle="collapse">Joint	supply</a></h4>
  <div id="def124" class="collapse">
    Joint	supply	describes	a	situation	where	an	increase	or	decrease	in	the	supply	of	one	
good	leads	to	an	increase	or	decrease	in	supply	of	another by-product	e.g.	a contraction	
in	supply	of	lamb	will	reduce	the	supply	of	wool
  </div></li>
  
  <li class="list-group-item"><h4><a href="#def125"  data-toggle="collapse">Just	in	time</a></h4>
  <div id="def125" class="collapse">
    Production	that	produces	goods	to	order and	where	businesses	hold	few	stocks
  </div></li>
  
  <li class="list-group-item"><h4><a href="#def126"  data-toggle="collapse">Land</a></h4>
  <div id="def126" class="collapse">
    Quantity	and	quality	of	natural	resources	available	in	an	economy
  </div></li>
  
  <li class="list-group-item"><h4><a href="#def127"  data-toggle="collapse">Latent	demand</a></h4>
  <div id="def127" class="collapse">
    Latent	demand	exists	when	there	is	willingness	to	purchase	a	good	or	service,	but	
where	the	consumer	lacks	the	purchasing	power	to	to	afford	the	product
  </div></li>
  
  <li class="list-group-item"><h4><a href="#def128"  data-toggle="collapse">Law	of	demand</a></h4>
  <div id="def128" class="collapse">
    The	law	of	demand	is	that	there	is	an	inverse	relationship	between	the	price	of	a	good	
and	demand
  </div></li>
  
  <li class="list-group-item"><h4><a href="#def129"  data-toggle="collapse">Living	Wage</a></h4>
  <div id="def129" class="collapse">
    The	living	wage	is	an	hourly	rate	of	pay	set	annually	by	reference	to	the	basic	cost	of	
living	in	the	UK	and	London.	Unlike	the	National	Minimum	Wage,	employers	may	
choose	to	pay	the	living	wage	on	a	voluntary	basis.
  </div></li>
  
  <li class="list-group-item"><h4><a href="#def130"  data-toggle="collapse">Local	monopoly</a></h4>
  <div id="def130" class="collapse">
    A monopoly	limited	to	a	specific	geographical	area
  </div></li>
  
  <!--				131 - 140				-->
  
  <li class="list-group-item"><h4><a href="#def131"  data-toggle="collapse">Long run</a></h4>
  <div id="def131" class="collapse">
    The	time	period	when	firms	can	adjust	all	factors	used	in	production
  </div></li>
  
  <li class="list-group-item"><h4><a href="#def132"  data-toggle="collapse">Manufacturing</a></h4>
  <div id="def132" class="collapse">
    Manufacturing	is	the	use	of	machines,	tools	and	labour	to	make	things	for	use	or	sale.	
The	term	may	refer	to	a	range	of	human	activity,	from	handicraft	to	high	tech,	but	is	
most	commonly	applied	to	industrial	production,	in	which	raw	materials	are	
transformed	into	finished	goods	on	a	large	scale
  </div></li>
  
  <li class="list-group-item"><h4><a href="#def133"  data-toggle="collapse">Marginal	benefit</a></h4>
  <div id="def133" class="collapse">
    Additional	benefits	received	by	those	consuming	or	producing	one	extra	product
  </div></li>
  
  <li class="list-group-item"><h4><a href="#def134"  data-toggle="collapse">Marginal	cost</a></h4>
  <div id="def134" class="collapse">
    Marginal	cost	is	defined	as	the	change	in	total	costs	resulting	from	increasing	output	by	
one	unit.	Marginal	costs	relate	to	variable	costs	only
  </div></li>
  
  <li class="list-group-item"><h4><a href="#def135"  data-toggle="collapse">Marginal	revenue</a></h4>
  <div id="def135" class="collapse">
    The	increase	in	revenue	resulting	from	an	additional	unit	of	output
  </div></li>
  
  <li class="list-group-item"><h4><a href="#def136"  data-toggle="collapse">Market	equilibrium</a></h4>
  <div id="def136" class="collapse">
    Equilibrium	means	a	state	of	equality	between	demand	and	supply.	Without	a	shift	in	
demand	and/or	supply	there	will	be	no	change	in	market	price.	Prices	where	demand	
and	supply	are	out	of	balance	are	termed	points	of	disequilibrium
  </div></li>
  
  <li class="list-group-item"><h4><a href="#def137"  data-toggle="collapse">Market	failure</a></h4>
  <div id="def137" class="collapse">
    Market	failure	exists	when	the	competitive	outcome	of	markets	is	not	efficient	from	the	
point	of	view	of	the	economy	as	a	whole.	This	is	usually	because	the	benefits	that	the	
market	confers	on	individuals	or	firms	carrying	out	a	particular	activity	diverge	from	the	
benefits	to	society	as	a	whole
  </div></li>
  
  <li class="list-group-item"><h4><a href="#def138"  data-toggle="collapse">Market	incentives</a></h4>
  <div id="def138" class="collapse">
    Market	signals	that	motivate	economic	actors	to	change	their	behaviour	(perhaps	in	the	
direction	of	greater	economic	efficiency)
  </div></li>
  
  <li class="list-group-item"><h4><a href="#def139"  data-toggle="collapse">Market	power</a></h4>
  <div id="def139" class="collapse">
    Market	power refers	to	the	ability	of	a	firm	to	influence	or	control	the	terms	and	
condition	on	which	goods	are	bought	and	sold.	Monopolies	can	influence	price	by	
varying	their	output	because	consumers	have	limited	choice	of	rival	products
  </div></li>
  
  <li class="list-group-item"><h4><a href="#def140"  data-toggle="collapse">Market	shortage</a></h4>
  <div id="def140" class="collapse">
    Where	demand	exceeds	supply	at	a	given	price
  </div></li>
  
  
  <!--				141 - 150					-->
  
  <li class="list-group-item"><h4><a href="#def141"  data-toggle="collapse">Market	supply</a></h4>
  <div id="def141" class="collapse">
    Market	supply	is	the	total	amount	of	an	item	producers	are	willing	and	able	to	sell	at	
different	prices,	over	a	given	period	of	time	egg	one	month.	Industry,	a	market	supply	
curve	is	the	horizontal	summation of	all	each	individual	firm’s	supply	curves
  </div></li>
  
  <li class="list-group-item"><h4><a href="#def142"  data-toggle="collapse">Maximum	price</a></h4>
  <div id="def142" class="collapse">
    A	legally-imposed	maximum	price in	a	market	that	suppliers	cannot	exceed.	To	be	
effective	a	maximum	price	has	to	be	set	below	the	free	market	price
  </div></li>
  
  <li class="list-group-item"><h4><a href="#def143"  data-toggle="collapse">Merit	good</a></h4>
  <div id="def143" class="collapse">
    A product	that	society	values	and	judges	that	everyone	should	have	regardless	of	
whether	an	individual	wants	them.	In	this	sense,	the	government	(or	state)	is	acting	
paternally	in	providing	merit	goods	and	services
  </div></li>
  
  <li class="list-group-item"><h4><a href="#def144"  data-toggle="collapse">Minimum	price</a></h4>
  <div id="def144" class="collapse">
    A	legally	imposed	price	floor	below	which	the	normal	market	price	cannot	fall.	To	be	
effective	the	minimum	price	has	to	be	set	above	the	normal	equilibrium	price.	A	good	
example	of	this	is	minimum	wage
  </div></li>
  
  <li class="list-group-item"><h4><a href="#def145"  data-toggle="collapse">Mixed	economy</a></h4>
  <div id="def145" class="collapse">
    Where	resources	are	partly	allocated	by	the	market	and partly	by	the	government
  </div></li>
  
  <li class="list-group-item"><h4><a href="#def146"  data-toggle="collapse">Mixed	goods</a></h4>
  <div id="def146" class="collapse">
    Products	that	have	the	characteristics	of	both	private	and	public	goods
  </div></li>
  
  <li class="list-group-item"><h4><a href="#def147"  data-toggle="collapse">Monopoly</a></h4>
  <div id="def147" class="collapse">
    A	single	seller	of	a	product	in	a	given	market	or	industry
  </div></li>
  
  <li class="list-group-item"><h4><a href="#def148"  data-toggle="collapse">Moral	hazard</a></h4>
  <div id="def148" class="collapse">
    When	people	take	actions	that	increase	social	costs	because	they	are	insured	against	
private	loss:	sometimes	it	is	called	hidden	action	due	to	the	agent’s	actions	being	hidden	
from	the	principal
  </div></li>
  
  <li class="list-group-item"><h4><a href="#def149"  data-toggle="collapse">Nationalisation</a></h4>
  <div id="def149" class="collapse">
    The	transfer	of	ownership	of	a	firm	from	the	private	to	public	sector
  </div></li>
  
  <li class="list-group-item"><h4><a href="#def150"  data-toggle="collapse">Needs</a></h4>
  <div id="def150" class="collapse">
    Humans	have	many	different	types	of	wants	and	needs	e.g.:	economic,	social	and	
psychological.	A	need	is	essential	for	survival	e.g. food	satisfies	hungry	people.	A	want	is	
something	desirable	but	not	essential	to	survival	e.g. cola	quenches	thirst
  </div></li>
  
  <!--				151 - 160			-->
  
  <li class="list-group-item"><h4><a href="#def151"  data-toggle="collapse">Negative	externality</a></h4>
  <div id="def151" class="collapse">
    Negative	externalities occur	when	production	and/or	consumption	impose	external	
costs	on	third	parties	outside	of	the	market	for	which	no	appropriate	compensation	is	
paid. This	causes	social	costs	to	exceed	private	costs
  </div></li>
  
  <li class="list-group-item"><h4><a href="#def152"  data-toggle="collapse">Niche	market</a></h4>
  <div id="def152" class="collapse">
    A	specialist	section	of	a	larger	market	e.g.	hand-made	chocolates
  </div></li>
  
  <li class="list-group-item"><h4><a href="#def153"  data-toggle="collapse">Non	price competition</a></h4>
  <div id="def153" class="collapse">
    Competing	not	on	the	basis	of	price	but	by	other	means,	such	as	the	quality	of	the	
product,	packaging,	customer	service
  </div></li>
  
  <li class="list-group-item"><h4><a href="#def154"  data-toggle="collapse">Non-renewable resources</a></h4>
  <div id="def154" class="collapse">
    Non-renewable	resources	are	resources	which	are	finite	and	cannot be	replaced.	
Minerals,	fossil	fuels	and	so	on	are	all	non-renewable	resources
  </div></li>
  
  <li class="list-group-item"><h4><a href="#def155"  data-toggle="collapse">Non-rival consumption</a></h4>
  <div id="def155" class="collapse">
    Non-rivalry	means	that	the	consumption	of	a	good	by	one	person	does	not	reduce	the	
amount	available	for	others
  </div></li>
  
  <li class="list-group-item"><h4><a href="#def156"  data-toggle="collapse">Normal	goods</a></h4>
  <div id="def156" class="collapse">
    Normal	goods	have	a	positive	income	elasticity	of	demand.	Necessities	have	an	income	
elasticity	of	demand	of	between	0	and	+1.	Luxuries	have	income	elasticity	>	+1	demand	
rises	more	than	proportionate	to	a	change	in	income
  </div></li>
  
  <li class="list-group-item"><h4><a href="#def157"  data-toggle="collapse">Normative statements</a></h4>
  <div id="def157" class="collapse">
    Normative	statements	express	an	opinion	about	what	ought	to	be.	They	are	subjective	
statements - i.e.	they	carry	value	judgments
  </div></li>
  
  <li class="list-group-item"><h4><a href="#def158"  data-toggle="collapse">Objectives</a></h4>
  <div id="def158" class="collapse">
	A	specific	target	an	organisation	sets	itself	to	achieve	through	its	activity
  </div></li>
  
  <li class="list-group-item"><h4><a href="#def159"  data-toggle="collapse">Office	of	Fair	Trading</a></h4>
  <div id="def159" class="collapse">
    A government	agency	responsible	UK	competition	policy i.e.	making	markets	work	well	
for	consumers
  </div></li>
  
  <li class="list-group-item"><h4><a href="#def160"  data-toggle="collapse">Off-peak pricing</a></h4>
  <div id="def160" class="collapse">
    Charging	lower	prices	outside	periods	of	intensive use
  </div></li>
  
  <!-- 				161 - 170			-->
  
  <li class="list-group-item"><h4><a href="#def161"  data-toggle="collapse">Oligopoly</a></h4>
  <div id="def161" class="collapse">
    A market	dominated	by	a	few	large	suppliers.	Market	concentration	is	high	with	
typically	the	leading	five	firms	taking	over	sixty	per	cent	of	total	market	sales
  </div></li>
  
  <li class="list-group-item"><h4><a href="#def162"  data-toggle="collapse">Opportunity	cost</a></h4>
  <div id="def162" class="collapse">
    The	cost	of	any	choice	in	terms	of	the	next	best	alternative	foregone.
  </div></li>
  
  <li class="list-group-item"><h4><a href="#def163"  data-toggle="collapse">Optimum	output</a></h4>
  <div id="def163" class="collapse">
    An	efficient	level	of	output	which	delivers	both	productive	and	allocative	efficiency
  </div></li>
  
  <li class="list-group-item"><h4><a href="#def164"  data-toggle="collapse">Ostentatious consumption</a></h4>
  <div id="def164" class="collapse">
    Some	goods	are	luxurious	items	where	satisfaction	comes	from	knowing	both	the	price	
of	the	good	and	being	able	to	flaunt	consumption	of	it	to	other	people
  </div></li>
  
  <li class="list-group-item"><h4><a href="#def165"  data-toggle="collapse">Out-sourcing</a></h4>
  <div id="def165" class="collapse">
    Subcontracting	a	process,	such	as	design	or manufacturing,	to	another company
  </div></li>
  
  <li class="list-group-item"><h4><a href="#def166"  data-toggle="collapse">Overhead	costs</a></h4>
  <div id="def166" class="collapse">
    Business	costs–such	as	rent	and	utilities–that	don't	directly	relate	to	the	production	or	
sale	of	goods	and	services
  </div></li>
  
  <li class="list-group-item"><h4><a href="#def167"  data-toggle="collapse">Pareto	efficiency</a></h4>
  <div id="def167" class="collapse">
    In	neoclassical	economics,	an	action	done	in	an	economy	that	harms	no	one	and	helps	
at	least	one	person.	A	situation	is	Pareto	efficient	if	the	only	way	to	make	one	person	
better	off	is	to	make	another	person	worse	off
  </div></li>
  
  <li class="list-group-item"><h4><a href="#def168"  data-toggle="collapse">Pareto	efficiencya></h4>
  <div id="def168" class="collapse">
    When	resources	cannot	be	reallocated	without	making	someone	else	worse	off
  </div></li>
  
  <li class="list-group-item"><h4><a href="#def169"  data-toggle="collapse">Paywall</a></h4>
  <div id="def169" class="collapse">
    Where access	is	restricted	to	users	who	have	paid	to	subscribe	to	a	website
  </div></li>
  
  <li class="list-group-item"><h4><a href="#def170"  data-toggle="collapse">Peak pricing</a></h4>
  <div id="def170" class="collapse">
    When	a	business	raises	prices	at	a	time	when	demand	is	strongest
  </div></li>
  
  
				<!--			171-180				-->
  
	<li class="list-group-item"><h4><a href="#def171"  data-toggle="collapse">Penetration	pricing</a></h4>
  <div id="def171" class="collapse">
    Where	a	firm	choose	to	set	a	low	price	to	gain	market	share	/	brand	recognition
  </div></li>
  
  <li class="list-group-item"><h4><a href="#def172"  data-toggle="collapse">Persuasive advertising</a></h4>
  <div id="def172" class="collapse">
    Manipulating consumer	preferences	and	cause	a	change	in	demand
  </div></li>
  
  <li class="list-group-item"><h4><a href="#def173"  data-toggle="collapse">Perverse demand curve</a></h4>
  <div id="def173" class="collapse">
    A	demand	curve	which	slopes	upwards from	left	to	right.	An	increase	in	price	leads	to	an	
increase	in	demand.	This	may	happen	where	goods	are	strongly	affected	by	price	
expectations	or	in the	case	of	Giffen	goods
  </div></li>
  
  <li class="list-group-item"><h4><a href="#def174"  data-toggle="collapse">Planned	economy</a></h4>
  <div id="def174" class="collapse">
    In	a	planned	economy,	decisions	about	what	to	produce,	how	much	to	produce	and	for	
whom	are	decided	by	central	planners	rather	than	using	the	price	mechanism
  </div></li>
  
  <li class="list-group-item"><h4><a href="#def175"  data-toggle="collapse">Polluter pays principle</a></h4>
  <div id="def175" class="collapse">
    The	government	may	choose	to	intervene	in	a	market	to	ensure	that	the	firms	and	
consumers	who create	negative	externalities	include	them	when	making	decisions
  </div></li>
  
  <li class="list-group-item"><h4><a href="#def176"  data-toggle="collapse">Positional	goods</a></h4>
  <div id="def176" class="collapse">
    Goods	which	are	at	least	in	part	demanded	because	their	possession	or	consumption	
implies	social	or	other	status	of	those	acquiring	them
  </div></li>
  
  <li class="list-group-item"><h4><a href="#def177"  data-toggle="collapse">Positive externalities</a></h4>
  <div id="def177" class="collapse">
    Positive	externalities	exist	when	third	parties	benefit	from	the	spill-over	effects	of	
production/consumption	e.g.	the	social	returns	from	investment	in	education	&	training	
or	the	positive	benefits	from	health	care	and	medical	research
  </div></li>
  
  <li class="list-group-item"><h4><a href="#def178"  data-toggle="collapse">Positive statement</a></h4>
  <div id="def178" class="collapse">
    Objective	statements	that	can	be	tested	or	rejected	by	referring	to	the	available	
evidence.	Positive	economics	deals	with	objective	explanation
  </div></li>
  
  <li class="list-group-item"><h4><a href="#def179"  data-toggle="collapse">Poverty	trap</a></h4>
  <div id="def179" class="collapse">
    The	poverty	trap	affects	people	on	low	incomes.	It	creates	a	disincentive	to	look	for	
work	or	work	longer	hours	because	of	the	effects	of	the	tax	and	benefits	system
  </div></li>
  
  <li class="list-group-item"><h4><a href="#def180"  data-toggle="collapse">Preferences</a></h4>
  <div id="def180" class="collapse">
    Our	tastes,	likes,	rankings reflected	in	the	choices	that	people	make	in	markets
  </div></li>
  
  <!--			181-190		-->
  
  <li class="list-group-item"><h4><a href="#def181"  data-toggle="collapse">Price	elasticity	of demand</a></h4>
  <div id="def181" class="collapse">
    Responsiveness	of	demand	for	a	product	following	a	change	in	its	own	price.	Also	called	
own	price	elasticity	of	demand.
  </div></li>
  
  <li class="list-group-item"><h4><a href="#def182"  data-toggle="collapse">Price	elasticity	of supply</a></h4>
  <div id="def182" class="collapse">
    Relationship	between	change	in	quantity	supplied	and	a	change	in	the	price	of	a	product
  </div></li>
  
  <li class="list-group-item"><h4><a href="#def183"  data-toggle="collapse">Price	mechanism</a></h4>
  <div id="def183" class="collapse">
    The	means	by	which	decisions	of	consumers	and	businesses	interact	to	determine	the	
allocation	of	resources	between	different	goods	and	services
  </div></li>
  
  <li class="list-group-item"><h4><a href="#def184"  data-toggle="collapse">Price	rigidity</a></h4>
  <div id="def184" class="collapse">
    Situation	where	the	price	of	a	product	rarely	changes
  </div></li>
  
  <li class="list-group-item"><h4><a href="#def185"  data-toggle="collapse">Price signals</a></h4>
  <div id="def185" class="collapse">
    Changes	in	price	act	as	a	signal	about how	resources	should	be	allocated.	A	rise	in	price	
encourages	producers	to	switch	into	making	that	good	but	encourages	consumers	to	
use	an	alternative	substitute	product	(therefore	rationing	the	product)
  </div></li>
  
  <li class="list-group-item"><h4><a href="#def186"  data-toggle="collapse">Private	benefit</a></h4>
  <div id="def186" class="collapse">
    The	rewards	to	individuals, firms	or	consumers	from	consuming	or	producing	goods	and	
services.	Also	known	as	internal	benefits
  </div></li>
  
  <li class="list-group-item"><h4><a href="#def187"  data-toggle="collapse">Private	cost</a></h4>
  <div id="def187" class="collapse">
    Costs	of	an	economic	activity	to	individuals	and	firms.	Also	known	as	internal	costs
  </div></li>
  
  <li class="list-group-item"><h4><a href="#def188"  data-toggle="collapse">Private	goods</a></h4>
  <div id="def188" class="collapse">
    Products	which	are	both	rival	and	excludable
  </div></li>
  
  <li class="list-group-item"><h4><a href="#def189"  data-toggle="collapse">Privatisation</a></h4>
  <div id="def189" class="collapse">
    Privatisation	is	where	state	owned	firms	are	sold	to	the	private	sector
  </div></li>
  
  <li class="list-group-item"><h4><a href="#def190"  data-toggle="collapse">Producer	surpluss</a></h4>
  <div id="def190" class="collapse">
    The	difference	between	what	producers	are	willing	and	able	to	supply	a	good	for	and	
the	price	they	actually	receive
  </div></li>
  
  <!--			191-200		-->
  
  <li class="list-group-item"><h4><a href="#def191"  data-toggle="collapse">Production	function</a></h4>
  <div id="def191" class="collapse">
    The	difference	between	what	producers	are	willing	and	able	to	supply	a	good	for	and	
the	price	they	actually	receive
  </div></li>
  
  <li class="list-group-item"><h4><a href="#def192"  data-toggle="collapse">Production	possibility frontier</a></h4>
  <div id="def192" class="collapse">
    A	boundary	that	shows	the	combinations	of	two	or	more	goods	and	services	that	can	be	
produced	using	all	available	factor	resources	efficiently
  </div></li>
  
  <li class="list-group-item"><h4><a href="#def193"  data-toggle="collapse">Productive	efficiency</a></h4>
  <div id="def193" class="collapse">
    The	output	of	productive	efficiency	occurs	when	a	business	in	a	given	market	or	
industry	reaches	the	lowest	point	of	its	average	cost	curve	implying	an	efficient	use	of	
scarce	resources	and	a	high	level	of	factor	productivity
  </div></li>
  
  <li class="list-group-item"><h4><a href="#def194"  data-toggle="collapse">Productivity</a></h4>
  <div id="def194" class="collapse">
   Efficiency	=	output per	unit	of	input	or	output	per	person	employed
  </div></li>
  
  <li class="list-group-item"><h4><a href="#def195"  data-toggle="collapse">Profit</a></h4>
  <div id="def195" class="collapse">
    Profits	are	made	when	total	revenue	exceeds	total	cost.	Total	profit	=	total	revenue	-
total	cost.	Profit	per	unit	supplied	=	price	=	average	total	cost
  </div></li>
  
  <li class="list-group-item"><h4><a href="#def196"  data-toggle="collapse">Property rights</a></h4>
  <div id="def196" class="collapse">
    Property	rights	confer	legal	control	or	ownership	of	a	good.	For	markets	to	operate	
efficiently,	property	rights	must	be	clearly	defined	and	protected	- perhaps	through	
government	legislation	and	regulation
  </div></li>
  
  <li class="list-group-item"><h4><a href="#def197"  data-toggle="collapse">Public	bads</a></h4>
  <div id="def197" class="collapse">
    Public	bads include	environmental	damage	and	global	warming	which	affects	everyone	
– no	one	is	excluded	from	the	dis-benefits
  </div></li>
  
  <li class="list-group-item"><h4><a href="#def198"  data-toggle="collapse">Public	goods</a></h4>
  <div id="def198" class="collapse">
    Pure	public	goods	are	non-rival	– consumption	of	the	good	by	one	person	does	not	
reduce	the	amount	available	for consumption	by	another	person,	and	non-excludable	–
where	it	is	not	possible	to	provide	a	good	or	service	to	one	person	without	it	thereby	
being	available	for	others	to	enjoy
  </div></li>
  
  <li class="list-group-item"><h4><a href="#def199"  data-toggle="collapse">Public	ownership</a></h4>
  <div id="def199" class="collapse">
    Public	ownership	refers	to	state	owned	companies	e.g.	nationalised	industries.
  </div></li>
  
  <li class="list-group-item"><h4><a href="#def200"  data-toggle="collapse">Public	sector</a></h4>
  <div id="def200" class="collapse">
    Government	organisations	that	provide	goods	and	services	in	the	economy	- for	
example	through	state	education	and	the	national	health	service
  </div></li>
  
  <!--					201-220					-->
  
  <li class="list-group-item"><h4><a href="#def201"  data-toggle="collapse">Purchasing	economies</a></h4>
  <div id="def201" class="collapse">
    Purchasing	EOS	arise	when	firms	gain	discounts	from	bulk	buying
  </div></li>
  
  <li class="list-group-item"><h4><a href="#def202"  data-toggle="collapse">Quota</a></h4>
  <div id="def202" class="collapse">
    A	quota	is	a	limit	on the	quantity	of	a	product	can	be	supplied	to	a	market
  </div></li>
  
  <li class="list-group-item"><h4><a href="#def203"  data-toggle="collapse">Rational	choice</a></h4>
  <div id="def203" class="collapse">
    ‘Rational	choice’	involves	the	weighing	up	of	costs	and	benefits	and	trying	to	maximise	
the	surplus	of	benefits	over	costs
  </div></li>
  
  <li class="list-group-item"><h4><a href="#def204"  data-toggle="collapse">Redistribution</a></h4>
  <div id="def204" class="collapse">
    Measures	taken	by	government	to	transfer	income	from	some	individuals	to	others
  </div></li>
  
  <li class="list-group-item"><h4><a href="#def205"  data-toggle="collapse">Regressive	tax</a></h4>
  <div id="def205" class="collapse">
    A	tax	is	said	to	be	regressive	when low	income	earners	pay	a	higher	proportion	of	their	
income	in	tax	than	high	income	earners
  </div></li>
  
  <li class="list-group-item"><h4><a href="#def206"  data-toggle="collapse">Regulations</a></h4>
  <div id="def206" class="collapse">
    Regulations	are	legally	enforced	rules	that	restrict	or	ban	specified	activities
  </div></li>
  
  <li class="list-group-item"><h4><a href="#def207"  data-toggle="collapse">Regulator</a></h4>
  <div id="def207" class="collapse">
    A	government	agency	that	monitors	the	performance	of	firms	in	an	industry such	as	
OFCOM	or	the	Office	of	Rail	Regulation
  </div></li>
  
  <li class="list-group-item"><h4><a href="#def208"  data-toggle="collapse">Relative	poverty</a></h4>
  <div id="def208" class="collapse">
    Relative	poverty	measures	the	extent	to	which	a	household's	financial	resources	falls	
below	an	average	income	threshold	for	the	economy
  </div></li>
  
  <li class="list-group-item"><h4><a href="#def209"  data-toggle="collapse">Road	pricing</a></h4>
  <div id="def209" class="collapse">
    A	direct	charge	to	road	users	for	their	use	of	a	particular	road	e.g.	a	motorway	toll
  </div></li>
  
  <li class="list-group-item"><h4><a href="#def210"  data-toggle="collapse">Scarcity</a></h4>
  <div id="def210" class="collapse">
	Scarce	means	limited.	There	is	only	a	limited	amount	of	resources	available	to	produce	
the	unlimited	amount	of	goods	and	services	we	desire
  </div></li>
  
  <!--  			211 - 220 			-->
  
  <li class="list-group-item"><h4><a href="#def211"  data-toggle="collapse">Self sufficiency</a></h4>
  <div id="def211" class="collapse">
	Where people	meet	their	own	wants	and	needs	without	producing	a	surplus	to	trade
  </div></li>
  
  <li class="list-group-item"><h4><a href="#def212"  data-toggle="collapse">Seller’s market</a></h4>
  <div id="def212" class="collapse">
	A	market	where	demand	exceeds	supply,	allowing	the	sellers	of	a	product	to	have	
greater	control	over	prices,	terms,	etc.	The	opposite	of	a	buyer's	market
  </div></li>
  
  <li class="list-group-item"><h4><a href="#def213"  data-toggle="collapse">Shortage</a></h4>
  <div id="def213" class="collapse">
	A situation	in	which	quantity	demanded	is	greater	than	quantity	supplied
  </div></li>
  
  <li class="list-group-item"><h4><a href="#def214"  data-toggle="collapse">Signalling</a></h4>
  <div id="def214" class="collapse">
	Prices	have	a	signalling	function	because	the	price	in	a	market	sends	important	
information	to	producers	and	consumers
  </div></li>
  
  <li class="list-group-item"><h4><a href="#def215"  data-toggle="collapse">Social	benefit</a></h4>
  <div id="def215" class="collapse">
	The	benefit	of	production	or	consumption	of	a	product	for	society	as	a	whole.	Social	
benefit	=	private	benefit	+	external	benefit
  </div></li>
  
  <li class="list-group-item"><h4><a href="#def216"  data-toggle="collapse">Social	cost</a></h4>
  <div id="def216" class="collapse">
	The	cost	of	production	or	consumption	of	a	product	for	society	as	a	whole.	Social cost	=	
private	cost	+	external	cost
  </div></li>
  
  <li class="list-group-item"><h4><a href="#def217"  data-toggle="collapse">Social	efficiency</a></h4>
  <div id="def217" class="collapse">
	The	socially	efficient	output	is	where	Marginal	Social	Cost	(MSC)	=	Marginal	Social	
Benefit.	(MSB)
  </div></li>
  
  <li class="list-group-item"><h4><a href="#def218"  data-toggle="collapse">Social	exclusion</a></h4>
  <div id="def218" class="collapse">
	When	low	income	groups	are	denied	access	to	goods	and	services	normally	available	to	
members	of	society	e.g.	healthcare
  </div></li>
  
  <li class="list-group-item"><h4><a href="#def219"  data-toggle="collapse">Spare	capacity</a></h4>
  <div id="def219" class="collapse">
	Where	a	firm	or	economy	can	produce	more	with	existing	resources.	When	there	is	
plenty	of	spare	capacity,	elasticity	of	supply	tends	to	be	high
  </div></li>
  
  <li class="list-group-item"><h4><a href="#def220"  data-toggle="collapse">Specialisaton</a></h4>
  <div id="def220" class="collapse">
	A	method	of		production	where	a	business	or area	focuses	on	the	production		of	a	
limited	scope	of	products	or	services	to	gain	greater	productive	efficiency	
  </div></li>
  
  <!-- 				221 - 230	 			-->
  
  <li class="list-group-item"><h4><a href="#def221"  data-toggle="collapse">Speculation</a></h4>
  <div id="def221" class="collapse">
	Speculation	is	the	activity	of	buying	a	good	or	service	in	anticipation	of	a	change	in	the	
price/market	value	e.g.	currency	or	stock-market	speculation
  </div></li>
  
  <li class="list-group-item"><h4><a href="#def222"  data-toggle="collapse">Spill-over	effects</a></h4>
  <div id="def222" class="collapse">
	External	effects	of	economic	activity,	which	have	an	impact	on	outsiders	who	are	not	
producing	or	consuming	a	product – these	can	be	negative	(creating	external	costs)	or	
positive	(creating	external	benefits)
  </div></li>
  
  <li class="list-group-item"><h4><a href="#def223"  data-toggle="collapse">Stakeholder	conflict</a></h4>
  <div id="def223" class="collapse">
	When	different	stakeholders	have	incompatible	objectives
  </div></li>
  
  <li class="list-group-item"><h4><a href="#def224"  data-toggle="collapse">Stakeholders</a></h4>
  <div id="def224" class="collapse">
	Groups	who	have	an	interest	in	the	activity	of	a	business	e.g.	shareholders,	managers,	
employees,	suppliers,	customers,	government,	local	communities.	Stakeholders	have	
different	objectives.
  </div></li>
  
  <li class="list-group-item"><h4><a href="#def225"  data-toggle="collapse">State	provision</a></h4>
  <div id="def225" class="collapse">
	Government-provided	good	or	services	- funded	through	tax	revenue, in	order	to provide	goods which	have	
	positive externalities	or	are	public	goods
  </div></li>
  
  <li class="list-group-item"><h4><a href="#def226"  data-toggle="collapse">Static	efficiency</a></h4>
  <div id="def226" class="collapse">
	Efficiency	occurring	in	a	single	time	period	i.e.	efficiency	now
  </div></li>
  
  <li class="list-group-item"><h4><a href="#def227"  data-toggle="collapse">Subsidy</a></h4>
  <div id="def227" class="collapse">
	Payment	to	suppliers	that	reduce	their	costs.	The	effect	of	a	subsidy	is	to	increase	
supply	and	therefore	reduce	the	market	equilibrium	price
  </div></li>
  
  <li class="list-group-item"><h4><a href="#def228"  data-toggle="collapse">Substitutes</a></h4>
  <div id="def228" class="collapse">
	Goods	in	competitive	demand	and	act	as	replacements	for	another	product
  </div></li>
  
  <li class="list-group-item"><h4><a href="#def229"  data-toggle="collapse">Substitutes	in	production</a></h4>
  <div id="def229" class="collapse">
	A	substitute	in	production	is	a	product	that	could	have	been	produced	using	the	same	
resources.	Take	the	example	of	barley.	An increase	in	the	price	of	wheat	makes	wheat	
growing	more	attractive	
  </div></li>
  
  <li class="list-group-item"><h4><a href="#def230"  data-toggle="collapse">Substitution effect</a></h4>
  <div id="def30" class="collapse">
	When	a	price	fall	encourages	consumers	to	buy	more	of	a	relatively	lower	priced	
product	and	less	of	a	higher	priced	substitute	
  </div></li>
  
  <!-- 				231 - 240	 			-->
  
  <li class="list-group-item"><h4><a href="#def231"  data-toggle="collapse">Supply</a></h4>
  <div id="def231" class="collapse">
	Quantity	of	a	good	or	service	that	a	producer	is	willing	and	able	to	supply	onto	the	
market	at	a	given	price	in	a	given	time	period	
  </div></li>
  
  <li class="list-group-item"><h4><a href="#def232"  data-toggle="collapse">Supply	chain</a></h4>
  <div id="def232" class="collapse">
	Different	stages	of	making,	distributing	and	selling	a	good	or	service	from	the	
production	of	parts,	through	to	distribution	and	sale	of	the	product
  </div></li>
  
  <li class="list-group-item"><h4><a href="#def233"  data-toggle="collapse">Supply	shock</a></h4>
  <div id="def233" class="collapse">
	An	event	that	directly	alters	firms'	costs	and	prices	shifting	the	supply	curve	either	to	
the	right	(lower	costs)	or left	(higher	costs).	E.g.	unexpected	changes	in	the	global	prices	
of	commodities	such	as	oil,	gas	and	metals	
  </div></li>
  
  <li class="list-group-item"><h4><a href="#def234"  data-toggle="collapse">Technology</a></h4>
  <div id="def234" class="collapse">
	The	application	of	knowledge	to	production	
  </div></li>
  
  <li class="list-group-item"><h4><a href="#def235"  data-toggle="collapse">Time	lags</a></h4>
  <div id="def235" class="collapse">
	Time	lags	occur	in	production,	particularly	in	agriculture,	when	decisions	about	the	
quantity	to	be	produced	are	made	well	ahead	of	the	actual	sale.	Demand	and	the	price	
may	change	in	the	interval,	creating	a	problem	for	the	producer	
  </div></li>
  
  <li class="list-group-item"><h4><a href="#def236"  data-toggle="collapse">Total	costs</a></h4>
  <div id="def236" class="collapse">
	Total	Costs	(TC)	=	total	fixed	costs	+	total	variable	costs
  </div></li>
  
  <li class="list-group-item"><h4><a href="#def237"  data-toggle="collapse">Total	revenue</a></h4>
  <div id="def237" class="collapse">
	Total	revenue	(TR)	is	found	by	multiplying	price	(P)	by	the	number	of	units	sold	(Q).	TR	=	
P	x	Q
  </div></li>
  
  <li class="list-group-item"><h4><a href="#def238"  data-toggle="collapse">Tradeable	permits</a></h4>
  <div id="def238" class="collapse">
	Government	issued	licences	allowing	firms	to	emit	a	specified	amount	of	pollutant	e.g.
C02.	Firms	can	buy	and	sell	permits	in	a	market
  </div></li>
  
  <li class="list-group-item"><h4><a href="#def239"  data-toggle="collapse">Trade-off</a></h4>
  <div id="def239" class="collapse">
	The	process	of	making	a	choice	between	alternatives	e.g.	deciding	if	is	worth	sacrificing	
a	new	car	for	a	holiday
  </div></li>
  
  <li class="list-group-item"><h4><a href="#def240"  data-toggle="collapse">Tragedy	of the	Commons</a></h4>
  <div id="def240" class="collapse">
	When	no	one	owns	a	resource,	it	gets	over-used,	for	example	fish	stocks	and	
deforestation	- people	use	and	benefit	from	it	without	regard	to	the	effect	on	others
  </div></li>
   
   <!-- 			241 -  245			 -->
  
  <li class="list-group-item"><h4><a href="#def241"  data-toggle="collapse">Value	judgement</a></h4>
  <div id="def241" class="collapse">
	A	view of	the	rightness or	wrongness	of	something,	based	on	a	personal	view
  </div></li>
  
  <li class="list-group-item"><h4><a href="#def242"  data-toggle="collapse">Variable cost</a></h4>
  <div id="def242" class="collapse">
	Variable	costs	vary	directly	with	output.	I.e.	as	production	rises,	a	firm	will	face	higher	
total variable	costs.	Examples	of	variable	costs	include	costs	of	raw	materials,	labour	
costs	and	consumables
  </div></li>
  
  <li class="list-group-item"><h4><a href="#def243"  data-toggle="collapse">Welfare	loss</a></h4>
  <div id="def243" class="collapse">
	The	excess	of	social	cost	over	social	benefit	for	a	given	output
  </div></li>
  
  <li class="list-group-item"><h4><a href="#def244"  data-toggle="collapse">Willingness	to	pay</a></h4>
  <div id="def244" class="collapse">
	The	maximum	price	a	consumer	is	prepared	pay	to	obtain	a	product
  </div></li>
  
  <li class="list-group-item"><h4><a href="#def245"  data-toggle="collapse">Zero Hours Contracts</a></h4>
  <div id="def245" class="collapse">
	Under	zero-hours	contracts	employees	agree	to	be	available	for	work	as	and	when	it	is	
required
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
    </form>
   </body>
</html>