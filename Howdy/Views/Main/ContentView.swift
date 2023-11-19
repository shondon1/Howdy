//
//  ContentView.swift
//  Howdy
//
//  Created by Rashon Hyslop on 10/18/23.
//

import SwiftUI

struct ContentView: View {

    @EnvironmentObject var launchScreenManager: LaunchScreenManager

    var body: some View {
        VStack {
            Button(action: {
                print("Button tapped")
            }) {
                Text("Tap Me!")
            }
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
                    self.launchScreenManager.dismiss()
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(LaunchScreenManager())
    }
}
