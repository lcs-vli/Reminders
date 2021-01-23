//
//  AddTask.swift
//  Reminders
//
//  Created by Li, Muchen on 2021/1/23.
//

import SwiftUI

struct AddTask: View {
    
    //details of the new task
    @State private var description = ""
    @State private var priority = TaskPriority.low
    
    //whether to show this view
    @Binding var showing: Bool
    
    var body: some View {
        NavigationView{
            VStack{
                Form{
                    TextField("Description", text: $description)
                    
                    Picker("Priority", selection: $priority){
                        Text(TaskPriority.low.rawValue).tag(TaskPriority.low)
                        Text(TaskPriority.medium.rawValue).tag(TaskPriority.medium)
                        Text(TaskPriority.high.rawValue).tag(TaskPriority.high)
                    }
                    .pickerStyle(SegmentedPickerStyle())
                }
            }
            .navigationTitle("New Reminder")
            .toolbar{
                ToolbarItem(placement: .primaryAction){
                    Button("Save"){
                        saveTask()
                    }
                }
            }
        }
    }
    
    func saveTask(){
        showing = false
    }
}

struct AddTask_Previews: PreviewProvider {
    static var previews: some View {
        AddTask(showing: .constant(true))
    }
}
