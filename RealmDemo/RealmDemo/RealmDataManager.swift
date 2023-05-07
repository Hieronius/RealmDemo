//
//  RealmDataManager.swift
//  RealmDemo
//
//  Created by Арсентий Халимовский on 07.05.2023.
//

import UIKit
import RealmSwift

protocol RealmDataManagerProtocol: AnyObject {
    
    static var shared: RealmDataManagerProtocol { get }
    
    func save(object: Object)
    
    func delete(object: Object)
    
    func removeAllTasks(objects: [Object])
    
    func loadTasks()
    
    func loadTaskList()
}

class RealmDataManager: RealmDataManagerProtocol {
    
    static var shared: RealmDataManagerProtocol = RealmDataManager()
    
    let realm = try! Realm()
    
    func save(object: Object) {
        // begin work of the storage
        realm.beginWrite()
        // do some actions with storage
        realm.add(object)
        // end the work and save storage
        // use "try!" because there can be no changes
        try! realm.commitWrite()
    }
    
    func delete(object: Object) {
        realm.beginWrite()
        realm.delete(object)
        try! realm.commitWrite()
    }
    
    func removeAllTasks(objects: [Object]) {
        realm.beginWrite()
        realm.deleteAll()
        try! realm.commitWrite()
    }
    
    func loadTasks() {
        for task in realm.objects(Task.self) {
            print(task.taskName)
            print(task.deadLine)
            print("is it important - \(task.isImportant)")
        }
    }
    
    func loadTaskList() {
        for list in realm.objects(TaskList.self) {
            for task in list.taskList {
                print(task.taskName)
                print(task.deadLine)
                print("is it important - \(task.isImportant)")
            }
        }
    }
    
}

