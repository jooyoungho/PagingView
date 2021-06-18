//
//  AudioStreaming.swift
//  PagingView
//
//  Created by youngho joo on 2021/06/18.
//

import Foundation
import AVFoundation

class StreamingAudio {
    lazy var playerQueue : AVQueuePlayer = {
        return AVQueuePlayer()
    }()
    func playTrackOrPlaylist(){
        if let url = track.streamURL() { //this is an URL fetch from somewhere. In this if you make sure that URL is valid
            let playerItem = AVPlayerItem.init(url: url)
            self.playerQueue.insert(playerItem, after: nil)
            self.playerQueue.play()
        }
    }
}

