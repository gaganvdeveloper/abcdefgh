package org.jsp;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;

@Entity
public class Education {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	private String qualification;
	private String universityName;
	private double percentage;
	private int yop;
	private HighestQualification highestQualification;
	
	@ManyToOne
	private Employee employee;
	
	
	

	public Education() {
	}

	public Education(int id, String qualification, String universityName, double percentage, int yop,
			HighestQualification highestQualification, Employee employee) {
		this.id = id;
		this.qualification = qualification;
		this.universityName = universityName;
		this.percentage = percentage;
		this.yop = yop;
		this.highestQualification = highestQualification;
		this.employee = employee;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getQualification() {
		return qualification;
	}

	public void setQualification(String qualification) {
		this.qualification = qualification;
	}

	public String getUniversityName() {
		return universityName;
	}

	public void setUniversityName(String universityName) {
		this.universityName = universityName;
	}

	public double getPercentage() {
		return percentage;
	}

	public void setPercentage(double percentage) {
		this.percentage = percentage;
	}

	public int getYop() {
		return yop;
	}

	public void setYop(int yop) {
		this.yop = yop;
	}

	public HighestQualification getHighestQualification() {
		return highestQualification;
	}

	public void setHighestQualification(HighestQualification highestQualification) {
		this.highestQualification = highestQualification;
	}

	public Employee getEmployee() {
		return employee;
	}

	public void setEmployee(Employee employee) {
		this.employee = employee;
	}
	
	
	
}
