//
//  TaskRealmModel
//  toDO
//
//  Created by Mercury on 2019/07/25.
//  Copyright © 2019 Rirex. All rights reserved.
//

import RealmSwift

class TaskRealm: Object {
    
    @objc dynamic var taskName: String = ""
    @objc dynamic var progress: Int = -1
    
    func set(task: Task) {
        taskName = task.name
        progress = task.progress
    }
}
