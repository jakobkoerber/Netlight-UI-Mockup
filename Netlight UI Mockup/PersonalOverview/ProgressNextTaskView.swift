//
//  CircularProgressView.swift
//  Netlight UI Mockup
//
//  Created by Jakob Paul Körber on 03.11.22.
//

import SwiftUI

struct ProgressNextTaskView: View {
    var body: some View {
        HStack {
            Spacer()
            CircularProgressView()
                .frame(width: 150, height: 150)
            Spacer()
            VStack {
                Spacer()
                Text("Next task:").fontWeight(.bold)
                Text("Language Café")
                Spacer()
            }.multilineTextAlignment(.leading)
            Spacer()
        }
        .padding(.top)
        .padding(.bottom)
    }
}

struct ProgressNextTaskView_Previews: PreviewProvider {
    static var previews: some View {
        ProgressNextTaskView()
    }
}
