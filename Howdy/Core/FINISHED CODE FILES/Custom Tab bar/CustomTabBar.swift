//
//  CustomTabBar.swift
//  Howdy
//
//  Created by Rashon Hyslop on 10/19/23.
//

//CustomTabBar.swift
import SwiftUI

enum Tabs: Int {
    case home = 0
    case settings = 1
    case showroom = 2
    case poll = 3
}

struct CustomTabBar: View {
    @Binding var selectedTabs: Tabs

    var body: some View {
        HStack(alignment: .center) {
            Button {
                // Home screen
                selectedTabs = .home
            } label: {
                TabBarButton(buttonText: "Home",
                             imageName: "house",
                             isActive: selectedTabs == .home)
            }
            .tint(Color.accentColor) // Use adaptive color

            Button {
                // Video screen
                selectedTabs = .showroom
            } label: {
                TabBarButton(buttonText: "Showroom",
                             imageName: "photo.circle.fill",
                             isActive: selectedTabs == .showroom)
            }
            .tint(Color.accentColor) // Use adaptive color
            
            Button {
                // New chat
                selectedTabs = .poll
            } label: {
                TabBarButton(buttonText: "Poll",
                             imageName: "chart.bar.doc.horizontal.fill",
                             isActive: selectedTabs == .poll)
            }
            .tint(Color.accentColor) // Use adaptive color

            Button {
                // Switch to settings
                selectedTabs = .settings
            } label: {
                TabBarButton(buttonText: "Settings",
                             imageName: "gear",
                             isActive: selectedTabs == .settings)
            }
            .tint(Color.accentColor) // Use adaptive color
        }
        .frame(height: 82)
        .accentColor(Color(.orange)) // Set your primary accent color here
    }
}

    
    struct CustomTabBar_Previews: PreviewProvider {
        static var previews: some View {
            CustomTabBar(selectedTabs: .constant(.home))
        }
    }


//                GeometryReader { geo in
//
//                    if selectedTabs == .home {
//                        Rectangle()
//                            .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
//                            .frame(width: geo.size.width/2, height: 4)
//                            .padding(.leading, geo.size.width/4)
//                    }
//                    VStack (alignment: .center, spacing: 4){
//
//                        Image(systemName: "house")
//                            .resizable()
//                            .scaledToFit()
//                            .frame(width: 24, height: 24)
//
//                        Text("Home")
//                            .font(
//                                Font.custom("Poppins", size: 12)
//                                    .weight(.medium))
//                            .foregroundColor(.black)
//                    }
//                    .frame(width: geo.size.width, height: geo.size.height)
//

//                GeometryReader { geo in
//
//                    if selectedTabs == .home {
//                        Rectangle()
//                            .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
//                            .frame(width: geo.size.width/2, height: 4)
//                            .padding(.leading, geo.size.width/4)
//                    }
//                    VStack (alignment: .center, spacing: 4){
//
//                        Image(systemName: "house")
//                            .resizable()
//                            .scaledToFit()
//                            .frame(width: 24, height: 24)
//
//                        Text("Home")
//                            .font(
//                                Font.custom("Poppins", size: 12)
//                                    .weight(.medium))
//                            .foregroundColor(.black)
//                    }
//                    .frame(width: geo.size.width, height: geo.size.height)
//

//                    GeometryReader { geo in
//                        if selectedTabs == .settings {
//                            Rectangle()
//                                .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
//                                .frame(width: geo.size.width/2, height: 4)
//                                .padding(.leading, geo.size.width/4)
//                        }
//                        VStack (alignment: .center, spacing: 4){
//                            Image(systemName: "gear")
//                                .resizable()
//                                .scaledToFit()
//                                .frame(width: 24, height: 24)
//
//                            Text("settings")
//                                .font(
//                                    Font.custom("Poppins", size: 12)
//                                        .weight(.medium))
//                                .foregroundColor(.black)
//                        }
//                        .frame(width: geo.size.width, height: geo.size.height)
//                    }
