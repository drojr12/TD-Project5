//
//  ViewController.swift
//  AmusementParkPassGenerator
//
//  Created by David Oliveira on 9/1/18.
//  Copyright © 2018 David Oliveira. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //Set up Top Menu Buttons
    lazy var guestButton: UIButton = {
        let guestButton = UIButton(type: .system)
        guestButton.setTitle("Guest", for: .normal)
        guestButton.setTitleColor(.white, for: .normal)
        guestButton.backgroundColor = .purple
        guestButton.translatesAutoresizingMaskIntoConstraints = false
        guestButton.addTarget(self, action: #selector( self.guestButtonClicked(sender:) ), for: .touchUpInside)
        return guestButton
    }()
    
    lazy var employeeButton: UIButton = {
        let employeeButton = UIButton(type: .system)
        employeeButton.setTitle("Employee", for: .normal)
        employeeButton.setTitleColor(.white, for: .normal)
        employeeButton.backgroundColor = .purple
        employeeButton.translatesAutoresizingMaskIntoConstraints = false
        employeeButton.addTarget(self, action: #selector( self.employeeButtonClicked(sender:) ), for: .touchUpInside)
        return employeeButton
    }()
    
    lazy var managerButton: UIButton = {
        let managerButton = UIButton(type: .system)
        managerButton.setTitle("Manager", for: .normal)
        managerButton.setTitleColor(.white, for: .normal)
        managerButton.backgroundColor = .purple
        managerButton.translatesAutoresizingMaskIntoConstraints = false
        managerButton.addTarget(self, action: #selector( self.managerButtonClicked(sender:) ), for: .touchUpInside)
        return managerButton
    }()
    
    lazy var contractorButton: UIButton = {
        let contractorButton = UIButton(type: .system)
        contractorButton.setTitle("Contractor", for: .normal)
        contractorButton.setTitleColor(.white, for: .normal)
        contractorButton.backgroundColor = .purple
        contractorButton.translatesAutoresizingMaskIntoConstraints = false
        contractorButton.addTarget(self, action: #selector( self.contractorButtonClicked(sender:) ), for: .touchUpInside)
        return contractorButton
    }()
    
    lazy var vendorButton: UIButton = {
        let vendorButton = UIButton(type: .system)
        vendorButton.setTitle("Vendor", for: .normal)
        vendorButton.setTitleColor(.white, for: .normal)
        vendorButton.backgroundColor = .purple
        vendorButton.translatesAutoresizingMaskIntoConstraints = false
        vendorButton.addTarget(self, action: #selector( self.vendorButtonClicked(sender:) ), for: .touchUpInside)
        return vendorButton
    }()
    
    //Set up Bottom Menu Buttons
    lazy var childButton: UIButton = {
        let childButton = UIButton(type: .system)
        childButton.setTitle("Child", for: .normal)
        childButton.setTitleColor(.white, for: .normal)
        childButton.backgroundColor = .gray
        childButton.translatesAutoresizingMaskIntoConstraints = false
        return childButton
    }()
    
    lazy var classicButton: UIButton = {
        let classicButton = UIButton(type: .system)
        classicButton.setTitle("Classic", for: .normal)
        classicButton.setTitleColor(.white, for: .normal)
        classicButton.backgroundColor = .gray
        classicButton.translatesAutoresizingMaskIntoConstraints = false
        return classicButton
    }()
    
    lazy var seniorButton: UIButton = {
        let seniorButton = UIButton(type: .system)
        seniorButton.setTitle("Senior", for: .normal)
        seniorButton.setTitleColor(.white, for: .normal)
        seniorButton.backgroundColor = .gray
        seniorButton.translatesAutoresizingMaskIntoConstraints = false
        return seniorButton
    }()
    
    lazy var vipButton: UIButton = {
        let vipButton = UIButton(type: .system)
        vipButton.setTitle("VIP", for: .normal)
        vipButton.setTitleColor(.white, for: .normal)
        vipButton.backgroundColor = .gray
        vipButton.translatesAutoresizingMaskIntoConstraints = false
        return vipButton
    }()
    
    lazy var seasonPassButton: UIButton = {
        let seasonPassButton = UIButton(type: .system)
        seasonPassButton.setTitle("Season Pass", for: .normal)
        seasonPassButton.setTitleColor(.white, for: .normal)
        seasonPassButton.backgroundColor = .gray
        seasonPassButton.translatesAutoresizingMaskIntoConstraints = false
        return seasonPassButton
    }()
    
    lazy var foodServicesButton: UIButton = {
        let foodServicesButton = UIButton(type: .system)
        foodServicesButton.setTitle("Food Services", for: .normal)
        foodServicesButton.setTitleColor(.white, for: .normal)
        foodServicesButton.backgroundColor = .gray
        foodServicesButton.translatesAutoresizingMaskIntoConstraints = false
        return foodServicesButton
    }()
    
    lazy var rideServicesButton: UIButton = {
        let rideServicesButton = UIButton(type: .system)
        rideServicesButton.setTitle("Ride Services", for: .normal)
        rideServicesButton.setTitleColor(.white, for: .normal)
        rideServicesButton.backgroundColor = .gray
        rideServicesButton.translatesAutoresizingMaskIntoConstraints = false
        return rideServicesButton
    }()
    
    lazy var maintenanceButton: UIButton = {
        let maintenanceButton = UIButton(type: .system)
        maintenanceButton.setTitle("Maintenance", for: .normal)
        maintenanceButton.setTitleColor(.white, for: .normal)
        maintenanceButton.backgroundColor = .gray
        maintenanceButton.translatesAutoresizingMaskIntoConstraints = false
        return maintenanceButton
    }()
    
    lazy var emptyButtonForStackView: UIButton = {
        let emptyButtonForStackView = UIButton(type: .system)
        emptyButtonForStackView.setTitle(nil, for: .normal)
        emptyButtonForStackView.setTitleColor(.white, for: .normal)
        emptyButtonForStackView.backgroundColor = .gray
        emptyButtonForStackView.translatesAutoresizingMaskIntoConstraints = false
        
        return emptyButtonForStackView
    }()
    
    //Labels for UI
    lazy var firstNameLabel: UILabel = {
        let firstNameLabel = UILabel(frame: CGRect(x: 0, y: 0, width: 200, height: 200))
        firstNameLabel.textAlignment = .left
        firstNameLabel.text = "First Name"
        firstNameLabel.translatesAutoresizingMaskIntoConstraints = false
        
        return firstNameLabel
    }()
    
    lazy var lastNameLabel: UILabel = {
        let lastNameLabel = UILabel(frame: CGRect(x: 0, y: 0, width: 200, height: 200))
        lastNameLabel.textAlignment = .left
        lastNameLabel.text = "Last Name"
        lastNameLabel.translatesAutoresizingMaskIntoConstraints = false
        
        return lastNameLabel
    }()
    
    lazy var streetAddressLabel: UILabel = {
        let streetAddressLabel = UILabel(frame: CGRect(x: 0, y: 0, width: 200, height: 200))
        streetAddressLabel.textAlignment = .left
        streetAddressLabel.text = "Street Address"
        streetAddressLabel.translatesAutoresizingMaskIntoConstraints = false
        
        return streetAddressLabel
    }()
    
    lazy var cityLabel: UILabel = {
        let cityLabel = UILabel(frame: CGRect(x: 0, y: 0, width: 200, height: 200))
        cityLabel.textAlignment = .left
        cityLabel.text = "City"
        cityLabel.translatesAutoresizingMaskIntoConstraints = false
        
        return cityLabel
    }()
    
    lazy var zipcodeLabel: UILabel = {
        let zipcodeLabel = UILabel(frame: CGRect(x: 0, y: 0, width: 200, height: 200))
        zipcodeLabel.textAlignment = .left
        zipcodeLabel.text = "Zip"
        zipcodeLabel.translatesAutoresizingMaskIntoConstraints = false
        
        return zipcodeLabel
    }()
    
    lazy var stateLabel: UILabel = {
        let stateLabel = UILabel(frame: CGRect(x: 0, y: 0, width: 200, height: 200))
        stateLabel.textAlignment = .left
        stateLabel.text = "State"
        stateLabel.translatesAutoresizingMaskIntoConstraints = false
        
        return stateLabel
    }()
    
    
    //TextFields for UI
    lazy var firstNameTextField: UITextField = {
        let firstNameTextField = UITextField(frame: CGRect(x: 20, y: 100, width: 100, height: 300))
        firstNameTextField.textColor = .white
        firstNameTextField.placeholder = "Enter your text here"
        firstNameTextField.borderStyle = .roundedRect
        firstNameTextField.backgroundColor = .gray
        firstNameTextField.translatesAutoresizingMaskIntoConstraints = false
        
        return firstNameTextField
    }()
    
    lazy var lastNameTextField: UITextField = {
        let lastNameTextField = UITextField(frame: CGRect(x: 20, y: 100, width: 100, height: 300))
        lastNameTextField.textColor = .white
        lastNameTextField.placeholder = "Enter your text here"
        lastNameTextField.borderStyle = .roundedRect
        lastNameTextField.backgroundColor = .gray
        lastNameTextField.translatesAutoresizingMaskIntoConstraints = false
        
        return lastNameTextField
    }()
    
    lazy var streetAddressTextField: UITextField = {
        let streetAddressTextField = UITextField(frame: CGRect(x: 20, y: 100, width: 100, height: 300))
        streetAddressTextField.textColor = .white
        streetAddressTextField.placeholder = "Enter your text here"
        streetAddressTextField.borderStyle = .roundedRect
        streetAddressTextField.backgroundColor = .gray
        streetAddressTextField.translatesAutoresizingMaskIntoConstraints = false
        
        return streetAddressTextField
    }()
    
    lazy var cityTextField: UITextField = {
        let cityTextField = UITextField(frame: CGRect(x: 20, y: 100, width: 100, height: 300))
        cityTextField.textColor = .white
        cityTextField.placeholder = "Enter your text here"
        cityTextField.borderStyle = .roundedRect
        cityTextField.backgroundColor = .gray
        cityTextField.translatesAutoresizingMaskIntoConstraints = false
        
        return cityTextField
    }()
    
    lazy var stateTextField: UITextField = {
        let stateTextField = UITextField(frame: CGRect(x: 20, y: 100, width: 100, height: 300))
        stateTextField.textColor = .white
        stateTextField.placeholder = "Enter your text here"
        stateTextField.borderStyle = .roundedRect
        stateTextField.backgroundColor = .gray
        stateTextField.translatesAutoresizingMaskIntoConstraints = false
        
        return stateTextField
    }()
    
    lazy var zipcodeTextField: UITextField = {
        let zipcodeTextField = UITextField(frame: CGRect(x: 20, y: 100, width: 100, height: 300))
        zipcodeTextField.textColor = .white
        zipcodeTextField.placeholder = "Enter your text here"
        zipcodeTextField.borderStyle = .roundedRect
        zipcodeTextField.backgroundColor = .gray
        zipcodeTextField.translatesAutoresizingMaskIntoConstraints = false
        
        return zipcodeTextField
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Comment which method you want to run!
        
        //setupGuestEntrants()
        setupEmployeeEntrants()
        
        //setupEmployeeEntrantsForErrorTesting()
        //setupGuestEntrantsForErrorTesting()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        
        let topStackView = UIStackView(arrangedSubviews: [guestButton, employeeButton, managerButton, contractorButton, vendorButton])
        topStackView.translatesAutoresizingMaskIntoConstraints = false
        topStackView.axis = .horizontal
        topStackView.alignment = .fill
        topStackView.distribution = .fillEqually
        topStackView.spacing = 0.0
        
        view.addSubview(topStackView)
        
        NSLayoutConstraint.activate([
            topStackView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 0.0),
            topStackView.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor, constant: 0.0),
            topStackView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 50.0),
            topStackView.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor, constant: 0.0),
            ])
        
        view.addSubview(firstNameLabel)
        
        NSLayoutConstraint.activate([
            firstNameLabel.topAnchor.constraint(equalTo: topStackView.bottomAnchor, constant: 100.0),
            firstNameLabel.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor, constant: 50.0)
            ])
        
        view.addSubview(lastNameLabel)
        
        NSLayoutConstraint.activate([
            lastNameLabel.topAnchor.constraint(equalTo: topStackView.bottomAnchor, constant: 100.0),
            lastNameLabel.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor, constant: 5.0)
            ])
        
        view.addSubview(firstNameTextField)
        
        NSLayoutConstraint.activate([
            firstNameTextField.topAnchor.constraint(equalTo: firstNameLabel.bottomAnchor, constant: 10.0),
            firstNameTextField.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor, constant: 0.0),
            firstNameTextField.leftAnchor.constraint(equalTo: firstNameLabel.leftAnchor, constant: 0.0)
            ])
        
        view.addSubview(lastNameTextField)
        
        NSLayoutConstraint.activate([
            lastNameTextField.topAnchor.constraint(equalTo: lastNameLabel.bottomAnchor, constant: 10.0),
            lastNameTextField.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor, constant: -20.0),
            lastNameTextField.leftAnchor.constraint(equalTo: lastNameLabel.leftAnchor, constant: 0.0)
            ])
        
        view.addSubview(streetAddressLabel)
        
        NSLayoutConstraint.activate([
            streetAddressLabel.leftAnchor.constraint(equalTo: firstNameLabel.leftAnchor, constant: 0.0),
            streetAddressLabel.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerYAnchor, constant: 0.0)
            ])
        
        view.addSubview(streetAddressTextField)
        
        NSLayoutConstraint.activate([
            streetAddressTextField.leftAnchor.constraint(equalTo: streetAddressLabel.leftAnchor, constant: 0.0),
            streetAddressTextField.topAnchor.constraint(equalTo: streetAddressLabel.bottomAnchor, constant: 10.0),
            streetAddressTextField.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor, constant: -20.0)
            ])
        
        view.addSubview(cityLabel)
        
        NSLayoutConstraint.activate([
            cityLabel.leftAnchor.constraint(equalTo: streetAddressTextField.leftAnchor, constant: 0.0),
            cityLabel.topAnchor.constraint(equalTo: streetAddressTextField.bottomAnchor, constant: 100.0)
            ])
        
        view.addSubview(stateLabel)
        
        NSLayoutConstraint.activate([
            stateLabel.leftAnchor.constraint(equalTo: cityLabel.rightAnchor, constant: 200.0),
            stateLabel.topAnchor.constraint(equalTo: streetAddressTextField.bottomAnchor, constant: 100.0)
            ])
        
        view.addSubview(zipcodeLabel)
        
        NSLayoutConstraint.activate([
            zipcodeLabel.leftAnchor.constraint(equalTo: stateLabel.rightAnchor, constant: 200.0),
            zipcodeLabel.topAnchor.constraint(equalTo: streetAddressTextField.bottomAnchor, constant: 100.0)
            ])
        
        view.addSubview(cityTextField)
        
        NSLayoutConstraint.activate([
            cityTextField.leftAnchor.constraint(equalTo: cityLabel.leftAnchor, constant: 0.0),
            cityTextField.topAnchor.constraint(equalTo: cityLabel.bottomAnchor, constant: 10.0)
            ])
        
        view.addSubview(stateTextField)
        
        NSLayoutConstraint.activate([
            stateTextField.leftAnchor.constraint(equalTo: stateLabel.leftAnchor, constant: 0.0),
            stateTextField.topAnchor.constraint(equalTo: stateLabel.bottomAnchor, constant: 10.0)
            
            ])
        
        view.addSubview(zipcodeTextField)
        
        NSLayoutConstraint.activate([
            zipcodeTextField.leftAnchor.constraint(equalTo: zipcodeLabel.leftAnchor, constant: 0.0),
            zipcodeTextField.topAnchor.constraint(equalTo: zipcodeLabel.bottomAnchor, constant: 10.0)
            
            ])
        
    }
    
    @objc func guestButtonClicked(sender: UIButton) {
        //Do Button Clicked Code here
        
        let bottomStackView = UIStackView(arrangedSubviews: [childButton, classicButton, seniorButton, vipButton, seasonPassButton])
        bottomStackView.translatesAutoresizingMaskIntoConstraints = false
        bottomStackView.axis = .horizontal
        bottomStackView.alignment = .fill
        bottomStackView.distribution = .fillEqually
        bottomStackView.spacing = 0.0
        
        view.addSubview(bottomStackView)
        
        NSLayoutConstraint.activate([
            bottomStackView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 50.0),
            bottomStackView.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor, constant: 0.0),
            bottomStackView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 100.0),
            bottomStackView.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor, constant: 0.0),
            ])
        
    }
    
    @objc func employeeButtonClicked(sender: UIButton) {
        //Do Button Clicked Code here
        
        let bottomStackView = UIStackView(arrangedSubviews: [foodServicesButton, rideServicesButton, maintenanceButton])
        bottomStackView.translatesAutoresizingMaskIntoConstraints = false
        bottomStackView.axis = .horizontal
        bottomStackView.alignment = .fill
        bottomStackView.distribution = .fillEqually
        bottomStackView.spacing = 0.0
        
        view.addSubview(bottomStackView)
        
        NSLayoutConstraint.activate([
            bottomStackView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 50.0),
            bottomStackView.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor, constant: 0.0),
            bottomStackView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 100.0),
            bottomStackView.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor, constant: 0.0),
            ])
        
    }
    
    @objc func managerButtonClicked(sender: UIButton) {
        //Do Button Clicked Code here
        
        let bottomStackView = UIStackView(arrangedSubviews: [emptyButtonForStackView])
        bottomStackView.translatesAutoresizingMaskIntoConstraints = false
        bottomStackView.axis = .horizontal
        bottomStackView.alignment = .fill
        bottomStackView.distribution = .fillEqually
        bottomStackView.spacing = 0.0
        
        view.addSubview(bottomStackView)
        
        NSLayoutConstraint.activate([
            bottomStackView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 50.0),
            bottomStackView.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor, constant: 0.0),
            bottomStackView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 100.0),
            bottomStackView.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor, constant: 0.0),
            ])
    }
    
    @objc func contractorButtonClicked(sender: UIButton) {
        //Do Button Clicked Code here
        
        let bottomStackView = UIStackView(arrangedSubviews: [emptyButtonForStackView])
        bottomStackView.translatesAutoresizingMaskIntoConstraints = false
        bottomStackView.axis = .horizontal
        bottomStackView.alignment = .fill
        bottomStackView.distribution = .fillEqually
        bottomStackView.spacing = 0.0
        
        view.addSubview(bottomStackView)
        
        NSLayoutConstraint.activate([
            bottomStackView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 50.0),
            bottomStackView.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor, constant: 0.0),
            bottomStackView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 100.0),
            bottomStackView.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor, constant: 0.0),
            ])
    }
    
    @objc func vendorButtonClicked(sender: UIButton) {
        //Do Button Clicked Code here
        
        let bottomStackView = UIStackView(arrangedSubviews: [emptyButtonForStackView])
        bottomStackView.translatesAutoresizingMaskIntoConstraints = false
        bottomStackView.axis = .horizontal
        bottomStackView.alignment = .fill
        bottomStackView.distribution = .fillEqually
        bottomStackView.spacing = 0.0
        
        view.addSubview(bottomStackView)
        
        NSLayoutConstraint.activate([
            bottomStackView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 50.0),
            bottomStackView.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor, constant: 0.0),
            bottomStackView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 100.0),
            bottomStackView.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor, constant: 0.0),
            ])
        
    }
    
    // This is the proper setup information the Guest Entrants
    func setupGuestEntrants() {
        let classicGuestEntrant = Guest(entrantType: EntrantType.classicGuest, areaAccess: [AreaAccess.amusementAreas], rideAccess: [RideAccess.canAccessAllRides],
            entrantInformation: nil)
        
        let vipGuestEntrant = Guest(entrantType: EntrantType.vipGuest, areaAccess: [AreaAccess.amusementAreas], rideAccess: [RideAccess.canAccessAllRides, RideAccess.canSkipAllRideLines], entrantInformation: nil)
        
        let freeChildGuestEntrantInformation = EntrantInformation(dateOfBirth: Date())
        let freeChildGuestEntrant = Guest(entrantType: EntrantType.freeChildGuest, areaAccess: [AreaAccess.amusementAreas], rideAccess: [RideAccess.canAccessAllRides], entrantInformation: freeChildGuestEntrantInformation)
        
        // Create a entrants array for all the entrants, and an empty passes array for the corresponding passes
        let entrants: [Entrant] = [classicGuestEntrant, vipGuestEntrant, freeChildGuestEntrant, freeChildGuestEntrant]
        var passes: [Pass] = [Pass]()
        
        for entrant in entrants {
            passes.append(entrant.createPassFromEntrant())
        }
        
        for index in 0...passes.count - 1 {
            entrants[index].entrantPass = passes[index]
            if let pass = entrants[index].entrantPass {
                print(pass)
            }
        }
        
        // I'm just calling the 1st entry in the entrants array to call the swipe methods.  So I was testing based on the first position in the array for the 1st part of the project.
        // I'm doing this until we write the UI in the next project.
        entrants[0].swipeAccessPass()
    }
    
    // This is the proper setup of the employee entrants
    func setupEmployeeEntrants() {
        let employeeFoodServicesEntrantInformation = EntrantInformation(dateOfBirth: Date(), firstName: "Bob", lastName: "Barker", streetAddress: "2422 NE Dake Rd, city", city: "Bremerton", state: "WA", zipcode: 98322)
        let employeeFoodServicesEntrant = Employee(entrantType: .employeeFoodServices, areaAccess: [.amusementAreas, .kitchenAreas], rideAccess: [RideAccess.canAccessAllRides], entrantInformation: employeeFoodServicesEntrantInformation)
        
        let employeeRideServicesEntrantInformation = EntrantInformation(dateOfBirth: Date(), firstName: "Craig", lastName: "David", streetAddress: "4425 32nd Ave SE", city: "Kent", state: "WA", zipcode: 98032)
        let employeeRideServicesEntrant = Employee(entrantType: .employeeRideServices, areaAccess: [.amusementAreas, .rideControlAreas], rideAccess:[.canAccessAllRides] , entrantInformation: employeeRideServicesEntrantInformation)
        
        let employeeMaintenanceEntrantInformation = EntrantInformation(dateOfBirth: Date(), firstName: "Kid", lastName: "Rock", streetAddress: "3232 Rock Street NE", city: "Detroit", state: "MI", zipcode: 12332)
        let employeeMaintenanceEntrant = Employee(entrantType: .employeeMaintenance, areaAccess: [.amusementAreas, .kitchenAreas, .rideControlAreas, .maintenanceAreas], rideAccess: [.canAccessAllRides], entrantInformation: employeeMaintenanceEntrantInformation)
        
        let employeeManagerEntrantInformation = EntrantInformation(dateOfBirth: Date(), firstName: "Aubrey", lastName: "Graham", streetAddress: "51223 Calabasas Dr.", city: "Calabasas", state: "CA", zipcode: 90290)
        let employeeManagerEntrant = Employee(entrantType: .manager, areaAccess: [.amusementAreas, .kitchenAreas, .rideControlAreas, .maintenanceAreas, .officeAreas], rideAccess: [.canAccessAllRides], entrantInformation: employeeManagerEntrantInformation)
        
        // Create a entrants array for all the entrants, and an empty passes array for the corresponding passes
        let entrants: [Entrant] = [employeeFoodServicesEntrant, employeeRideServicesEntrant, employeeMaintenanceEntrant, employeeManagerEntrant]
        var passes: [Pass] = [Pass]()
        
        for entrant in entrants {
            passes.append(entrant.createPassFromEntrant())
        }
        
        for index in 0...passes.count - 1 {
            entrants[index].entrantPass = passes[index]
            if let pass = entrants[index].entrantPass {
                print(pass)
            }
        }
        
        //Calling swipe
        entrants[0].swipeAccessPass()
        
    }
    
    // In this function, the streetAddress is nil. Employees require you to have your personal information filled out!
    // You can make any of the EntrantInformation's parameters nil and it will error out on the first one it finds nil.
    func setupEmployeeEntrantsForErrorTesting() {
        let employeeFoodServicesEntrantInformation = EntrantInformation(dateOfBirth: Date(), firstName: "Bob", lastName: "Barker", streetAddress: nil, city: "Bremerton", state: "WA", zipcode: 98322)
        let employeeFoodServicesEntrant = Employee(entrantType: .employeeFoodServices, areaAccess: [.amusementAreas, .kitchenAreas], rideAccess: [RideAccess.canAccessAllRides], entrantInformation: employeeFoodServicesEntrantInformation)
        
        // Create a entrants array for all the entrants, and an empty passes array for the corresponding passes
        let entrants: [Entrant] = [employeeFoodServicesEntrant]
        var passes: [Pass] = [Pass]()
        
        for entrant in entrants {
            passes.append(entrant.createPassFromEntrant())
        }
        
        for index in 0...passes.count - 1 {
            entrants[index].entrantPass = passes[index]
            if let pass = entrants[index].entrantPass {
                print(pass)
            }
        }
        
        //Calling swipe
        entrants[0].swipeAccessPass()
    }
    
    //In this function, the Child Guest Entrant is required to have a birthdate.
    //So we passed in nil to trigger the error checking!
    func setupGuestEntrantsForErrorTesting() {
    
        let freeChildGuestEntrantInformation = EntrantInformation(dateOfBirth: nil)
        let freeChildGuestEntrant = Guest(entrantType: EntrantType.freeChildGuest, areaAccess: [AreaAccess.amusementAreas], rideAccess: [RideAccess.canAccessAllRides], entrantInformation: freeChildGuestEntrantInformation)
        
        // Create a entrants array for all the entrants, and an empty passes array for the corresponding passes
        let entrants: [Entrant] = [freeChildGuestEntrant]
        var passes: [Pass] = [Pass]()
        
        for entrant in entrants {
            passes.append(entrant.createPassFromEntrant())
        }
        
        for index in 0...passes.count - 1 {
            entrants[index].entrantPass = passes[index]
            if let pass = entrants[index].entrantPass {
                print(pass)
            }
        }
        
        // Calling the swipe method
        entrants[0].swipeAccessPass()
    }
    
}// End of ViewController

