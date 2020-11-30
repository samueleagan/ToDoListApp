
import UIKit

class Task: NSObject {

    var taskText: String
    var isDeleted: Bool // This isDeleted is a "soft delete" that will allow us to remove
                        // it from the current Task list but still show up in the History view
    
    init(taskText:String) {
        self.taskText = taskText
        isDeleted = false
    }
}
