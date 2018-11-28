//
//  MyScene.swift
//  uni-ika
//
//  Created by ueki on 2018/11/28.
//  Copyright © 2018 ueki. All rights reserved.
//
import SpriteKit
import UIKit

class MyScene: SKScene, SKPhysicsContactDelegate {

    override func didMove(to view: SKView) {
        // シーンが生成された
        
        // 背景変更
        self.backgroundColor = SKColor.black
        
        // イメージ
//        let node = SKSpriteNode(imageNamed: "uni")
//        addChild(node)
        
        let ika = SKSpriteNode(imageNamed: "ika")
        addChild(ika)
        
        
        // ラベル
        let label = SKLabelNode(fontNamed: "Chalkduster")
        label.text = "Goodmorning, World!"
        let labelSize: CGFloat = 50.0
        label.fontSize = labelSize
        label.position = CGPoint(x:self.frame.midX, y:self.frame.height/2 - labelSize)
        label.fontColor = SKColor.yellow
        self.addChild(label)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        // sceneにタッチ
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        // タッチして動かした
    }
    
    // 毎回呼ばれる
    override func update(_ currentTime: TimeInterval) {
        super.update(currentTime)
    }
    
    // 衝突判定
    func didBegin(_ contact: SKPhysicsContact) {
        
    }

}
