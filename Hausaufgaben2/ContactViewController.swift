//
//  ContactViewController.swift
//  Hausaufgaben2
//
//  Created by Maksat Edil on 28/10/23.
//

import UIKit

class ContactViewController: UIViewController{
    
    
    
    
    private let tableview = UITableView()
    private var contacts: [Contact] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        title = "My Contacts"
        configureTableView()
        setData()
    }
    
    private func setData(){
        contacts = [
            Contact(image: "jane", name: "Jane Cooper", phoneNumb: "(270)555-997"),
            Contact(image: "Devon", name: "Devon lane", phoneNumb: "(303)012-237"),
            Contact(image: "Darell", name: "Darell Steward", phoneNumb: "(603)555-1012"),
            Contact(image: "Devon1", name: "Devon Lane", phoneNumb: "(773)555-1231"),
            Contact(image: "Henry", name: "Henry Courtney", phoneNumb: "(234)555-2342"),
            Contact(image: "Wade", name: "Wade Warren", phoneNumb: "(745)555-1352"),
            Contact(image: "Bessie", name: "Bessie Cooper", phoneNumb: "(452)535-1237"),
            Contact(image: "Rob", name: "Rober Fox", phoneNumb: "(243)123-0120"),
            Contact(image: "Jac", name: "Jacob Johnes", phoneNumb: "(342)555-0130"),
            Contact(image: "Jen", name: "Jenny Wilson", phoneNumb: "(403)980-1252")
        ]
    }
    private func configureTableView(){
        view.addSubview(tableview)
        tableview.dataSource = self
        tableview.translatesAutoresizingMaskIntoConstraints = false
        tableview.topAnchor.constraint(equalTo: view.topAnchor, constant: 40).isActive = true
        tableview.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        tableview.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        tableview.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
    }
    
}
extension ContactViewController: UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        contacts.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .subtitle, reuseIdentifier: "cell")
        cell.textLabel?.text = contacts[indexPath.row].name
        cell.imageView?.image = UIImage(named: contacts[indexPath.row].image)
        cell.detailTextLabel?.text = contacts[indexPath.row].phoneNumb
        return cell
    }
    
    
}
