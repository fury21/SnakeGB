//
//  SnakeHead.swift
//  Snake GB
//
//  Created by Александр Б. on 03.09.17.
//  Copyright © 2017 Александр Б. All rights reserved.
//

import Foundation
import UIKit

class SnakeHead: SnakeBodyPart {
    override init(atPoint point: CGPoint) {
        super.init(atPoint:point)
        
        // категория - голова
        self.physicsBody?.categoryBitMask = CollisionCategories.SnakeHead
        // пересекается с телом, яблоком и границей экрана
        self.physicsBody?.contactTestBitMask = CollisionCategories.EdgeBody | CollisionCategories.Apple |
            CollisionCategories.Snake
    }
   
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
