//
//  Task.swift
//  Reminders (iOS)
//
//  Created by Li, Muchen on 2021/1/23.
//

import Foundation

class Task: Identifiable, ObservableObject {
    //create id for each item so that know which one to delete
    var id = UUID()
    var description: String
    var priority: TaskPriority
    //need swift UI to see when this porperty changes
    @Published var completed: Bool
    
    internal init(id: UUID = UUID(), description: String, priority: TaskPriority, completed: Bool){
        self.id = id
        self.description = description
        self.priority = priority
        self.completed = completed
    }
}

let testData = [
    Task(description: "studying", priority: .high, completed: true),
    Task(description: "more studying", priority: .medium, completed: false),
    Task(description: "more more studying", priority: .low, completed: false),
]
