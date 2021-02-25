//
//  Ocean.swift
//  MAPD724-W2021-Lesson6
//
//  Created by Abdelrahman  Tealab on 2021-02-24.
//

import SpriteKit
import GameplayKit

class Ocean: GameObject {
    init() {
        super.init(imageString: "ocean", initialScale: 2.0)
        start()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func checkBounds() {
        if position.y <= -773 {
            reset()
        }
    }
    
    override func reset() {
        position.y = 773
        isColliding = false
    }
    
    // for initialization
    override func start() {
        zPosition = 0
        dy = 5.0
        
    }
    
    override func update() {
        checkBounds()
        move()
    }
    
    func move() {
        position.y -= dy!
    }
    
}
