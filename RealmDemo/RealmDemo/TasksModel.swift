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
    
    convenience init(taskName: String, deadLine: String, isImportant: Bool) {
        self.init()
        self.taskName = taskName
        self.deadLine = deadLine
        self.isImportant = isImportant
    }
}

// You can't just use Array<Object>
// Should use List<Object< instead without any keywords like @objc and dynamic
class TaskList: Object {
    let taskList = List<Task>()
}


