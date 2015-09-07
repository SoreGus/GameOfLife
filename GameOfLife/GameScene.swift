//
//  GameScene.swift
//  GameOfLife
//
//  Created by Gustavo Luís Soré on 07/09/15.
//  Copyright (c) 2015 Sore. All rights reserved.
//

import SpriteKit

class GameScene: SKScene {
    override func didMoveToView(view: SKView) {
        /* Setup your scene here */
        let myLabel = SKLabelNode(fontNamed:"Chalkduster")
        myLabel.text = "Hello, World!";
        myLabel.fontSize = 65;
        myLabel.position = CGPoint(x:CGRectGetMidX(self.frame), y:CGRectGetMidY(self.frame));
        
        self.addChild(myLabel)
    }
    
    func newCell() -> GLCell{
        var cell:GLCell!
        
        cell = GLCell()
        
        var size = CGFloat(100.0)
        
        var frame = CGRectMake(0, 0, size, size)
        
        var square = UIView(frame: frame)
        
        square.backgroundColor = UIColor.blackColor()
        
        cell.isLive = 1
        
        var image = UIImage()
        
        var texture = SKTexture(rect: frame, inTexture: SKTexture())
        
        return cell
        
    }
    
    override func touchesBegan(touches: NSSet, withEvent event: UIEvent) {
        /* Called when a touch begins */
        
        for touch: AnyObject in touches {
            let location = touch.locationInNode(self)
            
            let sprite = SKSpriteNode(imageNamed:"Spaceship")
            
            sprite.xScale = 0.5
            sprite.yScale = 0.5
            sprite.position = location
            
            let action = SKAction.rotateByAngle(CGFloat(M_PI), duration:1)
            
            sprite.runAction(SKAction.repeatActionForever(action))
            
            self.addChild(sprite)
        }
    }
   
    override func update(currentTime: CFTimeInterval) {
        /* Called before each frame is rendered */
    }
}
