//
//  ModelData.swift
//  Netlight UI Mockup
//
//  Created by Jakob Paul Körber on 03.11.22.
//

import Foundation

class ModelData: ObservableObject {
    
    @Published public private(set) var courses: [Course]
    
    init(courses: [Course]) {
        self.courses = courses
    }
}
