//
//  GameScene.swift
//  devGame
//
//  Created by Deiby Toralva Baldeón on 9/27/16.
//  Copyright (c) 2016 devAcademy. All rights reserved.
//

import SpriteKit

class GameScene: SKScene {
    
    var ship = SKSpriteNode()
    
    override func didMoveToView(view: SKView) {
        
        let shipTexture = SKTexture(imageNamed: "Ship.png")
        let shipTexture2 = SKTexture(imageNamed: "Ship2.png")
        
        let animation = SKAction.animateWithTextures([shipTexture, shipTexture2], timePerFrame: 0.2)
        let makeShipFlap = SKAction.repeatActionForever(animation)
        
        ship = SKSpriteNode(texture: shipTexture)
        
        ship.xScale = 0.5
        ship.yScale = 0.5
        
        ship.position = CGPoint(x: CGRectGetMidX(self.frame), y: CGRectGetMidY(self.frame))
        
        ship.runAction(makeShipFlap)
        
        self.addChild(ship)
        
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
       /* Called when a touch begins */
        
        for touch in touches {
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
