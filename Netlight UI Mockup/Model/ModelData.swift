//
//  ModelData.swift
//  Netlight UI Mockup
//
//  Created by Jakob Paul Körber on 03.11.22.
//

import Foundation

class ModelData: ObservableObject {
    
    @Published public private(set) var courses: [Course]
    @Published public private(set) var tags: [Tag]
    
    init(courses: [Course], tags: [Tag]) {
        self.courses = courses
        self.tags = tags
    }
    
    func calculateCompletedTasks() -> Int {
        courses.reduce(0, {
            if($1.status) {
                return $0+1
            } else {
                return $0
            }
        })
    }
}
