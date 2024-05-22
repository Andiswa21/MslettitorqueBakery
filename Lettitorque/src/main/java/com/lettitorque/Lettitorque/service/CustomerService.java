package com.lettitorque.Lettitorque.service;

import com.lettitorque.Lettitorque.model.Customer;
import com.lettitorque.Lettitorque.repo.CustomerRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class CustomerService {
    @Autowired
    private CustomerRepo repo;

    public Optional<Customer> getCustomerByUsername(String username) {
        return repo.findByUsername(username);
    }

    public Optional<Customer> getCustomerById(Long id) {
        return repo.findById(id);
    }

    public Customer addCustomer(Customer Customer) {
        return repo.save(Customer);
    }

    public Customer setNewUsername(String username, String newUsername) {
        Optional<Customer> Customer = repo.findByUsername(username);

        Customer.get().setUsername(newUsername);

        return repo.save(Customer.get());
    }

    public String setNewPassword(String username, String currPassword, String newPassword) {
        Optional<Customer> customer = repo.findByUsername(username);
        String msg = "Your details are insufficient or incorrect to " +
                "permit you to update/edit this account.";

        if(customer.isPresent()) {
            customer.get().setPassword(currPassword);

            List<Customer> customers = repo.findAll();

            if(customers.contains(customer)) {
                customer.get().setPassword(newPassword);
                repo.save(customer.get());
                msg = "Your account has been updated.";
            }
        }

        return msg;
    }

    public String removeCustomer(String username, String password) {
        Optional<Customer> customer = repo.findByUsername(username);
        String msg = "Your details are insufficient or incorrect to " +
                "permit you to delete this account.";

        if(customer.isPresent()) {
            customer.get().setPassword(password);

            List<Customer> customers = repo.findAll();

            if(customers.contains(customer)) {
                repo.delete(customer.get());
                msg = "Your account has been deleted from mma_moriri system.";
            }
        }

        return msg;
    }

    public List<Customer> getAllCustomers() {

        return repo.findAll();
    }

    /*added*/
    public void updateCustomerDetails(String username, String firstname, String lastname, Long phone_number) {
        Optional<Customer> customer = repo.findByUsername(username);
        if (customer.isPresent()) {
            customer.get().setFirstname(firstname);
            customer.get().setLastname(lastname);
            customer.get().setPhone(phone_number);
            repo.save(customer.get());
        }
    }
}
