package com.address.book;

import java.io.File;
import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.pellegrini.code.utils.Utils;

@WebServlet("/Addressook")
public class AddressBook extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public AddressBook() {
        super();
    }
    
    public void init(ServletConfig config) throws ServletException {
    	System.out.println("Server started at: " + Utils.getCurrentTimestamp());
    	try {
    		File csvData = new File(CsvService.addressBookData);
    		if(csvData.exists())
    			CsvService.loadFromCsv();
		} catch (IOException e) {
			System.out.println("(init) Exception registered: " + e);
		}
    }
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setAttribute("allContacts", ContactsDao.read());
		RequestDispatcher rc = request.getRequestDispatcher("index.jsp");
		rc.include(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action = request.getParameter("action");
		if(action.equals("create")) {
			AddressBookService.create(request);
			response.sendRedirect("index.jsp");
		}
		if(action.equals("delete")) {
			AddressBookService.delete(request);
			response.sendRedirect("index.jsp");
		}
		if(action.equals("update")) {
			AddressBookService.update(request);
			response.sendRedirect("index.jsp");
		}
		if(action.equals("init1")) {
			try {
				CsvService.generateCsvForDebug();
				doGet(request, response);
			} catch (IOException e) {
				System.out.println("(generate csv) Exception registered: " + e);
			}
		}
	}
}
