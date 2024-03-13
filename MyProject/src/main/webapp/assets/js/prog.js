function makeRequestObject() {
	var xmlHttp = false;
	try {
		xmlHttp = new ActiveXObject('Msxml2.XMLHTTP');
	}
	catch (e) {
		try {
			xmlHttp = new ActiveXObject('Microsoft.XMLHTTP');
		}
		catch (E) {
			xmlHttp = false;
		}
	}
	if (!xmlHttp && typeof (XMLHttpRequest) != 'undefined') {

		xmlHttp = new XMLHttpRequest();
	}
	return xmlHttp;
}

function getQuest() {
	var xmlHttp = makeRequestObject();
	var _url = 'GetQuestion.jsp?uid=' + document.getElementById("txt_email").value;
	xmlHttp.open('GET', _url, true);
	xmlHttp.onreadystatechange = function() {
		if (xmlHttp.readyState == 4 && xmlHttp.status == 200) {
			var content = xmlHttp.responseText;
			if (content) {
				document.getElementById("info").innerHTML = content;
			}
		}
	}
	xmlHttp.send(null);
}

function validate_addStock(id) {
	var xmlHttp = makeRequestObject();
	var _url = 'Validation_addStock.jsp?prod_id=' + id;
	xmlHttp.open('GET', _url, true);
	xmlHttp.onreadystatechange = function() {
		if (xmlHttp.readyState == 4 && xmlHttp.status == 200) {
			var content = xmlHttp.responseText;
			if (content) {
				document.getElementById("info").innerHTML = content;
			}
		}
	}
	xmlHttp.send(null);
}

function validate_assign(id) {
	var xmlHttp = makeRequestObject();
	var _url = 'Validation_assigining.jsp?prod_id=' + id;

	xmlHttp.open('GET', _url, true);

	xmlHttp.onreadystatechange = function() {
		if (xmlHttp.readyState == 4 && xmlHttp.status == 200) {
			var content = xmlHttp.responseText;
			if (content) {
				document.getElementById("info").innerHTML = content;
			}
		}
	}
	xmlHttp.send(null);
}

function validate_email(id) {
	var xmlHttp = makeRequestObject();
	var _url = 'Validation_email.jsp?txt_email=' + id;

	xmlHttp.open('GET', _url, true);

	xmlHttp.onreadystatechange = function() {
		if (xmlHttp.readyState == 4 && xmlHttp.status == 200) {
			var content = xmlHttp.responseText;
			if (content) {
				document.getElementById("info").innerHTML = content;
			}
		}
	}
	xmlHttp.send(null);
}

function validate_email_for_newAssigning(email) {
	var xmlHttp = makeRequestObject();
	var _url = 'ValidationEmail_newAssigning.jsp?txt_email=' + email;

	xmlHttp.open('GET', _url, true);

	xmlHttp.onreadystatechange = function() {
		if (xmlHttp.readyState == 4 && xmlHttp.status == 200) {
			var content = xmlHttp.responseText;
			if (content) {
				document.getElementById("info").innerHTML = content;
			}
		}
	}
	xmlHttp.send(null);
}

function validate_addFaulty(id) {

	var xmlHttp = makeRequestObject();
	var _url = 'Validation_addFaulty.jsp?prod_id=' + id;

	xmlHttp.open('GET', _url, true);

	xmlHttp.onreadystatechange = function() {
		if (xmlHttp.readyState == 4 && xmlHttp.status == 200) {
			var content = xmlHttp.responseText;
			if (content) {
				document.getElementById("info").innerHTML = content;
			}
		}
	}
	xmlHttp.send(null);
}

function Registration() {
	let firs = document.getElementById("Name").value;
	let password = document.getElementById("password").value;
	let confirm_password = document.getElementById("confirm").value;
	if (firs.length == 0 || firs.length < 2) {
		document.getElementById("setContent").innerHTML = "Please Enter valid name ";
		return false;
	}
	if (password != confirm_password) {
		document.getElementById("setContent").innerHTML = "Confirm Password and Password did not matched.";
		return false;
	}
	document.getElementById("setContent").innerHTML = " ";
	return true;
}

function confirmation() {
	alert("PRODUCT ADDED TO STOCK ");
}

function confirmation_faulty() {
	alert("PRODUCT ADDED TO FAULTY");
}

function confirm_assign() {
	alert("PRODUCT ASSIGNED");
}