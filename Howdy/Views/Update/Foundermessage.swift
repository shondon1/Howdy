//
//  Foundermessage.swift
//  Howdy
//
//  Created by Rashon Hyslop on 10/21/23.
//

import SwiftUI

struct Foundermessage: View {
    var body: some View {
                ZStack(){
                    Color.yellow.edgesIgnoringSafeArea(.all)
                    
                    VStack {
                        Text("The Simply App v1")
                                        .font(
                                               Font.custom("Inter", size: 20)
                                                   .weight(.medium)
                                           )
                                           .foregroundColor(.black)
                                           .frame(width: 185, height: 38, alignment: .topLeading)
                        Spacer() // Add spacer at the top

                        Image("yuji")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 100, height: 100)
                            .clipShape(Circle())
                            .overlay(Circle().stroke(Color.white, lineWidth: 3))
                            .shadow(radius: 5)
                        
                        Text("COWBOY SHONDON")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .foregroundColor(Color.blue)
                            .multilineTextAlignment(.center)
                        
                        Text("The message of the day")
                            .font(.subheadline) // Adjusted font size
                            .fontWeight(.bold)
                            .multilineTextAlignment(.center)
                        
                        Text("Welcome to my app! This is the first time I released something like this. Shoutout to the PMC fam! Can't wait to build more on to this. Remeber! THE INTERNET IS NOT REAL")
                            .font(.body)
                            .fontWeight(.regular)
                            .foregroundColor(Color.black)
                            .multilineTextAlignment(.center)
                        
                        Spacer() // Add spacer at the bottom
                        
                    
                        
                    }
                    .padding()
                    .frame(maxWidth: .infinity, alignment: .center) // Center the VStack horizontally
                    .alignmentGuide(.top) { _ in UIScreen.main.bounds.size.height * 0.35 } // Center the VStack vertically
        }
    }
}


#Preview {
    Foundermessage()
}
