//
//  ViewController.swift
//  video_player
//
//  Created by Jeremy Manlangit on 11/10/23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    private func findVideo() {
        guard let path = Bundle.main.path(forResource: "BeActivOverview", ofType: "m4v") else {
            debugPrint("video.m4v not found")
            return
        }
    }

}

