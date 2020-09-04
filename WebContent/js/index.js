let domain = "localhost";

let port = "8080";

let fullDomain = domain + ":" + port;

function confirmDeletion(params) {
	
	let parameters = params.split(",");
	
	let id = parameters[0].trim();
	let name = parameters[1].trim();
	let surname = parameters[2].trim();
	
	let inputId = document.getElementById("deleteIdSelector");
	let spanName = document.getElementById("spanName");
	let spanSurname = document.getElementById("spanSurname");
	
	inputId.value = id;
	spanName.innerHTML = name;
	spanSurname.innerHTML = surname;
}

function passParams(params) {
	let textId = document.getElementById("textId");
	let inputName = document.getElementById("inputName");
	let inputSurname = document.getElementById("inputSurname");
	let inputPhone = document.getElementById("inputPhone");
	let inputEmail = document.getElementById("inputEmail");
	let inputCompany = document.getElementById("inputCompany");
	
	let parameters = params.split(",");
	
	let id = parameters[0].trim();
	let name = parameters[1].trim();
	let surname = parameters[2].trim();
	let phone = parameters[3].trim();
	let email = parameters[4].trim();
	let company = parameters[5].trim();
	
	textId.value = id;
	inputName.value = name;
	inputSurname.value = surname;
	inputPhone.value = phone;
	inputEmail.value = email;
	inputCompany.value = company;
	
}

function validateZip() {
    if(document.getElementById("validationDefault05").value.length > 5) {
        alert("Please, attention! Zip number has more than 5 characters");
        let zipValue = document.getElementById("validationDefault05").value;
        document.getElementById("validationDefault05").value = zipValue.substr(0, 5);
    }
    if(document.getElementById("validationDefault05").value.length < 5) {
        let quantity = 5 - document.getElementById("validationDefault05").value.length;
        let zip = "";
        for(let i = 0; i < quantity; i++) {
            zip += "0";
        }
        zip += document.getElementById("validationDefault05").value;
        document.getElementById("validationDefault05").value = zip;
    }
}

function generateZip() {
    let zipPlaceholder1 = "";
    for(let i=0; i<5; i++) {
        zipPlaceholder1 += Math.floor(Math.random() * 10);
    }
    document.getElementById("validationDefault05").placeholder = zipPlaceholder1;
    let zipPlaceholder2 = "";
    for(let i=0; i<5; i++) {
        zipPlaceholder2 += Math.floor(Math.random() * 10);
    }
    document.getElementById("validationDefault05").placeholder = zipPlaceholder2;
}

function addOption(item, index) {
    let statesList = document.getElementById("validationDefault04");
    statesList.options[statesList.options.length] = new Option(item, item);
}

function addStates() {
    let file = "/AddressBook/states.json";
    try {
        fetch(file)
            .then(response => response.json())
            .then(jsonResponse => console.log("JSON states: " + jsonResponse.states.forEach(addOption())));
    } catch(e) {
        console.error("Error during JSON file reading: " + e);
    }
}

function getReadPage() {
	if(window.location.pathname != "/AddressBook/AddressBook")
		window.location.replace("/AddressBook/AddressBook");
}

function showUuid() {
	document.getElementById("idToShow").innerHTML = document.getElementById("idFromShow").value.split("-")[0];
	let hashMapSize = document.getElementById("hashMapLength").innerHTML;
	for(let i=0; i<hashMapSize; i++) {
		document.getElementsByClassName("uuidShowText")[i].innerHTML = document.getElementsByClassName("uuidShowText")[i].innerHTML.split("-")[0];
	}
}

function setTbodyHeight() {
	let clientHeight = document.getElementsByTagName("html")[0].clientHeight;
	let newHeight = clientHeight - 100;
}

/*function adjustSelectorStyle() {
	document.getElementsByClassName("row")[2].style["margin-top"] = "6px";
}
*/
$(document).ready(function() {
    $('#readContactsTable').DataTable();
} );