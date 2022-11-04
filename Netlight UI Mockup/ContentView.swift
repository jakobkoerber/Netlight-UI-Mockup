//
//  ContentView.swift
//  Netlight UI Mockup
//
//  Created by Jakob Paul Körber on 04.11.22.
//

import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject var model: ModelData
    
    var body: some View {
        TabView {
            PersonalOverviewView().tabItem {
                Label("Home", systemImage: "house")
            }
            JourneyOverviewView().tabItem {
                Label("Journey", systemImage: "graduationcap")
            }
            Text("Work in progress").tabItem {
                Label("Notes", systemImage: "square.and.pencil")
            }
            Text("Work in progress").tabItem {
                Label("Add", systemImage: "plus")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environmentObject(MockModel() as ModelData)
    }
}
