package com.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "EMPLOYEE_DETAILS")
public class Employee {
	
	@Id
	@GeneratedValue
	private int id;

	private String name;
	
	private String address;
	
	private String designation;
	
	private double salary;
	
	public Employee(int id, String name, String address, String designation, double salary) {
		super();
		this.id = id;
		this.name = name;
		this.address = address;
		this.designation = designation;
		this.salary = salary;
	}
	
	public Employee() {
		// TODO Auto-generated constructor stub
	}
	
	@Override
	public String toString() {
		return "Employee [id=" + id + ", name=" + name + ", address=" + address + ", designation=" + designation
				+ ", salary=" + salary + "]";
	}


	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getDesignation() {
		return designation;
	}

	public void setDesignation(String designation) {
		this.designation = designation;
	}

	public double getSalary() {
		return salary;
	}

	public void setSalary(double salary) {
		this.salary = salary;
	}

	
	
}
