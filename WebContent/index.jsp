<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="com.address.book.*"%>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="ISO-8859-1">
		
		<!-- CSS only -->
		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/css/bootstrap.css">
		<link rel="stylesheet" href="https://cdn.datatables.net/1.10.21/css/dataTables.bootstrap4.min.css">
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
		<!-- JS, Popper.js, and jQuery -->
		<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
		<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
		<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
		<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
		<script src="https://cdn.datatables.net/1.10.21/js/jquery.dataTables.min.js"></script>
		<script src="https://cdn.datatables.net/1.10.21/js/dataTables.bootstrap4.min.js"></script>
		
		<script src="./js/index.js"></script>
		<link rel="shortcut icon" href="./src/images/favicon.ico">
		<title>
			Address Book
		</title>
		<link href="./css/main.css" rel="stylesheet" type="text/css">
	</head>
	<body id="addressBookBody" onload="getReadPage(); showUuid();">
		<div id="addresses">
			<form id="addContact" action="/AddressBook/AddressBook" method="post"></form>
			<table id="readContactsTable" class="table table-container table-bordered">
				<thead class="thead-dark">
					<tr>
						<th scope="col">#</th>
						<th scope="col">First Name</th>
						<th scope="col">Last Name</th>
						<th scope="col">Phone</th>
						<th scope="col">E-mail</th>
						<th scope="col">Company</th>
						<th scope="col">Update</th>
						<th scope="col">Delete</th>
					</tr>
				</thead>
					<tbody>
					<c:forEach items="${allContacts}" var="contact">
					<tr>
						<th scope="row" class="uuidShowText">${contact.key}</th>
						<td>${contact.value.name}</td>
						<td>${contact.value.surname}</td>
						<td>${contact.value.phone}</td>
						<td>${contact.value.email}</td>
						<td>${contact.value.company}</td>
						<td><button type="button" class="btn btn-primary" data-toggle="modal" data-target="#modalUpdate" value="${contact.key},${contact.value.name},${contact.value.surname},${contact.value.phone},${contact.value.email},${contact.value.company}" onclick="passParams(this.value)">
								<svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-pencil" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
									<path fill-rule="evenodd" d="M11.293 1.293a1 1 0 0 1 1.414 0l2 2a1 1 0 0 1 0 1.414l-9 9a1 1 0 0 1-.39.242l-3 1a1 1 0 0 1-1.266-1.265l1-3a1 1 0 0 1 .242-.391l9-9zM12 2l2 2-9 9-3 1 1-3 9-9z"/>
									<path fill-rule="evenodd" d="M12.146 6.354l-2.5-2.5.708-.708 2.5 2.5-.707.708zM3 10v.5a.5.5 0 0 0 .5.5H4v.5a.5.5 0 0 0 .5.5H5v.5a.5.5 0 0 0 .5.5H6v-1.5a.5.5 0 0 0-.5-.5H5v-.5a.5.5 0 0 0-.5-.5H3z"/>
								</svg>
							</button>
						</td>
						<td>
							<button id="deleteButton" type="button" data-toggle="modal" data-target="#modalDelete" class="btn btn-primary" name="id" value="${contact.key},${contact.value.name},${contact.value.surname}" onclick="confirmDeletion(this.value)">
								<svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-trash-fill" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
									<path fill-rule="evenodd" d="M2.5 1a1 1 0 0 0-1 1v1a1 1 0 0 0 1 1H3v9a2 2 0 0 0 2 2h6a2 2 0 0 0 2-2V4h.5a1 1 0 0 0 1-1V2a1 1 0 0 0-1-1H10a1 1 0 0 0-1-1H7a1 1 0 0 0-1 1H2.5zm3 4a.5.5 0 0 1 .5.5v7a.5.5 0 0 1-1 0v-7a.5.5 0 0 1 .5-.5zM8 5a.5.5 0 0 1 .5.5v7a.5.5 0 0 1-1 0v-7A.5.5 0 0 1 8 5zm3 .5a.5.5 0 0 0-1 0v7a.5.5 0 0 0 1 0v-7z"/>
								</svg>
							</button>
						</td>
					</tr>
					</c:forEach>
				</tbody>
			</table>
			<table id="addContactTable" class="table table-container">
				<thead>
					<tr>
						<th scope="row" id="idTh">
							<span id="idToShow"></span>
							<input type="hidden" id="idFromShow" readonly name="id" value="<% out.print(addressBookService.generateUniqueIdentifier()); %>" form="addContact">
						</th>
						<td class="centralInputTable">
							<div class="form-group">
								<input type="text" class="form-control" id="formGroupExampleInput" placeholder="Terry" name="name" form="addContact" autofocus>
							</div>
						</td>
						<td class="centralInputTable">
							<div class="form-group">
								<input type="text" class="form-control" id="formGroupExampleInput" placeholder="Goodking" name="surname" form="addContact">
							</div>
						</td>
						<td class="centralInputTable">
							<div class="form-group">
								<input type="text" class="form-control" id="formGroupExampleInput" placeholder="+357 95 376378" name="phone" form="addContact" maxlength="16">
							</div>
						</td>
						<td class="centralInputTable">
							<div class="form-group">
								<input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="terry@goodking.com" name="email" form="addContact">
							</div>
						</td>
						<td class="centralInputTable">
							<div class="form-group">
								<input type="text" class="form-control" id="formGroupExampleInput" placeholder="Goodking spa" name="company" form="addContact">
							</div>
						</td>
						<td colspan="2">
							<input type="hidden" name="action" value="create" form="addContact">
							<button formmethod="post" form="addContact" type="submit" class="btn btn-primary">
								<svg id="addSvg" width="2em" height="2em" viewBox="0 0 16 16" class="bi bi-plus" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
									<path fill-rule="evenodd" d="M8 3.5a.5.5 0 0 1 .5.5v4a.5.5 0 0 1-.5.5H4a.5.5 0 0 1 0-1h3.5V4a.5.5 0 0 1 .5-.5z"/>
									<path fill-rule="evenodd" d="M7.5 8a.5.5 0 0 1 .5-.5h4a.5.5 0 0 1 0 1H8.5V12a.5.5 0 0 1-1 0V8z"/>
								</svg>
							</button>
						</td>
					</tr>
				</thead>
			</table>
		</div>
		<!-- The Modal -->
		<div class="modal fade" id="modalUpdate">
			<div class="modal-dialog">
				<div class="modal-content">
					<!-- Modal Header -->
					<div class="modal-header">
						<h4 class="modal-title">Update Contact</h4>
						<button type="button" class="close" data-dismiss="modal">×</button>
					</div>
					<!-- Modal body -->
					<div class="modal-body">
						<form id="updateContact" action="/AddressBook/AddressBook" method="post"></form>
						<input type="hidden" name="action" value="update" form="updateContact">
						<div class="form-group row">
							<label for="textId" class="col-sm-2 col-form-label">ID</label>
							<div class="col-sm-10">
								<input type="text" name="id" readonly class="form-control-plaintext" id="textId" value="" form="updateContact">
							</div>
						</div>
						<div class="form-group row">
							<label for="inputName" class="col-sm-2 col-form-label">Name</label>
							<div class="col-sm-10">
								<input type="text" name="name" class="form-control" id="inputName" form="updateContact">
							</div>
						</div>
						<div class="form-group row">
							<label for="inputSurname" class="col-sm-2 col-form-label">Surname</label>
							<div class="col-sm-10">
								<input type="text" name="surname" class="form-control" id="inputSurname" form="updateContact">
							</div>
						</div>
						<div class="form-group row">
							<label for="inputPhone" class="col-sm-2 col-form-label">Phone</label>
							<div class="col-sm-10">
								<input type="tel" name="phone" class="form-control" id="inputPhone" form="updateContact">
							</div>
						</div>
						<div class="form-group row">
							<label for="inputEmail" class="col-sm-2 col-form-label">Email</label>
							<div class="col-sm-10">
								<input type="text" name="email" class="form-control" id="inputEmail" form="updateContact">
							</div>
						</div>
						<div class="form-group row">
							<label for="inputCompany" class="col-sm-2 col-form-label">Company</label>
							<div class="col-sm-10">
								<input type="text" name="company" class="form-control" id="inputCompany" form="updateContact">
							</div>
						</div>
					</div>
					<!-- Modal footer -->
					<div class="modal-footer">
						<table>
        					<thead>
        						<tr>
        							<th>
										<button type="submit" class="btn btn-primary" form="updateContact" formmethod="post">Update</button>
        							</th>
        							<th>
										<button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
									</th>
								</tr>
							</thead>
						</table>
					</div>
				</div>
			</div>
		</div>
		
		<!-- The Modal -->
		<div class="modal fade" id="modalDelete">
			<div class="modal-dialog">
				<div class="modal-content">
					<!-- Modal Header -->
					<div class="modal-header">
						<h4 class="modal-title">Delete Contact</h4>
						<button type="button" class="close" data-dismiss="modal">×</button>
					</div>
					<!-- Modal body -->
					<div class="modal-body">
						<form id="deleteContact" action="/AddressBook/AddressBook" method="post"></form>
						<input type="hidden" form="deleteContact" name="action" value="delete">
						<input id="deleteIdSelector" type="hidden" form="deleteContact" name="id">
						<p id="modalDeleteP">Are you sure you want to delete <span id="spanName"></span> <span id="spanSurname"></span>?</p>
					</div>
					<!-- Modal footer -->
					<div class="modal-footer">
						<table>
							<thead>
								<tr>
									<th>
										<button type="submit" class="btn btn-primary" form="deleteContact" formmethod="post">Confirm</button>
									</th>
									<th>
										<button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
									</th>
								</tr>
							</thead>
						</table>
					</div>
				</div>
			</div>
		</div>
		<footer>
			<span id="hashMapLength"><%out.print(ContactsDao.read().size());%></span>
		</footer>
	</body>
</html>