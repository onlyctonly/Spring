package all.dao;

import java.util.List;

import all.entity.Customer;

public interface CustomerDAO {
	public List<Customer> getCustomers();

	public void saveCustomer(Customer c);

	public Customer getCustomer(int id);

	public void deleteCustomer(int id);
}
