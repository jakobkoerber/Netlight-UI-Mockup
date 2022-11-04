//
//  JourneyEntryView.swift
//  Netlight UI Mockup
//
//  Created by Jakob Paul Körber on 04.11.22.
//

import SwiftUI

struct JourneyEntryView: View {
    
    var course: Course
    
    var body: some View {
        HStack {
            if(course.status) {
                Circle()
                    .fill(Color.accentColor)
                    .overlay(Image(systemName: "checkmark")
                        .foregroundColor(.white))
                    .frame(width: 64)
            } else {
                if(course.current) {
                    Circle()
                    //.stroke(lineWidth: 5).foregroundColor(.accentColor)
                        .fill(Color.accentColor)
                        .overlay(Image(systemName: "hourglass")
                            .foregroundColor(.white))
                        .frame(width: 64)
                } else {
                    Circle()
                        .fill(Color.accentColor)
                        .frame(width: 64)
                }
            }
            Spacer()
            VStack {
                Text(course.name).fontWeight(.semibold)
                Text("\(course.heldBy), \(course.roleInstructor)")
            }
            Spacer()
        }
        .padding()
    }
}

struct JourneyEntryView_Previews: PreviewProvider {
    static var previews: some View {
        JourneyEntryView(course: MockModel().courses[2])
    }
}
