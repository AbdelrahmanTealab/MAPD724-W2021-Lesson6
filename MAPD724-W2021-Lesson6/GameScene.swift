//
//  GameScene.swift
//  MAPD724-W2021-Lesson6
//
//  Created by Abdelrahman  Tealab on 2021-02-24.
//

import SpriteKit
import GameplayKit
import UIKit
import AVFoundation

let screenSize = UIScreen.main.bounds
var screenWidth:CGFloat?
var screenHeight:CGFloat?


class GameScene: SKScene {
    
    var ocean:Ocean?
    var island:Island?
    
    override func didMove(to view: SKView) {
        
        screenWidth = frame.width
        screenHeight = frame.height
        name = "GAME"
        
        //add ocean to the scene
        ocean = Ocean() //allocates memory
        ocean?.position = CGPoint(x:0,y:773)
        addChild(ocean!) //add object to scene
        
        island = Island()
        addChild(island!)
    }
    
    
    func touchDown(atPoint pos : CGPoint) {
       
    }
    
    func touchMoved(toPoint pos : CGPoint) {
        
    }
    
    func touchUp(atPoint pos : CGPoint) {
       
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        for t in touches { self.touchDown(atPoint: t.location(in: self)) }
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        for t in touches { self.touchMoved(toPoint: t.location(in: self)) }
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        for t in touches { self.touchUp(atPoint: t.location(in: self)) }
    }
    
    override func touchesCancelled(_ touches: Set<UITouch>, with event: UIEvent?) {
        for t in touches { self.touchUp(atPoint: t.location(in: self)) }
    }
    
    
    override func update(_ currentTime: TimeInterval) {
        // Called before each frame is rendered
        ocean?.update()
        island?.update()
    }
}
