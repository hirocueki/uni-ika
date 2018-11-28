//
//  SceneViewController.swift
//  uni-ika
//
//  Created by ueki on 2018/11/28.
//  Copyright © 2018 ueki. All rights reserved.
//

import SpriteKit

class SceneViewController: UIViewController {
    
    let skView = SKView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let scene = MyScene(fileNamed:"MyScene") {
            let screensize = UIScreen.main.bounds.size
            skView.frame = CGRect(x: 0, y:0, width: screensize.width, height: screensize.height)
            skView.showsFPS = true // sceneのfps表示（開発用）
            skView.showsNodeCount = true
            
            skView.ignoresSiblingOrder = true
            
            
            scene.scaleMode = .resizeFill
            
            skView.allowsTransparency = true
            skView.presentScene(scene)
            self.view.addSubview(skView)
            
        }
    }
    
    override var shouldAutorotate: Bool {
        return true
    }
    
    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        if UIDevice.current.userInterfaceIdiom == .phone {
            return .allButUpsideDown
        } else {
            return .all
        }
    }
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
}
