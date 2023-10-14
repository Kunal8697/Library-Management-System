package com.modelbook;
import java.util.List;
import org.hibernate.*;
import org.hibernate.cfg.Configuration;
import org.hibernate.criterion.Criterion;
import org.hibernate.criterion.LogicalExpression;
import org.hibernate.criterion.Restrictions;

import com.model.staff;
public class staffDAO {
staff st;
SessionFactory sf;
Session s;
Transaction t;
public staffDAO() {
sf = new Configuration().configure().buildSessionFactory();
s = sf.openSession();
t = s.beginTransaction();
}
public void staffRegister(int id, String name, String pass) {
st = new staff();
st.setEid(id);
st.setUsername(name);

st.setPassword(pass);

s.save(st);
t.commit();
}
public boolean validStaff(String username, String pass) {
Criteria c = s. createCriteria (staff.class );
Criterion e = Restrictions.eq("username", username);
Criterion p = Restrictions.eq("password", pass);
LogicalExpression an = Restrictions.and(e,p);
c.add(an);
t.commit();
List<staff> ls = c.list();
for (staff staff:ls) {
if(staff.getUsername().equals(username) &&
staff.getPassword().equals(pass))
return true;
}
return false;
}
}