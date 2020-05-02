package spring_quiz;



import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.springframework.beans.factory.annotation.Autowired;

public class OperationMethods {

	@Autowired
	Configuration cfg;
	SessionFactory factory;
	Session session;
	Transaction tra;
	List<CQuestions> cque = null;
	int currentIndex = 1;
	
	
	@SuppressWarnings("deprecation")
	public OperationMethods() {
		cfg = new Configuration();
		cfg.configure("hibernate.cfg.xml");	
		factory = cfg.buildSessionFactory();
		session = factory.openSession();
		tra = session.beginTransaction();
	}
	// for registration
	public int stu_register(String firstname, String lastname, String email, String username, String password) {
		
		StudentDetails std = new StudentDetails();
		
		std.setFirstname(firstname);
		std.setLastname(lastname);
		std.setEmail(email);
		std.setUsername(username);
		std.setPassword(password);
		
		int i = (Integer) session.save(std);
		tra.commit();
		session.close();
		return i;
		
	}
	// for login
	public boolean logstu(String username, String password) {
	
	boolean st = false;
	String hql = "FROM StudentDetails sd WHERE sd.username=? and sd.password=?";
	Query query = session.createQuery(hql);
	query.setParameter(0, username);
	query.setParameter(1, password);
	List<?> list = query.list();
	
	if((list!=null) && (list.size()>0)) {
		st = true;
	}
	session.close();
	return st;
}

	// for question insertion in subject C
    int insertQueC(String question, String OptA, String OptB, String OptC, String OptD, String correctAns) {

  CQuestions cq = new CQuestions();

      cq.setQuestion(question);
      cq.setOptA(OptA);
      cq.setOptB(OptB);
      cq.setOptC(OptC);
      cq.setOptD(OptD);
      cq.setCorrectAns(correctAns);
      int i = (Integer) session.save(cq);
      tra.commit();
      session.close();

      return i;
        }
    	public Object getCurrent() {
    		
    		@SuppressWarnings("unchecked")
			List<CQuestions> cque = (List<CQuestions>) session.createQuery("from CQuestions").list();
    		session.close();
    		  return cque;
	}

        List<?> getAllData() {
            return session.createQuery("from StudentDetails").list();
            
        }
	
        public int insertQueJava(int id,String question, String optA, String optB, String optC, String optD,
				String correctAns) {
        	
        	JavaQuestions jv = new JavaQuestions();
        	jv.setId(id);
        	jv.setQuestion(question);
        	jv.setOptA(optA);
        	jv.setOptB(optB);
        	jv.setOptC(optC);
        	jv.setOptD(optD);
        	jv.setCorrectAns(correctAns);
        	
        	int i = (Integer) session.save(jv);
            tra.commit();
            session.close();
        	return i;
		}
        
		@SuppressWarnings("unchecked")
		public Object getJavaCurrentQuestion() {
			
			List<JavaQuestions> javaQue = (List<JavaQuestions>)session.createQuery("from JavaQuestions").list();
			return javaQue;
		}
		public boolean getUserAnsCount(String userAns) {
			boolean st = false;
			String hql = "FROM JavaQuestions jq WHERE jq.correctAns=?";
			Query query = session.createQuery(hql);
			query.setParameter(0, userAns);
			
			List<?> list = query.list();
			
			if((list!=null) && (list.size()>0)) {
				st = true;
			}
			session.close();
			return st;
			
			
		}
		
		
		  
		 

      

}
