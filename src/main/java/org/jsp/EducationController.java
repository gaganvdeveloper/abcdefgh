package org.jsp;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class EducationController {
	
	
	@Autowired
	private EntityManager em;
	
	
	@RequestMapping("/addedupage")
	public ModelAndView addEduPage(@RequestParam int id) {
		
		ModelAndView mv  = new ModelAndView();
		
		
		mv.setViewName("addedu.jsp");
		
		mv.addObject("id", id);
		
		
		return mv;
	}
	
	
	
	@RequestMapping("/save_edu")
	public ModelAndView saveEduction(@RequestParam String qualification,
									@RequestParam String universityName,
									@RequestParam double percentage,
									@RequestParam int yop,
									@RequestParam String highestQualification,
									@RequestParam int emp_id) {
		ModelAndView mv = new ModelAndView();
		Employee emp = em.find(Employee.class, emp_id);
		Education edu = new Education(0, qualification, universityName, percentage, yop, HighestQualification.valueOf(highestQualification), emp);
		EntityTransaction et = em.getTransaction();
		et.begin();
		em.persist(edu);
		et.commit();
		mv.setViewName("viewemp.jsp");
		mv.addObject("e", emp);
		mv.addObject("msg", "Education Added Successfully");
		return mv;
	}
	
	
}
