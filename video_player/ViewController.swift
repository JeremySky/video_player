//
//  ViewController.swift
//  video_player
//
//  Created by Jeremy Manlangit on 11/10/23.
//

import UIKit
import AVKit
import AVFoundation

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        playVideo()
    }
    
    private func playVideo() {
        guard let path = Bundle.main.path(forResource: "BeActivOverview", ofType: "mp4") else {
            debugPrint("ERROR 'BeActivOverview' NOT FOUND")
            return
        }
        let player = AVPlayer(url: URL(fileURLWithPath: path))
        let playerController = AVPlayerViewController()
        playerController.player = player
        present(playerController, animated: true) {
            player.play()
        }
    }
}


//private func findVideo() {
//    guard let path = Bundle.main.path(forResource: "BeActivOverview", ofType: "m4v") else {
//        debugPrint("video.m4v not found")
//        return
//    }
//}
