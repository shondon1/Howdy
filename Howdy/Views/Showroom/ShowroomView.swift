//
//  ShowroomView.swift
//  Howdy
//
//  Created by Rashon Hyslop on 10/20/23.
//

import SwiftUI
import AVKit

struct ShowroomView: View {
    // Assuming you have a video file named "exampleVideo.mp4" in your app bundle
    let videoFileName = "beach"
    let videoFileExtension = "mp4"
    
    var body: some View {
        NavigationView {
            VStack {
                if let videoURL = Bundle.main.url(forResource: videoFileName, withExtension: videoFileExtension) {
                    VideoPlayer(player: AVPlayer(url: videoURL)) {
                        // You can customize the video player view here if needed
                    }
                } else {
                    Text("Video file not found")
                        .foregroundColor(.blue)
                }
            }
        }
    }
}



#Preview {
    ShowroomView()
}
