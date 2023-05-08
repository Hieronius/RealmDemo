//
//  TaskViewController.swift
//  RealmDemo
//
//  Created by Арсентий Халимовский on 07.05.2023.
//

import UIKit

final class TaskViewController: UIViewController {
    
    let task1 = Task(taskName: "Buy food", deadLine: "31.10.23", isImportant: false)
    let task2 = Task(taskName: "Visit a doctor", deadLine: "21.05.23", isImportant: true)
    let task3 = Task(taskName: "Repair a car", deadLine: "17.03.23", isImportant: false)
    let task4 = Task(taskName: "Pay for rent", deadLine: "10.10.23", isImportant: true)
    let task5 = Task(taskName: "Grab documents", deadLine: "11.07.23", isImportant: false)
    
    private var realmDataManager: RealmDataManagerProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        realmDataManager = RealmDataManager()
        
         // realmDataManager?.removeAllTasks()
        
//        realmDataManager?.save(object: task1)
//        realmDataManager?.save(object: task2)
//        realmDataManager?.save(object: task3)
//        realmDataManager?.save(object: task4)
//        realmDataManager?.save(object: task5)
        
          // realmDataManager?.loadTasks()
        
          // realmDataManager?.delete(object: task1)
         // realmDataManager?.deleteWithObject()
        
        realmDataManager.
        
          realmDataManager?.loadTasks()
        
        
    }
}
