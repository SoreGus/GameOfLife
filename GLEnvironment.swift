//
//  GLEnvironment.swift
//  GameOfLife
//
//  Created by Gustavo Luís Soré on 07/09/15.
//  Copyright (c) 2015 Sore. All rights reserved.
//

import UIKit
import SpriteKit

class GLEnvironment: SKNode {
   
    var map:NSMutableArray!
    var cellSize:CGSize!
    
    func initWithCellSize(){
        super.init(coder: aDecoder)
    }

    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
