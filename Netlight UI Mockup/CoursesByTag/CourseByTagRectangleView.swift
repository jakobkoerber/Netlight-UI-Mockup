//
//  CourseByTagRectangleView.swift
//  Netlight UI Mockup
//
//  Created by Jakob Paul Körber on 03.11.22.
//

import SwiftUI

struct CourseByTagRectangleView: View {
    
    var tag: Tag
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 15).foregroundColor(.accentColor)
            HStack() {
                Image(tag.image)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 60, height: 60)
                    .cornerRadius(90)
                    .padding(.leading)
                Text(tag.name)
                    .foregroundColor(.white)
                    .font(.system(size: 11))
                Spacer()
            }.frame(alignment: .trailing)
        }
    }
}


struct CourseByTagRectangleView_Previews: PreviewProvider {
    static var previews: some View {
        CourseByTagRectangleView(tag: MockModel().tags[0])
    }
}
