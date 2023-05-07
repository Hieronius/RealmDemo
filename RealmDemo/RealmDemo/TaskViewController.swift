//
//  TaskViewController.swift
//  RealmDemo
//
//  Created by Арсентий Халимовский on 07.05.2023.
//

import UIKit

final class TaskViewController: UIViewController {
    
    private var realmDataManager: RealmDataManagerProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // some core here
        print("There is a task view controller")
        realmDataManager = RealmDataManager()
        
    }
}
