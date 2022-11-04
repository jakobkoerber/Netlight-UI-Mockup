//
//  JounreyOverviewView.swift
//  Netlight UI Mockup
//
//  Created by Jakob Paul Körber on 04.11.22.
//

import SwiftUI

struct JourneyOverviewView: View {
    
    @EnvironmentObject var model: ModelData
    
    @Namespace var topID
    
    let lineHeight: CGFloat = 64
    let lineWidth: CGFloat = 4
    
    var completedTasks: Int {
        model.calculateCompletedTasks()
    }
    
    var body: some View {
        NavigationStack {
            ScrollViewReader { value in
            ScrollView {
                Spacer(minLength: 30)
                    .id(topID)
                CircularProgressView()
                    .frame(width: 200, height: 200)
                    .padding()
                Spacer(minLength: 30)
                HStack(spacing: 50) {
                    Text("Completed: \(completedTasks)")
                        .frame(width: 120)
                    Text("Open: \(model.courses.count-completedTasks)")
                        .frame(width: 120)
                }
                VStack(alignment: .leading, spacing: 5) {
                    ForEach(model.courses, id: \.id) { course in
                        JourneyEntryView(course: course)
                    }
                }
                .padding(.leading)
                .padding(.trailing)
                .background(
                    HStack {
                        Rectangle()
                            .fill(Color.gray)
                            .frame(width: lineWidth)
                            .padding(.init(top: lineHeight,
                                           leading: lineHeight - lineWidth / 2,
                                           bottom: lineHeight,
                                           trailing: 0))
                        Spacer()
                    }
                )
            }.onAppear {
                value.scrollTo(topID)
            }
        }
            .navigationTitle("Personal Journey")
        }
    }
}

struct JourneyOverviewView_Previews: PreviewProvider {
    static var previews: some View {
        JourneyOverviewView().environmentObject(MockModel() as ModelData)
    }
}
