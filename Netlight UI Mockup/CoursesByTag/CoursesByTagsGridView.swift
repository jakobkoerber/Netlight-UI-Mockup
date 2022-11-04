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
                    Text("View all")
                }
            }
            LazyVGrid(columns: [GridItem(spacing: 7), GridItem()], spacing: 4) {
                ForEach(model.tags, id: \.id) { tag in
                   CourseByTagRectangleView(tag: tag)
                        .frame(width: 180, height: 90)
                }
            }
        }.padding()
    }
}

struct CoursesByTagsGridView_Previews: PreviewProvider {
    static var previews: some View {
        CoursesByTagsGridView().environmentObject(MockModel() as ModelData)
    }
}
