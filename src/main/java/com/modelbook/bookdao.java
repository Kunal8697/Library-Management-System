package com.modelbook;
import java.util.List;
import org.hibernate.*;
import org.hibernate.cfg.Configuration;
import org.hibernate.criterion.Criterion;
import org.hibernate.criterion.Restrictions;

import com.model.book;
public class bookdao {
book b;
SessionFactory sf;
Session s;
Transaction t;
public bookdao() {
sf = new Configuration().configure().buildSessionFactory();
s = sf.openSession();
t = s.beginTransaction();
}
public void addBook(int isbn, String name, String auth, int pr) {
b = new book();
b.setISBN(isbn);
b.setBookname(name);
b.setAuthername(auth);
b.setPrice(pr);
s.save(b);
t.commit();
}
public int deleteBook(int isbn) {
Query q = s.createQuery("delete from Book where isbn=:i");
q.setInteger("i", isbn);
int row = q.executeUpdate();
t.commit();
return row;
}
public int updateBook(int isbn, String name, String auth, int pr) {
Query q = s.createQuery("update book set bookname=:b, authername=:a,price=:p where ISBN=:i");
q.setInteger("i", isbn);
q.setString("b", name);
q.setString("a", auth);
q.setFloat("p", pr);
int row = q.executeUpdate();
t.commit();
return row;
}
public List<book> searchBook(String name) {
Criteria c = s.createCriteria(book.class);
Criterion n = Restrictions.eq("bookname", name);
c.add(n);
List<book> books = c.list();
t.commit();
return books;
}
public List<book> display(){
Query q = s.createQuery("from book");
List<book> books = q.list();
t.commit();
return books;
}
}