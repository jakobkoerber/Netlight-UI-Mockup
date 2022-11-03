//
//  CoursesByTagsGrid.swift
//  Netlight UI Mockup
//
//  Created by Jakob Paul Körber on 03.11.22.
//

import SwiftUI

struct CoursesByTagsGridView: View {
    
    @EnvironmentObject var model: ModelData
    
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
            LazyVGrid(columns: [GridItem(spacing: 20), GridItem()], spacing: 20) {
                ForEach(0..<10) { _ in
                   CourseByTagRectangleView()
                }
            }
        }.padding()
    }
}

struct CoursesByTagsGridView_Previews: PreviewProvider {
    static var previews: some View {
        CoursesByTagsGridView().environmentObject(MockModel())
    }
}
