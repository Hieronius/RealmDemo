//
//  TasksModel.swift
//  RealmDemo
//
//  Created by Арсентий Халимовский on 07.05.2023.
//

import Foundation
import RealmSwift

class Task: Object {
    @objc dynamic var taskName = "String"
    @objc dynamic var deadLine = "String"
    @objc dynamic var isImportant = false
    
    init(taskName: String = "String", deadLine: String = "String", isImportant: Bool = false) {
        self.taskName = taskName
        self.deadLine = deadLine
        self.isImportant = isImportant
    }
}

class TaskList: Object {
    @objc dynamic var taskList = [Task]()
}


