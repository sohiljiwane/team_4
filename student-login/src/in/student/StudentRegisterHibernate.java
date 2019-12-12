package in.student;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

public class StudentRegisterHibernate {
	public static void registerStudent(Student student) throws Exception {
		SessionFactory sessionFactory = HibernateUtil.sessionFactory();
		Session session = sessionFactory.openSession();
		
		Transaction txn = session.beginTransaction();
		
		session.save(student);
		txn.commit();
		session.close();
	}

}
