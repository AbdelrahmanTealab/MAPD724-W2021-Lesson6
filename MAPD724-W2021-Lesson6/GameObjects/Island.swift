//
//  Ocean.swift
//  MAPD724-W2021-Lesson6
//
//  Created by Abdelrahman  Tealab on 2021-02-24.
//

import SpriteKit
import GameplayKit

class Island: GameObject {
    init() {
        super.init(imageString: "island", initialScale: 2.0)
        start()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func checkBounds() {
        if position.y <= -730 {
            reset()
        }
    }
    
    override func reset() {
        position.y = 730
        //position.x = CGFloat(Int.random(in: -313...313))
        let randomX = (randomSource?.nextInt(upperBound: 626))! - 313
        position.x = CGFloat(randomX)
    }
    
    // for initialization
    override func start() {
        zPosition = 1
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
