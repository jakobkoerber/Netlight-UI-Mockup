//
//  Netlight_UI_MockupApp.swift
//  Netlight UI Mockup
//
//  Created by Jakob Paul Körber on 03.11.22.
//

import SwiftUI

@main
struct Netlight_UI_MockupApp: App {
    
    var modelData = MockModel() as ModelData
    
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(modelData)
        }
    }
}
