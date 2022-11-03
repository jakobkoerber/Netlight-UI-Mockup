//
//  MockModel.swift
//  Netlight UI Mockup
//
//  Created by Jakob Paul Körber on 03.11.22.
//

import Foundation

class MockModel: ModelData {
    
    public convenience init() {
        var courses: [Course] = []
        
        let course1 = Course(
            name: "Java for Beginners",
            heldBy: "Julia Roberts",
            roleInstructor: "Software developer",
            image: "",
            tag: Tags.programmingLanguages)
        let course2 = Course(
            name: "Accounting",
            heldBy: "Rafael Nadal",
            roleInstructor: "Accounting specialist",
            image: "",
            tag: Tags.accounting)
        let course3 = Course(
            name: "Working in Agile Teams",
            heldBy: "Toni Kroos",
            roleInstructor: "Agile Coach",
            image: "",
            tag: Tags.agileTranformation)
        
        courses.append(course1)
        courses.append(course2)
        courses.append(course3)
        
        self.init(courses: courses)
    }
}
