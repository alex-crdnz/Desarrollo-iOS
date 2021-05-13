//
//  GameViewController.swift
//  Actividad 14
//
//  Created by user183808 on 5/12/21.
//  Copyright © 2021 user183808. All rights reserved.
//

import UIKit
import SpriteKit
import GameplayKit

class GameViewController: UIViewController
{

    override func viewDidLoad()
    {
        if let View = self.view as! SKView?
        {
            let scene = GameScene(size: View.bounds.size)
            scene.scaleMode = .aspectFill
            View.presentScene(scene)
            View.ignoresSiblingOrder = true
            View.showsFPS = true
            View.showsNodeCount = true
            View.showsPhysics = true
        }
    }
}
