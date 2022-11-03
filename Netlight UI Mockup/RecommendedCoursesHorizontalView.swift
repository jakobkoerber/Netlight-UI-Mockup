//
//  RecommendedCoursesHorizontalView.swift
//  Netlight UI Mockup
//
//  Created by Jakob Paul Körber on 03.11.22.
//

import SwiftUI

struct RecommendedCoursesHorizontalView: View {
    var body: some View {
        VStack {
            HStack {
                Text("Recommended courses")
                Spacer()
                Button {
                    
                } label: {
                    Text("View all").foregroundColor(Color("NetlightPurple"))
                }
            }
            ScrollView(.horizontal) {
                HStack(spacing: 20) {
                    ForEach(0..<10) {
                        Text("Item \($0)")
                            .foregroundColor(.white)
                            .font(.largeTitle)
                            .frame(width: 170, height: 170)
                            .background(Color("NetlightPurple"))
                    }
                }
            }
        }.padding()
    }
}

struct RecommendedCoursesHorizontalView_Previews: PreviewProvider {
    static var previews: some View {
        RecommendedCoursesHorizontalView()
    }
}
