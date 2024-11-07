import Array "mo:base/Array";  // Import the Array module

actor CRM {
    stable var customers: [Text] = [];  // List to store customer names

    // Add a new customer
    public func addCustomer(name: Text): async Text {
        customers := Array.append<Text>(customers, [name]);  // Add the new customer
        return "Customer added: " # name;
    };

    // List all customers
    public func listCustomers(): async [Text] {
        return customers;
    };

    // Remove a customer
    public func removeCustomer(name: Text): async Text {
        customers := Array.filter<Text>(customers, func (x) { x != name });  // Remove customer
        return "Customer removed: " # name;
    };
};

