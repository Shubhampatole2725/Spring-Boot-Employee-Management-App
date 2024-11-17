package com.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.model.Employee;
import com.repository.EmployeeRepository;
@Service
public class EmployeeServiceImpl implements EmployeeService{

	private EmployeeRepository repository;

	@Autowired
	public void setRepository(EmployeeRepository repository) {
		this.repository = repository;
	}
	
	@Override
	public void saveEmployee(Employee emp) {
		repository.save(emp);		
	}
	@Override
	public boolean loginCheck(String username, String password) {
		if(username.equalsIgnoreCase("admin")&&password.equals("admin@123")) {
			return true;
		}
		return false;
	}
	@Override
	public List<Employee> getAllEmployees() {
		Iterable<Employee> itr = repository.findAll();
		List<Employee> list = (List<Employee>) itr;
		return list;
	}
	@Override
	public List<Employee> deleteEmployee(int id) {
		repository.deleteById(id);
		return getAllEmployees();
	}
	@Override
	public Employee getStudent(int id) {
		return repository.findById(id).get();	
	}
	@Override
	public List<Employee> updateEmp(Employee emp) {
		repository.save(emp);
		return getAllEmployees();
	}
}
