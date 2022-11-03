//
//  CourseByTagRectangleView.swift
//  Netlight UI Mockup
//
//  Created by Jakob Paul Körber on 03.11.22.
//

import SwiftUI

struct CourseByTagRectangleView: View {
    var body: some View {
        Text("Item")
            .foregroundColor(.white)
            .font(.largeTitle)
            .frame(width: 175, height: 50)
            .background(Color("NetlightPurple"))
    }
}

struct CourseByTagRectangleView_Previews: PreviewProvider {
    static var previews: some View {
        CourseByTagRectangleView()
    }
}
