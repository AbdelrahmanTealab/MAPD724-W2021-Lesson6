//
//  Ocean.swift
//  MAPD724-W2021-Lesson6
//
//  Created by Abdelrahman  Tealab on 2021-02-24.
//

import SpriteKit
import GameplayKit

class Cloud: GameObject {
    init() {
        super.init(imageString: "cloud", initialScale: 1.0)
        start()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func checkBounds() {
        if position.y <= -756 {
            reset()
        }
    }
    
    override func reset()
       {
           dy = CGFloat((randomSource?.nextUniform())! * 5.0) + 5.0
           dx = CGFloat((randomSource?.nextUniform())! * -4.0) + 2.0
           
           // get a pseudo-random number from -262 to 262 =
           let randomX:Int = (randomSource?.nextInt(upperBound: 524))! - 262
           position.x = CGFloat(randomX)
           
           let randomY:Int = (randomSource?.nextInt(upperBound: 10))! + 756
           position.y = CGFloat(randomY)
           
           isColliding = false
       }
    
    // for initialization
    override func start() {
        zPosition = 4
        alpha = 0.5
        reset()
    }
    
    override func update() {
        move()
        checkBounds()
    }
    
    func move() {
        position.y -= dy!
        position.x -= dx!
    }
    
}
