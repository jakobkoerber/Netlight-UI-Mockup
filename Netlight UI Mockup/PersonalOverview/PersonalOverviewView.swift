//
//  ContentView.swift
//  Netlight UI Mockup
//
//  Created by Jakob Paul Körber on 03.11.22.
//

import SwiftUI

struct PersonalOverviewView: View {
    
    @EnvironmentObject var model: ModelData
    
    var body: some View {
        NavigationStack {
            ScrollView {
                Spacer(minLength: 30)
                ProgressNextTaskView()
                RecommendedCoursesHorizontalView()
                CoursesByTagsGridView()
            }
            .navigationTitle("Personal Overview")
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button {
                        
                    } label: {
                        Text("Logout")
                    }
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        
                    } label: {
                        Image(systemName: "person")
                    }
                }
            }
        }
    }
}


struct PersonalOverviewView_Previews: PreviewProvider {
    static var previews: some View {
        PersonalOverviewView().environmentObject(MockModel() as ModelData)
    }
}
