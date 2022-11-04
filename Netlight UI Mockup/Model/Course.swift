//
//  Course.swift
//  Netlight UI Mockup
//
//  Created by Jakob Paul Körber on 03.11.22.
//

import Foundation

struct Course {
    var id: UUID
    var name, heldBy, roleInstructor, image: String
    var tag: Tag
    var status, current: Bool
    
    init(id: UUID? = nil, name: String, heldBy: String, roleInstructor: String, image: String, tag: Tag, status: Bool, current: Bool) {
        self.id = id ?? UUID()
        self.name = name
        self.heldBy = heldBy
        self.roleInstructor = roleInstructor
        self.image = image
        self.tag = tag
        self.status = status
        self.current = current
    }
}
