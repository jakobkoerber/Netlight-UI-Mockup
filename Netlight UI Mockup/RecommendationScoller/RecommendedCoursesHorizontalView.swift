//
//  RecommendedCoursesHorizontalView.swift
//  Netlight UI Mockup
//
//  Created by Jakob Paul Körber on 03.11.22.
//

import SwiftUI

struct RecommendedCoursesHorizontalView: View {
    
    @EnvironmentObject var model: ModelData
    
    var body: some View {
        VStack {
            HStack {
                Text("Recommended courses")
                Spacer()
                Button {
                    //view of all recommended courses
                } label: {
                    Text("View all").foregroundColor(Color("NetlightPurple"))
                }
            }
            ScrollView(.horizontal) {
                HStack(spacing: 20) {
                    ForEach(model.courses, id: \.id) { course in
                        CourseRectangleView(course: course)
                    }
                }
            }
        }.padding()
    }
}

struct RecommendedCoursesHorizontalView_Previews: PreviewProvider {
    static var previews: some View {
        RecommendedCoursesHorizontalView().environmentObject(MockModel() as ModelData)
    }
}
