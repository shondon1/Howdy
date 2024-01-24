//
//  LaunchScreenView.swift
//  Howdy
//
//  Created by Rashon Hyslop on 10/18/23.
//

import SwiftUI

struct LaunchScreenView: View {
    
    @EnvironmentObject var launchScreenManager: LaunchScreenManager
    @State private var firstPhaseIsAnimating: Bool = false
    @State private var secondPhaseIsAnimating: Bool = false

    
    private let timer = Timer.publish(every:0.65,
                                      on: .main,
                                      in: .common).autoconnect()
    
    var body: some View {
        ZStack{
            background
            logo
        }
        .onReceive(timer) { input in
            
            switch launchScreenManager.state{
            case .first:
                withAnimation(.spring()){
                    firstPhaseIsAnimating.toggle()
                }
            case .second:
                withAnimation(.easeInOut){
                    secondPhaseIsAnimating.toggle()
                }
            default: break
            }
            
        }
    }
}


#Preview {
    LaunchScreenView()
        .environmentObject(LaunchScreenManager())
}

private extension LaunchScreenView{
    var background: some View {
        Color("launch-screen-background")
            .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
    }
    
    var logo: some View{
        Image("cmms3")
            .scaleEffect(firstPhaseIsAnimating ? 0.6 : 1)
            .scaleEffect(secondPhaseIsAnimating ? UIScreen.main.bounds.size.height / 4 : 1)

    }
}

