//
//  Tags.swift
//  Netlight UI Mockup
//
//  Created by Jakob Paul Körber on 03.11.22.
//

import Foundation

struct Tag {
    
    var id: UUID
    var name, image: String
    
    init(id: UUID? = nil, name: String, image: String) {
        self.id = id ?? UUID()
        self.name = name
        self.image = image
    }
}
