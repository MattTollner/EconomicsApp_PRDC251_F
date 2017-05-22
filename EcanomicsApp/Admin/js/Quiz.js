document.getElementById("form1").onsubmit=function()	{
	q1v = document.getElementByName("q1");
	for(i=0; i < q1v.length; i++) {
	if (q1v[i].checked) [
	q1vscore = parseInt(q1v[i].value);
		}
		}
	
	q2v = document.getElementByName("q2");
	for(i=0; i < q2v.length; i++) {
	if (q2v[i].checked) [
	q2vscore = parseInt(q2v[i].value);
		}
		}
	
	q3v = document.getElementByName("q3");
	for(i=0; i < q3v.length; i++) {
	if (q3v[i].checked) [
	q3vscore = parseInt(q3v[i].value);
		}
		}

	q4v = document.getElementByName("q4");
	for(i=0; i < q4v.length; i++) {
	if (q4v[i].checked) [
	q4vscore = parseInt(q4v[i].value);
		}
		}
	
	q5v = document.getElementByName("q5");
	for(i=0; i < q5v.length; i++) {
	if (q5v[i].checked) [
	q5vscore = parseInt(q5v[i].value);
		}
		}
	
	q6v = document.getElementByName("q6");
	for(i=0; i < q6v.length; i++) {
	if (q6v[i].checked) [
	q6vscore = parseInt(q6v[i].value);
		}
		}
	
	q7v = document.getElementByName("q7");
	for(i=0; i < q7v.length; i++) {
	if (q7v[i].checked) [
	q7vscore = parseInt(q7v[i].value);
		}
		}
	
	q8v = document.getElementByName("q8");
	for(i=0; i < q8v.length; i++) {
	if (q1v[i].checked) [
	q8vscore = parseInt(q8v[i].value);
		}
		}
	
	q9v = document.getElementByName("q9");
	for(i=0; i < q9v.length; i++) {
	if (q9v[i].checked) [
	q9vscore = parseInt(q9v[i].value);
		}
		}
	
	q10v = document.getElementByName("q10");
	for(i=0; i < q10v.length; i++) {
	if (q10v[i].checked) [
	q10vscore = parseInt(q10v[i].value);
		}
	}
	
	result = q1vscore + q2vscore + q3vscore + q4vscore + q5vscore + q6vscore + q7vscore + q8vscore + q9vscore + q10vscore;
	document.getElementById("grade").innerHTML = result;



return false; // required to not refresh the page; just leave this here
} //this ends the submit function