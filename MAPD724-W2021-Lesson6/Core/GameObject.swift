//
//  GameObject.swift
//  MAPD724-W2021-Lesson6
//
//  Created by Abdelrahman  Tealab on 2021-02-24.
//

import Foundation
import SpriteKit
import GameplayKit

class GameObject: SKSpriteNode, GameProtocol {
    
    //instance members
    
    var dx: CGFloat?
    var dy: CGFloat?
    var width: CGFloat?
    var halfWidth: CGFloat?
    var height: CGFloat?
    var halfHeight: CGFloat?
    var scale: CGFloat?
    var isColliding: Bool?
    var randomSource: GKARC4RandomSource?
    var randomDist: GKRandomDistribution?
    
    //constructor

    init(imageString: String, initialScale: CGFloat) {
        let texture = SKTexture(imageNamed: imageString)
        let color = UIColor.clear
        super.init(texture: texture,color: color,size: texture.size())
        
        scale = initialScale
        setScale(scale!)
        width = texture.size().width * scale!
        height = texture.size().height * scale!
        halfWidth = width! * 0.5
        halfHeight = height! * 0.5
        isColliding = false
        name = imageString
        randomSource = GKARC4RandomSource()
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func checkBounds() {
    }
    
    func reset() {
    }
    
    func start() {
    }
    
    func update() {
    }
    
    
}
