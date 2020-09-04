package com.address.book;

public class Contact {
	private String uniqueIdentifier;
	private String name;
	private String surname;
	private String phone;
	private String email;
	private String company;
	
	public Contact(String uniqueIdentifier, String name, String surname, String phone, String email, String company) {
		this.uniqueIdentifier = uniqueIdentifier;
		this.name = name;
		this.surname = surname;
		this.phone = phone;
		this.email = email;
		this.company = company;
	}
	public String getUniqueIdentifier() {
		return uniqueIdentifier;
	}
	public void setUniqueIdentifier(String uniqueIdentifier) {
		this.uniqueIdentifier = uniqueIdentifier;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getSurname() {
		return surname;
	}
	public void setSurname(String surname) {
		this.surname = surname;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getCompany() {
		return company;
	}
	public void setCompany(String company) {
		this.company = company;
	}
	public String toString() {
		return	"Name: " + this.name + 
				"\nSurname: " + this.surname + 
				"\nPhone: " + this.phone + 
				"\nEmail: " + this.email + 
				"\nCompany: " + this.company + 
				"\n\n";
	}
}
