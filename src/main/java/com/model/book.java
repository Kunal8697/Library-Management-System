
package com.model;

import javax.persistence.*;

@Entity
@Table(name="book")


public class book {
@Id
private int ISBN;
private String bookname;
private String authername;
private int price;
public int getISBN() {
	return ISBN;
}
public void setISBN(int iSBN) {
	ISBN = iSBN;
}
public String getBookname() {
	return bookname;
}
public void setBookname(String bookname) {
	this.bookname = bookname;
}
public String getAuthername() {
	return authername;
}
public void setAuthername(String authername) {
	this.authername = authername;
}
public int getPrice() {
	return price;
}
public void setPrice(int price) {
	this.price = price;
}

}
