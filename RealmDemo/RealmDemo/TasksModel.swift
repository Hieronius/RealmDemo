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
}

class TaskList: Object {
    @objc dynamic var taskList = [Task]()
}


