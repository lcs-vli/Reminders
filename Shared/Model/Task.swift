//
//  Task.swift
//  Reminders (iOS)
//
//  Created by Li, Muchen on 2021/1/23.
//

import Foundation

struct Task: Identifiable {
    //create id for each item so that know which one to delete
    var id = UUID()
    var description: String
    var priority: TaskPriority
    var completed: Bool
}

let testData = [
    Task(description: "study", priority: .high, completed: true),
    Task(description: "more study", priority: .medium, completed: false),
    Task(description: "more more study", priority: .low, completed: false),
]
