//
//  RootView.swift
//  Howdy
//
//  Created by Rashon Hyslop on 10/19/23.
//

import SwiftUI

struct RootView: View {
    @State var selectedTabs: Tabs = .home
    
    var body: some View {
        VStack {
            Text("The Simply App")
                .font(
                    Font.custom("Poppins", size: 12)
                        .weight(.medium))
                .foregroundColor(.black)
                .padding()
            
            
            Spacer()
            
            switch selectedTabs {
            case .home:
                HomeView()
            case .showroom:
                ShowroomView()
            case .settings:
                SettingsView()
            }
            
            CustomTabBar(selectedTabs: $selectedTabs)
        }
    }
}

struct RootView_Previews: PreviewProvider {
    static var previews: some View{
        RootView()
    }
}
