//
//  TextRowView.swift
//  Howdy
//
//  Created by Rashon Hyslop on 10/21/23.
//

// This is just a

import SwiftUI

struct TextRowView: View {
    var body: some View {
        VStack {
            HStack(alignment: .top, spacing: 12) {
                Circle()
                    .frame(width: 56, height: 56)
                    .foregroundColor(.teal)
                
                //User info and Tweet caption
                VStack{
                    //User Info
                    HStack{
                        Text("@Shondon")
                            .font(.headline)
                            .fontWeight(.bold)
                        
                        Text("-PMC")
                            .font(.caption)
                            .foregroundColor(Color.orange)
                        
                    }
                    Text("Shoutout to PMC")
                        .font(.subheadline)
                        .multilineTextAlignment(.leading)
                }
            }
            HStack {
                Button {
                    
                } label: {
                    Image(systemName: "star")
                        .font(.subheadline)
                }
    
            }
        }
    }
}

struct TextRowView_Previews: PreviewProvider {
    static var previews: some View {
        TextRowView()
    }
}

