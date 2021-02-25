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
    var clouds: [Cloud] = []
    var plane:Plane?

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
        
        for index in 0...2{
            let cloud: Cloud = Cloud()
            clouds.append(cloud)
            addChild(clouds[index])
        }
        
        plane = Plane()
        plane?.position = CGPoint(x: 0, y: -495)
        addChild(plane!)
    }
    
    
    func touchDown(atPoint pos : CGPoint) {
        plane?.touchMove(newPos:CGPoint(x: pos.x, y: -495))
    }
    
    func touchMoved(toPoint pos : CGPoint) {
        plane?.touchMove(newPos:CGPoint(x: pos.x, y: -495))
    }
    
    func touchUp(atPoint pos : CGPoint) {
        plane?.touchMove(newPos:CGPoint(x: pos.x, y: -495))
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
        plane?.update()
        
        CollisionManager.squaredRadiusCheck(object1: plane!, object2: island!)
        
        for cloud in clouds{
            cloud.update()
            CollisionManager.squaredRadiusCheck(object1: plane!, object2: cloud)
        }
    }
}
