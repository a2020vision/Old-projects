function dothisstuff(numPoles) {
	var check
	check[0]=isNumeric(numPoles,"Your 'number of poles' is non-numeric!")
//	check[1]=isNumeric(numZeros,"your 'number of zeros' is non-numeric!")
	if (check[0] == true/* && check[1] == true*/) {
		setCookie("numPoles",numPoles,1)
		alert("you set cookies")
		//setCookie("numZeros",numZeros,1)
		//window.location="./window2.html"
	}
}



// If the element's string matches the regular expression it is all numbers
function isNumeric(elem, helperMsg){
	var numericExpression = /^[0-9]+$/;
	if(elem.value.match(numericExpression)){
		return true;
	}else{
		//alert(helperMsg);
		//elem.focus();
		return false;
	}
}

function setCookie(c_name,value,expiredays)
{
	if (document.cookie != "") {
		userName = document.cookie.split("=")[1]
	}

	var exdate=new Date();
	exdate.setDate(exdate.getDate()+expiredays);
	document.cookie=c_name+ "=" +escape(value)+
	((expiredays==null) ? "" : ";expires="+exdate.toGMTString());
}
