//
//  GameProtocol.swift
//  MAPD724-W2021-Lesson6
//
//  Created by Abdelrahman  Tealab on 2021-02-24.
//

import Foundation

protocol GameProtocol {
    func checkBounds()
    func reset()
    func start()
    func update()
}
