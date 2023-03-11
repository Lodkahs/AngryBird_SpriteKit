//
//  GameScene.swift
//  AngryBird_SpriteKit
//
//  Created by Andrew  on 3/11/23.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
    
    //var bird2 = SKSpriteNode()
    
    var bird = SKSpriteNode()
    
    var box1 = SKSpriteNode()
    var box2 = SKSpriteNode()
    var box3 = SKSpriteNode()
    var box4 = SKSpriteNode()
    var box5 = SKSpriteNode()
    
    override func didMove(to view: SKView) {
        /*
        let texture = SKTexture(imageNamed: "bird")
        bird2 = SKSpriteNode(texture: texture)
        bird2.position = CGPoint(x: -self.frame.width / 4, y: -self.frame.height / 8)
        bird2.size = CGSize(width: self.frame.width / 16, height: self.frame.height / 10)
        bird2.zPosition = 1
        self.addChild(bird2) */
        
        //phycisc body
        
        self.physicsBody = SKPhysicsBody(edgeLoopFrom: frame)
        self.scene?.scaleMode = .aspectFit
        
        //bird
        
        bird = childNode(withName: "bird") as! SKSpriteNode
        
        let birdTexture = SKTexture(imageNamed: "bird")
        
        bird.physicsBody = SKPhysicsBody(circleOfRadius: birdTexture.size().height / 18)
        bird.physicsBody?.affectedByGravity = false
        bird.physicsBody?.isDynamic = true
        bird.physicsBody?.mass = 0.15
        
        
        //box
        
        let boxTexture = SKTexture(imageNamed: "brick")
        let size = CGSize(width: boxTexture.size().width / 6.5, height: boxTexture.size().height / 6.5)
        
        box1 = childNode(withName: "box1") as! SKSpriteNode
        box2 = childNode(withName: "box2") as! SKSpriteNode
        box3 = childNode(withName: "box3") as! SKSpriteNode
        box4 = childNode(withName: "box4") as! SKSpriteNode
        box5 = childNode(withName: "box5") as! SKSpriteNode
        
        var boxes  = [SKSpriteNode]()
        
        boxes.append(box1)
        boxes.append(box2)
        boxes.append(box3)
        boxes.append(box4)
        boxes.append(box5)
        
        for box in boxes {
            box.physicsBody = SKPhysicsBody(rectangleOf: size)
            box.physicsBody?.isDynamic = true
            box.physicsBody?.affectedByGravity = true
            box.physicsBody?.allowsRotation = true
            box.physicsBody?.mass = 0.4
        }
        
        /*
        box1.physicsBody = SKPhysicsBody(rectangleOf: size)
        box1.physicsBody?.isDynamic = true
        box1.physicsBody?.affectedByGravity = true
        box1.physicsBody?.allowsRotation = true
        box1.physicsBody?.mass = 0.4 */
        
        
        
    }
    
    
    func touchDown(atPoint pos : CGPoint) {
        
    }
    
    func touchMoved(toPoint pos : CGPoint) {
        
    }
    
    func touchUp(atPoint pos : CGPoint) {
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        bird.physicsBody?.applyImpulse(CGVector(dx: 50, dy: 100))
        bird.physicsBody?.affectedByGravity = true
        
        
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        
    }
    
    override func touchesCancelled(_ touches: Set<UITouch>, with event: UIEvent?) {
        
    }
    
    
    override func update(_ currentTime: TimeInterval) {
        // Called before each frame is rendered
    }
}
