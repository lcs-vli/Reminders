//
//  TaskStore.swift
//  Reminders (iOS)
//
//  Created by Li, Muchen on 2021/1/23.
//

import Foundation

class TaskStore: ObservableObject {
    @Published var tasks: [Task]
    
    init(tasks: [Task] = []){
        self.tasks = tasks
    }
}

let testStore = TaskStore(tasks: testData)
