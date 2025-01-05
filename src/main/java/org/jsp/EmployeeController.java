package org.jsp;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;
import javax.persistence.Query;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class EmployeeController {

	@Autowired
	private EntityManager em;
	
	
	
	
	@RequestMapping("/save_emp")
	public ModelAndView saveEmp(@RequestParam String fname,
								@RequestParam String lname,
								@RequestParam String email,
								@RequestParam long phone,
								@RequestParam String department,
								@RequestParam double salary,
								@RequestParam String status)
	{
		ModelAndView mv = new ModelAndView();
		Employee e = new Employee(0, fname, lname, email, phone, department, salary, EmployeeStatus.valueOf(status));
		EntityTransaction et = em.getTransaction();
		et.begin();
		em.persist(e);
		et.commit();
		mv.setViewName("index.jsp");
		mv.addObject("msg", "Employee Created Successfully");
		return mv;
	}
	
	
	@RequestMapping("/all")
	public ModelAndView findAllEmaployees() {
		Query q = em.createQuery("from Employee");
		
		
		List<Employee> el = q.getResultList();
		
		
		ModelAndView mv = new ModelAndView();
		
		mv.setViewName("allemps.jsp");
		
		mv.addObject("el", el);
		
		return mv;
	}
	
	
	@RequestMapping("/delete")
	public ModelAndView deleteEmployeeById(@RequestParam int id) {
		Employee e = em.find(Employee.class, id);
		EntityTransaction et = em.getTransaction();
		et.begin();
		em.remove(e);
		et.commit();
		
		ModelAndView mv = new ModelAndView();
		
		mv.setViewName("allemps.jsp");
		
		mv.addObject("el", em.createQuery("from Employee").getResultList());
		
		mv.addObject("msg", "Employee Deleted Successfully");
		
		return mv;
	}
	
	@RequestMapping("/view")
	public ModelAndView viewEmployeeById(@RequestParam int id) {
		Employee e = em.find(Employee.class, id);
		Query q = em.createQuery("select e from Education e where e.employee.id=:id");
		q.setParameter("id", id);
		List eduList = q.getResultList();
		ModelAndView mv = new ModelAndView();
		mv.setViewName("viewemp.jsp");
		mv.addObject("e",e);
		mv.addObject("eduList",eduList);
		return mv;
	}
	
	
	
	
}
