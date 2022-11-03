//
//  ContentView.swift
//  Netlight UI Mockup
//
//  Created by Jakob Paul Körber on 03.11.22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                Spacer(minLength: 30)
                CircularProgressNextTaskView()
                RecommendedCoursesHorizontalView()
                CoursesByTagsGridView()
            }
            .navigationTitle("Personal Overview")
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button {
                        
                    } label: {
                        Text("Logout").foregroundColor(Color("NetlightPurple"))
                    }
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        
                    } label: {
                        Image(systemName: "person").foregroundColor(Color("NetlightPurple"))
                    }
                }
            }
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

/*
 .padding()
 .navigationTitle("Test")
 .toolbar {
 ToolbarItem(placement: .navigationBarLeading) {
 Button {
 
 } label: {
 Text("Logout").foregroundColor(.purple)
 }
 }
 ToolbarItem(placement: .navigationBarTrailing) {
 Button {
 
 } label: {
 Image(systemName: "person").foregroundColor(.purple)
 }
 }
 }
 */
