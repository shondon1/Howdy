//
//  LaunchScreenView.swift
//  Howdy
//
//  Created by Rashon Hyslop on 10/18/23.
//

import SwiftUI

struct LaunchScreenView: View {
    @State private var firstPhaseIsAnimating: Bool = false
    
    private let timer = Timer.publish(every:0.65,
                                      on: .main,
                                      in: .common).autoconnect()
    
    var body: some View {
        ZStack{
            background
            logo
        }
        .onReceive(timer) { input in
            withAnimation(.spring()){
                firstPhaseIsAnimating.toggle()
            }
        }
    }
}


#Preview {
    LaunchScreenView()
}

private extension LaunchScreenView{
    var background: some View {
        Color("launch-screen-background")
            .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
    }
    
    var logo: some View{
        Image("logo")
            .scaleEffect(firstPhaseIsAnimating ? 0.6 : 1)
    }
}

