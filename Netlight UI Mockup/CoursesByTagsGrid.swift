//
//  CoursesByTagsGrid.swift
//  Netlight UI Mockup
//
//  Created by Jakob Paul Körber on 03.11.22.
//

import SwiftUI

struct CoursesByTagsGridView: View {
    var body: some View {
        VStack {
            HStack {
                Text("Courses by Tags")
                Spacer()
                Button {
                    
                } label: {
                    Text("View all").foregroundColor(Color("NetlightPurple"))
                }
            }
            LazyVGrid(columns: [GridItem(), GridItem()]) {
                ForEach(0..<10) {
                    Text("Item \($0)")
                        .foregroundColor(.white)
                        .font(.largeTitle)
                        .frame(width: 150, height: 50)
                        .background(Color("NetlightPurple"))
                }
            }
        }.padding()
    }
}

struct CoursesByTagsGridView_Previews: PreviewProvider {
    static var previews: some View {
        CoursesByTagsGridView()
    }
}
