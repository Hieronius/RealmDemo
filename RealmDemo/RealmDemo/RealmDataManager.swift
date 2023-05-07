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
    
    func save()
    
    func delete()
    
    func loadTasks()
}

class RealmDataManager: RealmDataManagerProtocol {
    
    static var shared: RealmDataManagerProtocol = RealmDataManager()
    
    func save() {
        // some code here
    }
    
    func delete() {
        // some code here
    }
    
    func loadTasks() {
        // some code here
    }
    
}

