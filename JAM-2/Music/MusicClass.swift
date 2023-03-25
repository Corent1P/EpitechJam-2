//
//  MusicClass.swift
//  JAM-2
//
//  Created by Killian Desserich on 25/03/2023.
//

import SwiftUI
import AVFoundation

var player: AVAudioPlayer!


class Song : ObservableObject {
    func playSong(song:String)
    {
        let url = Bundle.main.url(forResource: song, withExtension: "mp3")
        guard url != nil else {
            return
        }
        do {
            player = try AVAudioPlayer(contentsOf: url!)
            player?.play()
        } catch {
            print("error")
        }
    }
}
