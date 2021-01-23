//
//  RemindersApp.swift
//  Shared
//
//  Created by Li, Muchen on 2021/1/23.
//

import SwiftUI

@main
struct RemindersApp: App {
    
    @StateObject private var store = TaskStore(tasks: testData)
    
    var body: some Scene {
        WindowGroup {
            NavigationView{
                ContentView(store: store)
            }
        }
    }
}
