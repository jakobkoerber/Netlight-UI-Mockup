//
//  CircularProgressView.swift
//  Netlight UI Mockup
//
//  Created by Jakob Paul Körber on 03.11.22.
//

import SwiftUI

struct CircularProgressNextTaskView: View {
    var body: some View {
        HStack {
            Spacer()
            ZStack {
                Text("60%").font(.system(size: 25, weight: .bold))
                Circle()
                    .stroke(Color("NetlightPurple").opacity(0.5), lineWidth: 40)
                Circle()
                    .trim(from: 0, to: 0.6)
                    .stroke(Color("NetlightPurple"), lineWidth: 40)
                    .rotationEffect(.degrees(-90))
            }.frame(width: 150, height: 150)
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

struct CircularProgressNextTaskView_Previews: PreviewProvider {
    static var previews: some View {
        CircularProgressNextTaskView()
    }
}
