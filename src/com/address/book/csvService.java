package com.address.book;

import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.io.Reader;
import java.nio.charset.StandardCharsets;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.util.Map;
import java.util.UUID;

import org.apache.commons.csv.CSVFormat;
import org.apache.commons.csv.CSVParser;
import org.apache.commons.csv.CSVPrinter;
import org.apache.commons.csv.CSVRecord;
import org.apache.commons.io.FileUtils;

public class csvService {
	public static final String addressBookData = "dataGet.csv";
	public static void dumpDataIntoCsv() throws IOException {
		File addressBookCsvData = new File(addressBookData);
		StringBuilder lines = new StringBuilder();
		for(Map.Entry<String, Contact> entry : ContactsDao.contactsMap.entrySet()) {
			String uuid = entry.getValue().getUniqueIdentifier();
			String name = entry.getValue().getName();
			String surname = entry.getValue().getSurname();
			String phone = entry.getValue().getPhone();
			String email = entry.getValue().getEmail();
			String company = entry.getValue().getCompany();
			lines.append(uuid).append(",").append(name).append(",").append(surname).append(",").append(phone).append(",").append(email).append(",").append(company).append("\n");
		}
//		CSVPrinter pippo;
//		pippo.printRecords(arg0);
		FileUtils.writeStringToFile(addressBookCsvData, lines.toString(), StandardCharsets.UTF_8.name());
	}
	public static void loadFromCsv() throws IOException {
		try (
	            Reader reader = Files.newBufferedReader(Paths.get(addressBookData));
	            CSVParser csvParser = new CSVParser(reader, CSVFormat.DEFAULT);
	    ) {
			for (CSVRecord csvRecord : csvParser) {
                ContactsDao.setContact(csvRecord);
            }
		} catch (Exception e) {
			System.out.println("(load from csv) Exception registered: " + e);
		}
	}
	public static void generateCsvForDebug() throws IOException {
		try (FileWriter writer = new FileWriter(addressBookData)) {
			UUID uuid = UUID.randomUUID();
			writer.append(uuid.toString() + ",Mario,Rossi,+39 123 456 7890,mario@rossi.it,Mario Rossi srl\n");
		} catch(Exception e) {
			System.out.println("(generate csv for debug) Exception registered: " + e);
		}
	}
}
