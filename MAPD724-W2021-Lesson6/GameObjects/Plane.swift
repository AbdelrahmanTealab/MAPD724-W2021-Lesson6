//
//  Ocean.swift
//  MAPD724-W2021-Lesson6
//
//  Created by Abdelrahman  Tealab on 2021-02-24.
//

import SpriteKit
import GameplayKit

class Plane: GameObject {
    init() {
        super.init(imageString: "plane", initialScale: 2.0)
        start()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func checkBounds() {
        if position.x <= -310 {
            position.x = -310
        }
        if position.x >= 310 {
            position.x = 310
        }
    }
    
    override func reset() {

    }
    
    // for initialization
    override func start() {
        zPosition = 3
        dy = 5.0
        
    }
    
    override func update() {
        checkBounds()
    }
    
    func touchMove(newPos: CGPoint)
       {
           position = newPos
       }
}
