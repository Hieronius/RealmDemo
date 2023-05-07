//
//  ViewController.swift
//  RealmDemo
//
//  Created by Арсентий Халимовский on 06.05.2023.
//

import UIKit
import RealmSwift

class ViewController: UIViewController {
    
    let realm = try! Realm()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view
        realm.beginWrite()
        delete()
        try! realm.commitWrite()
        
        save()
        
        render()
    }
    
    func delete() {
        realm.delete(realm.objects(Person.self))
    }
    
    func render() {
        let people = realm.objects(Person.self)
        for person in people {
            let firstName = person.firstName
            let secondName = person.lastName
            let fullName = "\(firstName) \(secondName)"
            
            let label = UILabel(frame: view.bounds)
            label.text = fullName
            label.textAlignment = .center
            label.numberOfLines = 0
            view.addSubview(label)
            label.font = UIFont(name: "Helvetica", size: 42)
        }
    }
    
    func save() {
        let joe = Person()
        joe.firstName = "Jenny"
        joe.lastName = "Jhonson"
        
        realm.beginWrite()
        realm.add(joe)
        try! realm.commitWrite()
    }


}

class Person: Object {
    @objc dynamic var firstName: String = ""
    @objc dynamic var lastName: String = ""
    @objc dynamic var age: Int = 0
    
}

