package spring_quiz;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@SuppressWarnings("unused")
@RestController
public class controller {

	int currentIndex = 1;
	HttpSession session;
	int marksCounter = 0;

	@RequestMapping("/register")
	public ModelAndView register_1(HttpServletRequest request, HttpServletResponse response) throws IOException {

		String firstname = request.getParameter("firstname");
		String lastname = request.getParameter("lastname");
		String email = request.getParameter("email");
		String username = request.getParameter("username");
		String password = request.getParameter("password");

		OperationMethods om = new OperationMethods();

		ModelAndView mv = new ModelAndView();

		int i = om.stu_register(firstname, lastname, email, username, password);
		if (i > 0) {

			mv.setViewName("register_success.jsp");

			mv.addObject("firstname", firstname);
			mv.addObject("lastname", lastname);

			System.out.println("success");
		}
		return mv;

	}

	@RequestMapping("/stu_login")
	public ModelAndView stu_login(HttpServletRequest request, HttpServletResponse response) throws IOException {

		String username = request.getParameter("username");
		String password = request.getParameter("password");

		OperationMethods om = new OperationMethods();
		ModelAndView mv = new ModelAndView();

		
		boolean abc = false;
		abc = om.logstu(username, password);
		/* System.out.println("abc=="+abc); */
		if (abc == true) {
			mv.setViewName("welcome_student.jsp");
		} else {
			mv.setViewName("login_unsuccess.jsp");
		}
			
		return mv;

	}

	// for admin login

	@RequestMapping("/admin_login")
	public ModelAndView admin_login(HttpServletRequest request, HttpServletResponse response) throws IOException {

		String admin_user = request.getParameter("admin_user");
		String admin_pass = request.getParameter("admin_pass");

		ModelAndView mv = new ModelAndView();

		if ((admin_user.equals("system")) && admin_pass.equals("admin")) {
			mv.setViewName("Welcome_admin.jsp");
		} else {
			mv.setViewName("invalid_admin.jsp");
		}
		return mv;

	}

	@RequestMapping("/logout_admin")
	public ModelAndView logout(HttpServletRequest request, HttpServletResponse response) throws IOException {

		ModelAndView mv = new ModelAndView();

		session = request.getSession(false);
		if (session != null)
			session.invalidate();
		mv.setViewName("adminlogin.jsp");

		return mv;

	}

	@RequestMapping("/logout_student")
	public ModelAndView logout_student(HttpServletRequest request, HttpServletResponse response) throws IOException {

		ModelAndView mv = new ModelAndView();

		session = request.getSession(false);
		if (session != null)
			session.invalidate();
		mv.setViewName("student_login.jsp");

		return mv;

	}

	// --------------Subject C -------------//

	@RequestMapping("/insertCque")
	public ModelAndView insertCque(HttpServletRequest request, HttpServletResponse response) throws IOException {

		String question = request.getParameter("question");
		String OptA = request.getParameter("OptA");
		String OptB = request.getParameter("OptB");
		String OptC = request.getParameter("OptC");
		String OptD = request.getParameter("OptD");
		String correctAns = request.getParameter("correctAns");

		OperationMethods om = new OperationMethods();
		ModelAndView mv = new ModelAndView();

		int i = om.insertQueC(question, OptA, OptB, OptC, OptD, correctAns);
		if (i > 0) {

			mv.setViewName("insert_success.jsp");
		}
		return mv;
	}

	@RequestMapping("/cquestions")
	public ModelAndView cquestions(HttpServletRequest request, HttpServletResponse response) throws IOException {

		ModelAndView mv = new ModelAndView();
		OperationMethods om = new OperationMethods();

		@SuppressWarnings("unchecked")
		ArrayList<CQuestions> list = (ArrayList<CQuestions>) om.getCurrent();
		int listsize = list.size();
		System.out.println(listsize);
		CQuestions cque = list.get(0);

		mv.addObject("cque", cque);
		mv.setViewName("CTestStart.jsp");
		return mv;
	}

	@RequestMapping("/allData")
	public ModelAndView allData(HttpServletRequest request, HttpServletResponse response) throws IOException {
		ModelAndView mv = new ModelAndView();
		OperationMethods om = new OperationMethods();

		List<?> list = om.getAllData();
		mv.addObject("alldata", list);
		mv.setViewName("allData.jsp");

		return mv;
	}

	@RequestMapping("/next")
	public ModelAndView next(HttpServletRequest request, HttpServletResponse response) throws IOException {
		ModelAndView mv = new ModelAndView();
		OperationMethods om = new OperationMethods();

		@SuppressWarnings("unchecked")
		ArrayList<CQuestions> list = (ArrayList<CQuestions>) om.getCurrent();
		int listsize = list.size();
		System.out.println(listsize);

		if (currentIndex <= listsize) {
			if (currentIndex >= listsize) {
				CQuestions cque = list.get(listsize - 1);
				mv.addObject("cque", cque);
				mv.setViewName("CTestStart.jsp");
				System.out.println(currentIndex);
			} else {

				CQuestions cque = list.get(currentIndex);
				mv.addObject("cque", cque);
				mv.setViewName("CTestStart.jsp");
				currentIndex++;
				System.out.println(currentIndex);
			}
		}
		return mv;
	}

	@RequestMapping("/previous")
	public ModelAndView previous(HttpServletRequest request, HttpServletResponse response) throws IOException {


		ModelAndView mv = new ModelAndView();
		OperationMethods om = new OperationMethods();

		@SuppressWarnings("unchecked")
		ArrayList<CQuestions> list = (ArrayList<CQuestions>) om.getCurrent();
		int listsize = list.size();
		System.out.println(currentIndex);

		if (currentIndex <= listsize) {
			if (currentIndex == 1) {
				CQuestions cque = list.get(0);
				mv.addObject("cque", cque);
				mv.setViewName("CTestStart.jsp");
				currentIndex = 1;
			} else {
				currentIndex--;
				CQuestions cque = list.get(currentIndex - 1);
				mv.addObject("cque", cque);
				mv.setViewName("CTestStart.jsp");
			}
		}

		return mv;
	}

	// --------------Subject Java -------------//

	@RequestMapping("/insertJavaQue")
	public ModelAndView insertJavaQue(HttpServletRequest request, HttpServletResponse response) throws IOException {

		ModelAndView mv = new ModelAndView();
		OperationMethods om = new OperationMethods();

		int id = Integer.parseInt(request.getParameter("id"));
		String question = request.getParameter("question");
		String OptA = request.getParameter("OptA");
		String OptB = request.getParameter("OptB");
		String OptC = request.getParameter("OptC");
		String OptD = request.getParameter("OptD");
		String correctAns = request.getParameter("correctAns");

		int i = om.insertQueJava(id, question, OptA, OptB, OptC, OptD, correctAns);
		if (i > 0) {

			mv.setViewName("insertSuccessJava.jsp");
		}
		return mv;
	}

	@RequestMapping("/javaquestions")
	public ModelAndView javaquestions(HttpServletRequest request, HttpServletResponse response) throws IOException {

		ModelAndView mv = new ModelAndView();
		OperationMethods om = new OperationMethods();

		@SuppressWarnings("unchecked")
		ArrayList<JavaQuestions> list = (ArrayList<JavaQuestions>) om.getJavaCurrentQuestion();
		int listsize = list.size();
		System.out.println(listsize);
		JavaQuestions jv = list.get(0);

		mv.addObject("jv", jv);
		mv.setViewName("JavaTestStart.jsp");

		return mv;
	}

	@RequestMapping("/javaNext")
	public ModelAndView javaNext(HttpServletRequest request, HttpServletResponse response) throws IOException {
		ModelAndView mv = new ModelAndView();
		OperationMethods om = new OperationMethods();
		
		@SuppressWarnings("unchecked")
		ArrayList<JavaQuestions> list = (ArrayList<JavaQuestions>) om.getJavaCurrentQuestion();
		int listsize = list.size();
		System.out.println(listsize);

		if (currentIndex <= listsize) {
			if (currentIndex >= listsize) {
				JavaQuestions jv = list.get(listsize - 1);
				mv.addObject("jv", jv);
				mv.setViewName("JavaTestStart.jsp");
				System.out.println(currentIndex);
			} else {

				JavaQuestions jv = list.get(currentIndex);
				mv.addObject("jv", jv);
				mv.setViewName("JavaTestStart.jsp");
				currentIndex++;
				System.out.println(currentIndex);
			}
		}
		return mv;
	}

	
	  @RequestMapping("/javaPrevious") 
	  public ModelAndView javaPrevious(HttpServletRequest request, HttpServletResponse response) throws	  IOException{
	  
	  ModelAndView mv = new ModelAndView(); 
	  OperationMethods om = new	OperationMethods();
	  
	  
	  @SuppressWarnings("unchecked") 
	  ArrayList<JavaQuestions> list = (ArrayList<JavaQuestions>) om.getJavaCurrentQuestion(); 
	  int listsize = list.size(); 
	  System.out.println(currentIndex);
	  
	  if(currentIndex <= listsize) { 
		  if(currentIndex == 1) { 
			  JavaQuestions jv = list.get(0); 
			  mv.addObject("jv", jv); 
			  mv.setViewName("JavaTestStart.jsp");
			  currentIndex = 1; 
	  } else { 
		  currentIndex--; 
		  JavaQuestions jv = list.get(currentIndex-1); 
		  mv.addObject("jv", jv);
		  mv.setViewName("JavaTestStart.jsp"); 
	  } 
		  } 
	  return mv; 
	  }
	 

		
		  @RequestMapping("/javaSave") 
		  private int javaSave(HttpServletRequest request,  HttpServletResponse response) throws IOException{ 
			  
			  ModelAndView mv = new ModelAndView();
			  OperationMethods om = new OperationMethods();
			 
			  String userAns = request.getParameter("javaOption");
			  boolean abc = false;
			  abc = om.getUserAnsCount(userAns);
			  if(abc==true) {
				 marksCounter++;
			  }
		  		return marksCounter;
		  }
		 
	
	  
	 

	@RequestMapping("/javaTestSubmit")
	public ModelAndView javaTestSubmit(HttpServletRequest request, HttpServletResponse response) throws IOException {

		ModelAndView mv = new ModelAndView();
		OperationMethods om = new OperationMethods();
		return mv;
	}

	
}
