//
//  TopViewModel.swift
//  TaskRTA
//
//  Created by Mercury on 2019/07/25.
//  Copyright © 2019 Rirex. All rights reserved.
//

class TopViewModel {
    
    let taskModel = TaskModel()
    
    func save(task: Task) {
        taskModel.save(task: task, isUpdate: false)
    }
    
    func readRunningTask() -> Task? {
        if let latestTask = taskModel.readAll().last {
            if latestTask.finishDate == nil {
                return latestTask
            }
        }
        return nil
    }
}
