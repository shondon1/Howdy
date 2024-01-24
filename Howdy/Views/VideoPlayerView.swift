// VideoPlayerView.swift

import SwiftUI
import AVKit

struct VideoPlayerView: View {
    private let videoFileName: String

    init(videoFileName: String) {
        self.videoFileName = videoFileName
    }

    private var videoFileURL: URL {
        guard let videoFileURL = Bundle.main.url(forResource: videoFileName, withExtension: "mp4") else {
            fatalError("Couldn't find video file in the bundle.")
        }
        return videoFileURL
    }

    var body: some View {
        ZStack {
            Color.white.edgesIgnoringSafeArea(.all)

            VStack {
                VideoPlayer(player: AVPlayer(url: videoFileURL))
                    .frame(height: 300) // Set the desired height for the video player
            }
        }
    }
}

struct VideoPlayerView_Previews: PreviewProvider {
    static var previews: some View {
        VideoPlayerView(videoFileName: "beach")
            .previewDisplayName("Video Player Preview")
    }
}
