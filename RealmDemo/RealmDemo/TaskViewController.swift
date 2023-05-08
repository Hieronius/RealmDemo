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
    
    let taskList = TaskList()
    
    private var realmDataManager: RealmDataManagerProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        realmDataManager = RealmDataManager()
        
          // realmDataManager?.removeAllTasks()
        // realmDataManager.
        
          // realmDataManager?.loadTasks()
        
        realmDataManager?.save(object: taskList)
        
        realmDataManager?.delete(object: taskList)
        
        // realmDataManager?.loadTasks()
        realmDataManager?.loadTaskList()
        
        
    }
}
