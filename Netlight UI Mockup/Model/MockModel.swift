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
        var tags: [Tag] = []
        
        let tag1 = Tag(name: "Programming Languagues", image: "programmingLanguages")
        let tag2 = Tag(name: "Accounting", image: "accounting")
        let tag3 = Tag(name: "Agile Transformation", image: "agile")
        
        tags.append(tag1)
        tags.append(tag2)
        tags.append(tag3)
        
        let course1 = Course(
            name: "Java for Beginners",
            heldBy: "Julia Roberts",
            roleInstructor: "Software developer",
            image: "programmingLanguages",
            tag: tag1,
            status: true,
            current: false)
        let course2 = Course(
            name: "Accounting",
            heldBy: "Rafael Nadal",
            roleInstructor: "Accounting specialist",
            image: "accounting",
            tag: tag2,
            status: true,
            current: false)
        let course3 = Course(
            name: "RUGBY",
            heldBy: "Toni Kroos",
            roleInstructor: "Agile Coach",
            image: "agile",
            tag: tag3,
            status: true,
            current: false)
        let course4 = Course(
            name: "Working in Agile Teams",
            heldBy: "Toni Kroos",
            roleInstructor: "Agile Coach",
            image: "agile",
            tag: tag3,
            status: false,
            current: true)
        let course5 = Course(
            name: "Advanced Java",
            heldBy: "Julia Roberts",
            roleInstructor: "Software developer",
            image: "programmingLanguages",
            tag: tag1,
            status: false,
            current: false)
        let course6 = Course(
            name: "Advanced Accounting",
            heldBy: "Rafael Nadal",
            roleInstructor: "Accounting specialist",
            image: "accounting",
            tag: tag2,
            status: false,
            current: false)
        let course7 = Course(
            name: "Introduction to SQL",
            heldBy: "Julia Roberts",
            roleInstructor: "Software developer",
            image: "programmingLanguages",
            tag: tag1,
            status: false,
            current: false)
        courses.append(course1)
        courses.append(course2)
        courses.append(course3)
        courses.append(course4)
        courses.append(course5)
        courses.append(course6)
        courses.append(course7)
        
        self.init(courses: courses, tags: tags)
    }
}
