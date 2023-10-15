//
//  GameViewController.swift
//  HitTheTree
//
//  Created by Supapon Pucknavin on 15/10/2566 BE.
//

import UIKit
import SceneKit

class GameViewController: UIViewController {

    var scemeView: SCNView!
    var scene: SCNScene!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupScene()
    }
    
    func setupScene() {
        guard let sceneView = self.view as? SCNView else { return }
        scemeView = sceneView
        scemeView.allowsCameraControl = true
        scene = SCNScene(named: "art.scnassets/MainScene.scn")
        scemeView.scene = scene
    }
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
}
