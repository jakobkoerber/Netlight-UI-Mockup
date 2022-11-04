//
//  CourseRectangle.swift
//  Netlight UI Mockup
//
//  Created by Jakob Paul Körber on 03.11.22.
//

import SwiftUI

struct CourseRectangleView: View {
    
    let course: Course
    
    var body: some View {
        VStack {
            Image(course.image)
                .resizable()
                .frame(width: 170, height: 170)
                .cornerRadius(20)
            Text(course.name).fontWeight(.semibold)
            Text("\(course.heldBy), \(course.roleInstructor)").font(.system(size: 9))
        }
        .frame(width: 170, height: 210)
    }
}

struct CourseRectangleView_Previews: PreviewProvider {
    static var previews: some View {
        CourseRectangleView(course: MockModel().courses[0])
    }
}
