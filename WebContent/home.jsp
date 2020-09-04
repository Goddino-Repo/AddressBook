<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="utf-8"%>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <!-- CDN Bootstrap CSS -->
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

        <!-- CDN Bootstrap JS -->
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <!-- Personal JS and CSS -->
        <script type="text/javascript" src="./js/index.js"></script>
        <link href="./css/main.css" rel="stylesheet" type="text/css">

        <link rel="shortcut icon" href="./src/images/favicon.ico">
        <title>Address Book ~ Home</title>
    </head>
    <body>
    <form action="/AddressBook/AddressBook" method="post">
    	<input type="hidden" name="action" value="init1">
    	<input type="submit" value="restore">
    </form>
        <div class="container" id="box">
            <div class="row">
                <div class="col-sm">
                    <p class="title">Add a contact</p>
                    <form action="/AddressBook" method="post">
                        <div class="form-row">
                            <div class="col-md-12 mb-3">
                                <label for="validationDefault01" class="title">
                                    First name
                                </label>
                                <input type="text" class="form-control" id="validationDefault01" placeholder="Tera" required>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="col-md-12 mb-3">
                                <label for="validationDefault02" class="title">
                                    Last name
                                </label>
                                <input type="text" class="form-control" id="validationDefault02" placeholder="Reed" required>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="col-md-12 mb-3">
                                <label for="validationDefault03">
                                    City
                                </label>
                                <input type="text" class="form-control" id="validationDefault03" placeholder="New York" required>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="col-md-12 mb-3">
                                <label for="validationDefault04">
                                    State
                                </label>
                                <select class="custom-select" id="validationDefault04" required>
                                    <option selected disabled value="">Choose...</option>
                                    <option>Afghanistan</option>
                                    <option>Albania</option>
                                    <option>Algeria</option>
                                    <option>Andorra</option>
                                    <option>Angola</option>
                                    <option>Antigua e Barbuda</option>
                                    <option>Arabia Saudita</option>
                                    <option>Argentina</option>
                                    <option>Armenia</option>
                                    <option>Australia </option>
                                    <option>Austria</option>
                                    <option>Azerbaigian</option>
                                    <option>Bahamas</option>
                                    <option>Bahrein</option>
                                    <option>Bangladesh</option>
                                    <option>Barbados</option>
                                    <option>Belgio</option>
                                    <option>Belize</option>
                                    <option>Benin</option>
                                    <option>Bhutan</option>
                                    <option>Bielorussia</option>
                                    <option>Bolivia</option>
                                    <option>Bosnia ed Erzegovina</option>
                                    <option>Botswana</option>
                                    <option>Brasile</option>
                                    <option>Brunei</option>
                                    <option>Bulgaria</option>
                                    <option>Burkina Faso</option>
                                    <option>Burundi</option>
                                    <option>Cambogia</option>
                                    <option>Camerun</option>
                                    <option>Canada</option>
                                    <option>Capo Verde</option>
                                    <option>Ciad</option>
                                    <option>Cile</option>
                                    <option>Cina </option>
                                    <option>Cipro</option>
                                    <option>Città del Vaticano</option>
                                    <option>Colombia</option>
                                    <option>Comore</option>
                                    <option>Corea del Nord</option>
                                    <option>Corea del Sud </option>
                                    <option>Costa d’Avorio</option>
                                    <option>Costa Rica</option>
                                    <option>Croazia</option>
                                    <option>Cuba</option>
                                    <option>Danimarca </option>
                                    <option>Dominica</option>
                                    <option>Ecuador</option>
                                    <option>Egitto</option>
                                    <option>El Salvador</option>
                                    <option>Emirati Arabi Uniti</option>
                                    <option>Eritrea</option>
                                    <option>Estonia</option>
                                    <option>Etiopia</option>
                                    <option>Figi</option>
                                    <option>Filippine</option>
                                    <option>Finlandia</option>
                                    <option>Francia</option>
                                    <option>Gabon</option>
                                    <option>Gambia</option>
                                    <option>Georgia</option>
                                    <option>Germania</option>
                                    <option>Ghana</option>
                                    <option>Giamaica</option>
                                    <option>Giappone</option>
                                    <option>Gibuti</option>
                                    <option>Giordania</option>
                                    <option>Grecia</option>
                                    <option>Grenada</option>
                                    <option>Guatemala</option>
                                    <option>Guinea</option>
                                    <option>Guinea-Bissau</option>
                                    <option>Guinea Equatoriale</option>
                                    <option>Guyana</option>
                                    <option>Haiti</option>
                                    <option>Honduras</option>
                                    <option>India </option>
                                    <option>Indonesia</option>
                                    <option>Iran</option>
                                    <option>Iraq</option>
                                    <option>Irlanda</option>
                                    <option>Islanda</option>
                                    <option>Isole Marshall</option>
                                    <option>Isole Salomone</option>
                                    <option>Israele</option>
                                    <option>Italia </option>
                                    <option>Kazakistan</option>
                                    <option>Kenya</option>
                                    <option>Kirghizistan</option>
                                    <option>Kiribati</option>
                                    <option>Kuwait</option>
                                    <option>Laos</option>
                                    <option>Lesotho</option>
                                    <option>Lettonia</option>
                                    <option>Libano</option>
                                    <option>Liberia</option>
                                    <option>Libia</option>
                                    <option>Liechtenstein</option>
                                    <option>Lituania</option>
                                    <option>Lussemburgo</option>
                                    <option>Macedonia</option>
                                    <option>Madagascar</option>
                                    <option>Malawi</option>
                                    <option>Maldive </option>
                                    <option>Malesia</option>
                                    <option>Mali</option>
                                    <option>Malta</option>
                                    <option>Marocco</option>
                                    <option>Mauritania</option>
                                    <option>Mauritius</option>
                                    <option>Messico</option>
                                    <option>Micronesia</option>
                                    <option>Moldavia</option>
                                    <option>Monaco</option>
                                    <option>Mongolia</option>
                                    <option>Montenegro</option>
                                    <option>Mozambico</option>
                                    <option>Myanmar o Birmania </option>
                                    <option>Namibia</option>
                                    <option>Nauru</option>
                                    <option>Nepal </option>
                                    <option>Nicaragua</option>
                                    <option>Niger</option>
                                    <option>Nigeria</option>
                                    <option>Norvegia</option>
                                    <option>Nuova Zelanda</option>
                                    <option>Oman</option>
                                    <option>Paesi Bassi</option>
                                    <option>Pakistan</option>
                                    <option>Palau</option>
                                    <option>Palestina</option>
                                    <option>Panama</option>
                                    <option>Papua Nuova Guinea</option>
                                    <option>Paraguay</option>
                                    <option>Perù</option>
                                    <option>Polonia</option>
                                    <option>Portogallo </option>
                                    <option>Qatar</option>
                                    <option>Regno Unito</option>
                                    <option>Repubblica Ceca</option>
                                    <option>Repubblica Centrafricana</option>
                                    <option>Repubblica del Congo</option>
                                    <option>Repubblica Democratica del Congo</option>
                                    <option>Repubblica Dominicana</option>
                                    <option>Romania</option>
                                    <option>Ruanda</option>
                                    <option>Russia</option>
                                    <option>Saint Kitts e Nevis</option>
                                    <option>Saint Vincent e Grenadine</option>
                                    <option>Samoa</option>
                                    <option>San Marino</option>
                                    <option>Santa Lucia</option>
                                    <option>São Tomé e Príncipe</option>
                                    <option>Senegal</option>
                                    <option>Serbia</option>
                                    <option>Seychelles</option>
                                    <option>Sierra Leone</option>
                                    <option>Singapore</option>
                                    <option>Siria</option>
                                    <option>Slovacchia</option>
                                    <option>Slovenia</option>
                                    <option>Somalia</option>
                                    <option>Spagna </option>
                                    <option>Sri Lanka</option>
                                    <option>Stati Uniti</option>
                                    <option>Sudafrica</option>
                                    <option>Sudan</option>
                                    <option>Sudan del Sud</option>
                                    <option>Suriname</option>
                                    <option>Svezia</option>
                                    <option>Svizzera</option>
                                    <option>Swaziland</option>
                                    <option>Tagikistan</option>
                                    <option>Taiwan</option>
                                    <option>Tanzania</option>
                                    <option>Thailandia </option>
                                    <option>Timor Est</option>
                                    <option>Togo</option>
                                    <option>Tonga</option>
                                    <option>Trinidad e Tobago</option>
                                    <option>Tunisia</option>
                                    <option>Turchia</option>
                                    <option>Turkmenistan</option>
                                    <option>Tuvalu</option>
                                    <option>Ucraina</option>
                                    <option>Uganda</option>
                                    <option>Ungheria </option>
                                    <option>Uruguay</option>
                                    <option>Uzbekistan</option>
                                    <option>Vanuatu</option>
                                    <option>Venezuela</option>
                                    <option>Vietnam</option>
                                    <option>Yemen</option>
                                    <option>Zambia</option>
                                    <option>Zimbabwe</option>

                                </select>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="col-md-12 mb-3">
                                <label for="validationDefault05">
                                    Zip
                                </label>
                                <input type="text" class="form-control" id="validationDefault05" onchange="validateZip()" required maxlength="5" placeholder="">
                            </div>
                        </div>
                        <button class="btn btn-primary" type="submit">Create</button>
                    </form>
                </div>
                <div class="col-sm">
                    <p class="title">Read Address Book</p>
                    <form action="#" method="get">
                        <button type="submit" id="buttonRead" class="btn btn-primary">Read</button>
                    </form>
                </div>
                <div class="col-sm">
                    <p class="title">Update a contact</p>
                    <form action="#" method="post">
                        <div class="form-row">
                            <div class="col-md-12 mb-3">
                                <label for="validationDefault00" class="title">
                                    Contact ID
                                </label>
                                <input type="number" class="form-control" id="validationDefault00" placeholder="1">
                            </div>
                        </div>
                        <div id="hideUpdate" class="form-row">
                            <div class="col-md-12 mb-3">
                                <label for="attribute1">
                                    Name
                                </label>
                                <input hidden id="attribute1" readonly type="text" value="Mario Rossi">
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="col-md-12 mb-3">
                                <label for="validationDefault01-2" class="title">
                                    New first name
                                </label>
                                <input type="text" class="form-control" id="validationDefault01-2" placeholder="Tera">
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="col-md-12 mb-3">
                                <label for="validationDefault02-2" class="title">
                                    New Last name
                                </label>
                                <input type="text" class="form-control" id="validationDefault02-2" placeholder="Reed">
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="col-md-12 mb-3">
                                <label for="validationDefault03-2">
                                    New city
                                </label>
                                <input type="text" class="form-control" id="validationDefault03-2"
                                       placeholder="New York">
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="col-md-12 mb-3">
                                <label for="validationDefault04-2">
                                    New state
                                </label>
                                <select class="custom-select" id="validationDefault04-2">
                                    <option selected disabled value="">Choose...</option>
                                    <option>Afghanistan</option>
                                    <option>Albania</option>
                                    <option>Algeria</option>
                                    <option>Andorra</option>
                                    <option>Angola</option>
                                    <option>Antigua e Barbuda</option>
                                    <option>Arabia Saudita</option>
                                    <option>Argentina</option>
                                    <option>Armenia</option>
                                    <option>Australia</option>
                                    <option>Austria</option>
                                    <option>Azerbaigian</option>
                                    <option>Bahamas</option>
                                    <option>Bahrein</option>
                                    <option>Bangladesh</option>
                                    <option>Barbados</option>
                                    <option>Belgio</option>
                                    <option>Belize</option>
                                    <option>Benin</option>
                                    <option>Bhutan</option>
                                    <option>Bielorussia</option>
                                    <option>Bolivia</option>
                                    <option>Bosnia ed Erzegovina</option>
                                    <option>Botswana</option>
                                    <option>Brasile</option>
                                    <option>Brunei</option>
                                    <option>Bulgaria</option>
                                    <option>Burkina Faso</option>
                                    <option>Burundi</option>
                                    <option>Cambogia</option>
                                    <option>Camerun</option>
                                    <option>Canada</option>
                                    <option>Capo Verde</option>
                                    <option>Ciad</option>
                                    <option>Cile</option>
                                    <option>Cina</option>
                                    <option>Cipro</option>
                                    <option>Città del Vaticano</option>
                                    <option>Colombia</option>
                                    <option>Comore</option>
                                    <option>Corea del Nord</option>
                                    <option>Corea del Sud</option>
                                    <option>Costa d’Avorio</option>
                                    <option>Costa Rica</option>
                                    <option>Croazia</option>
                                    <option>Cuba</option>
                                    <option>Danimarca</option>
                                    <option>Dominica</option>
                                    <option>Ecuador</option>
                                    <option>Egitto</option>
                                    <option>El Salvador</option>
                                    <option>Emirati Arabi Uniti</option>
                                    <option>Eritrea</option>
                                    <option>Estonia</option>
                                    <option>Etiopia</option>
                                    <option>Figi</option>
                                    <option>Filippine</option>
                                    <option>Finlandia</option>
                                    <option>Francia</option>
                                    <option>Gabon</option>
                                    <option>Gambia</option>
                                    <option>Georgia</option>
                                    <option>Germania</option>
                                    <option>Ghana</option>
                                    <option>Giamaica</option>
                                    <option>Giappone</option>
                                    <option>Gibuti</option>
                                    <option>Giordania</option>
                                    <option>Grecia</option>
                                    <option>Grenada</option>
                                    <option>Guatemala</option>
                                    <option>Guinea</option>
                                    <option>Guinea-Bissau</option>
                                    <option>Guinea Equatoriale</option>
                                    <option>Guyana</option>
                                    <option>Haiti</option>
                                    <option>Honduras</option>
                                    <option>India</option>
                                    <option>Indonesia</option>
                                    <option>Iran</option>
                                    <option>Iraq</option>
                                    <option>Irlanda</option>
                                    <option>Islanda</option>
                                    <option>Isole Marshall</option>
                                    <option>Isole Salomone</option>
                                    <option>Israele</option>
                                    <option>Italia</option>
                                    <option>Kazakistan</option>
                                    <option>Kenya</option>
                                    <option>Kirghizistan</option>
                                    <option>Kiribati</option>
                                    <option>Kuwait</option>
                                    <option>Laos</option>
                                    <option>Lesotho</option>
                                    <option>Lettonia</option>
                                    <option>Libano</option>
                                    <option>Liberia</option>
                                    <option>Libia</option>
                                    <option>Liechtenstein</option>
                                    <option>Lituania</option>
                                    <option>Lussemburgo</option>
                                    <option>Macedonia</option>
                                    <option>Madagascar</option>
                                    <option>Malawi</option>
                                    <option>Maldive</option>
                                    <option>Malesia</option>
                                    <option>Mali</option>
                                    <option>Malta</option>
                                    <option>Marocco</option>
                                    <option>Mauritania</option>
                                    <option>Mauritius</option>
                                    <option>Messico</option>
                                    <option>Micronesia</option>
                                    <option>Moldavia</option>
                                    <option>Monaco</option>
                                    <option>Mongolia</option>
                                    <option>Montenegro</option>
                                    <option>Mozambico</option>
                                    <option>Myanmar o Birmania</option>
                                    <option>Namibia</option>
                                    <option>Nauru</option>
                                    <option>Nepal</option>
                                    <option>Nicaragua</option>
                                    <option>Niger</option>
                                    <option>Nigeria</option>
                                    <option>Norvegia</option>
                                    <option>Nuova Zelanda</option>
                                    <option>Oman</option>
                                    <option>Paesi Bassi</option>
                                    <option>Pakistan</option>
                                    <option>Palau</option>
                                    <option>Palestina</option>
                                    <option>Panama</option>
                                    <option>Papua Nuova Guinea</option>
                                    <option>Paraguay</option>
                                    <option>Perù</option>
                                    <option>Polonia</option>
                                    <option>Portogallo</option>
                                    <option>Qatar</option>
                                    <option>Regno Unito</option>
                                    <option>Repubblica Ceca</option>
                                    <option>Repubblica Centrafricana</option>
                                    <option>Repubblica del Congo</option>
                                    <option>Repubblica Democratica del Congo</option>
                                    <option>Repubblica Dominicana</option>
                                    <option>Romania</option>
                                    <option>Ruanda</option>
                                    <option>Russia</option>
                                    <option>Saint Kitts e Nevis</option>
                                    <option>Saint Vincent e Grenadine</option>
                                    <option>Samoa</option>
                                    <option>San Marino</option>
                                    <option>Santa Lucia</option>
                                    <option>São Tomé e Príncipe</option>
                                    <option>Senegal</option>
                                    <option>Serbia</option>
                                    <option>Seychelles</option>
                                    <option>Sierra Leone</option>
                                    <option>Singapore</option>
                                    <option>Siria</option>
                                    <option>Slovacchia</option>
                                    <option>Slovenia</option>
                                    <option>Somalia</option>
                                    <option>Spagna</option>
                                    <option>Sri Lanka</option>
                                    <option>Stati Uniti</option>
                                    <option>Sudafrica</option>
                                    <option>Sudan</option>
                                    <option>Sudan del Sud</option>
                                    <option>Suriname</option>
                                    <option>Svezia</option>
                                    <option>Svizzera</option>
                                    <option>Swaziland</option>
                                    <option>Tagikistan</option>
                                    <option>Taiwan</option>
                                    <option>Tanzania</option>
                                    <option>Thailandia</option>
                                    <option>Timor Est</option>
                                    <option>Togo</option>
                                    <option>Tonga</option>
                                    <option>Trinidad e Tobago</option>
                                    <option>Tunisia</option>
                                    <option>Turchia</option>
                                    <option>Turkmenistan</option>
                                    <option>Tuvalu</option>
                                    <option>Ucraina</option>
                                    <option>Uganda</option>
                                    <option>Ungheria</option>
                                    <option>Uruguay</option>
                                    <option>Uzbekistan</option>
                                    <option>Vanuatu</option>
                                    <option>Venezuela</option>
                                    <option>Vietnam</option>
                                    <option>Yemen</option>
                                    <option>Zambia</option>
                                    <option>Zimbabwe</option>
                                </select>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="col-md-12 mb-3">
                                <label for="validationDefault05-2">
                                    New zip
                                </label>
                                <input type="text" class="form-control" id="validationDefault05-2"
                                       onchange="validateZip()" maxlength="5" placeholder="">
                            </div>
                        </div>
                        <label>
                            <input name="action" value="update" hidden>
                        </label>
                        <button class="btn btn-primary" type="submit">Update</button>
                    </form>
				</div>
				<div class="col-sm">
                    <p class="title">Remove a contact</p>
                    <form action="#" method="post">
                        <div class="form-row">
                            <div class="col-md-12 mb-3">
                                <label for="validationDefault00-3" class="title">
                                    Contact ID
                                </label>
                                <input type="number" class="form-control" id="validationDefault00-3" placeholder="1">
                            </div>
                        </div>
                        <div id="hiddenDelete" class="form-row">
                            <div class="col-md-12 mb-3">
                                <label for="attribute2">
                                    Name
                                </label>
                                <input hidden id="attribute2" readonly type="text" value="Mario Rossi">
                            </div>
                        </div>
                        <label>
                            <input hidden name="action" value="delete">
                        </label>
                        <button class="btn btn-primary" type="submit" id="deleteButton" onclick="confirmDeletion()">Delete</button>
                    </form>
                </div>
            </div>
        </div>
    </body>
</html>