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
    
    func deleteWithObject()
    
    func deleteSingleTask(object: Object)
    
    func removeAllTasks()
    
    func loadTasks()
    
    func loadTaskList()
    
    func testSave()
    
    func testDelete()
}

class RealmDataManager: RealmDataManagerProtocol {
    
    static var shared: RealmDataManagerProtocol = RealmDataManager()
    
    let realm = try! Realm()
    
    func save(object: Object) {
        // begin work of the storage
        realm.beginWrite()
        // do some actions with storage
        realm.add(object)
        print("\(object) has been added")
        // end the work and save storage
        // use "try!" because there can be no changes
        try! realm.commitWrite()
    }
    
    func deleteWithObject() {
        realm.beginWrite()
        realm.delete(realm.objects(Task.self))
        try! realm.commitWrite()
    }
    
    func delete(object: Object) {
        realm.beginWrite()
        realm.delete(object)
        print("\(object) has been deleted")
        try! realm.commitWrite()
    }
    
    func deleteSingleTask(object: Object) {
        realm.beginWrite()
        // realm.delete(realm.ob)
    }
    
    func removeAllTasks() {
        realm.beginWrite()
        realm.deleteAll()
        try! realm.commitWrite()
        print("Realm storage has been erased")
    }
    
    func loadTasks() {
        for task in realm.objects(Task.self) {
            print("\(task.taskName) has been loaded)")
        }
    }
    
    func loadTaskList() {
        for list in realm.objects(TaskList.self) {
            for task in list.taskList {
                print("\(task.taskName) has been loaded)")
            }
        }
    }
    
}

