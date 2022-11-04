//
//  CircularView.swift
//  Netlight UI Mockup
//
//  Created by Jakob Paul Körber on 04.11.22.
//

import SwiftUI

struct CircularProgressView: View {
    
    @EnvironmentObject var model: ModelData
    
    var percentageDone: Double {
        Double(model.calculateCompletedTasks())/Double(model.courses.count)
    }
    
    var body: some View {
        ZStack {
            Text("\(Int(percentageDone*100))%")
                .font(.system(size: 25, weight: .bold))
            Circle()
                .stroke(Color.accentColor.opacity(0.5), lineWidth: 40)
            Circle()
                .trim(from: 0, to: percentageDone)
                .stroke(Color.accentColor, lineWidth: 40)
                .rotationEffect(.degrees(-90))
        }
    }
}

struct CircularProgressView_Previews: PreviewProvider {
    static var previews: some View {
        CircularProgressView().environmentObject(MockModel() as ModelData)
    }
}
