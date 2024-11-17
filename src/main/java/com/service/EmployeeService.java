package com.service;

import java.util.List;

import com.model.Employee;

public interface EmployeeService {

	public void saveEmployee(Employee emp);

	public boolean loginCheck(String username, String password);

	public List<Employee> getAllEmployees();

	public List<Employee> deleteEmployee(int id);

	public Employee getStudent(int id);

	public List<Employee> updateEmp(Employee emp);


	
}
