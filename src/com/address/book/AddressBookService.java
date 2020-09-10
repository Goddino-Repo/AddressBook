package com.address.book;

import java.io.IOException;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;


public class AddressBookService {
	public static Contact checkData(Contact info) throws IOException {
		String empty = "-";
		if(info.getName().isEmpty())
			info.setName(empty);
		if(info.getSurname().isEmpty())
			info.setSurname(empty);
		if(info.getPhone().isEmpty())
			info.setPhone(empty);
		if(info.getEmail().isEmpty())
			info.setEmail(empty);
		if(info.getCompany().isEmpty())
			info.setCompany(empty);
		
		if(!info.getName().equals(empty))
			info.setName(info.getName().trim());
		if(!info.getSurname().equals(empty))
			info.setSurname(info.getSurname().trim());
		if(!info.getPhone().equals(empty))
			info.setPhone(info.getPhone().trim());
		if(!info.getEmail().equals(empty))
			info.setEmail(info.getEmail().trim());
		if(!info.getCompany().equals(empty))
			info.setCompany(info.getCompany().trim());
		
		return info;
	}
	public static String generateUniqueIdentifier() {
		UUID uuid = UUID.randomUUID();
		return uuid.toString();
	}
	public static void create(HttpServletRequest request) throws IOException {
		String id = request.getParameter("id");
		String name = request.getParameter("name");
		String surname = request.getParameter("surname");
		String phone = request.getParameter("phone");
		String email = request.getParameter("email");
		String company = request.getParameter("company");
		ContactsDao.create(id, checkData(new Contact(id, name, surname, phone, email, company)));
		CsvService.dumpDataIntoCsv();
	}
	public static void delete(HttpServletRequest request) throws IOException {
		String id = request.getParameter("id");
		ContactsDao.delete(id);
		CsvService.dumpDataIntoCsv();
	}
	public static void update(HttpServletRequest request) throws IOException {
		String idUpdate = request.getParameter("id");
		String nameUpdate = request.getParameter("name");
		String surnameUpdate = request.getParameter("surname");
		String phoneUpdate = request.getParameter("phone");
		String emailUpdate = request.getParameter("email");
		String companyUpdate = request.getParameter("company");
		ContactsDao.update(idUpdate, checkData(new Contact(idUpdate, nameUpdate, surnameUpdate, phoneUpdate, emailUpdate, companyUpdate)));
		CsvService.dumpDataIntoCsv();
	}
}
