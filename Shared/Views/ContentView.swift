//
//  ContentView.swift
//  Shared
//
//  Created by Li, Muchen on 2021/1/23.
//

import SwiftUI

struct ContentView: View {
    
    // stores all task being tracked
    @ObservedObject var store: TaskStore
    
    //controls whether the add task view is showing
    @State private var showingAddTaskView = false
    
    var body: some View {
        List(store.tasks){task in
            TaskCell(task: task)
        }
        .navigationTitle("Reminders")
        .toolbar{
            ToolbarItem(placement: .primaryAction){
                Button("Add"){
                    showingAddTaskView = true
                }
            }
        }
        // shows the sheet when $showingAddTaskView is changed to true
        .sheet(isPresented: $showingAddTaskView){
            AddTask(showing: $showingAddTaskView)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            ContentView(store: testStore)
        }
    }
}
