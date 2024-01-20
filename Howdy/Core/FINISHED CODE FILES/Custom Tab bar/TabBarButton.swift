//
//  Howdy
//
//  Created by Rashon Hyslop on 10/20/23.
//  TabBarButton.swift

import SwiftUI

struct TabBarButton: View {
    var buttonText: String
    var imageName: String
    var isActive: Bool
    
    var body: some View {
        GeometryReader { geo in
            
            if isActive {
                Rectangle()
                    .foregroundColor(Color.blue)
                    .frame(width: geo.size.width/2, height: 4)
                    .padding(.leading, geo.size.width/4)

            }
            
            VStack(alignment: .center, spacing: 4) {
                
                
                Image(systemName: imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 24, height: 24)
                
                Text(buttonText)
                    .font(Font.custom("Poppins", size: 12).weight(.medium))
                   // .foregroundColor(Color.black)
                    .foregroundColor(Color.primary)
            }
            .frame(width: geo.size.width, height: geo.size.height)
        }
    }
}

struct TabBarButton_Previews: PreviewProvider {
    static var previews: some View {
        TabBarButton(buttonText: "home", imageName: "house", isActive: true)
    }
}

