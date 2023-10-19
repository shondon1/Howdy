//
//  HowdyApp.swift
//  Howdy
//
//  Created by Rashon Hyslop on 10/18/23.
//

import SwiftUI

@main
struct HowdyApp: App {
    
    @StateObject var launchScreenManager = LaunchScreenManager()
    
    var body: some Scene {
        WindowGroup {
            ZStack{
                ContentView()
                
                if launchScreenManager.state != .completed {
                    LaunchScreenView()
                }
            }
            .environmentObject(launchScreenManager)
        }
    }
}
