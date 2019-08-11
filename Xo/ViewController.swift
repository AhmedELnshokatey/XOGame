//
//  ViewController.swift
//  Xo
//
//  Created by AhmedMohamedIOS on 7/10/19.
//  Copyright © 2019 AhmedMohamedIOS. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var label1: UILabel!
    var playerstate = 1
    var states = [0,0,0,0,0,0,0,0,0]
    var active = true
    @IBAction func Xo(_ sender: Any) {
        
        if ( states[(sender as AnyObject).tag - 1] == 0 && active == true)
        {
             states[(sender as AnyObject).tag - 1] = playerstate
        if (playerstate == 1)
        {
        (sender as AnyObject).setImage((UIImage(named: "x.png")), for: UIControl.State() )
    playerstate = 2
        }
        else
        {
            (sender as AnyObject).setImage((UIImage(named: "o.png")), for: UIControl.State() )

            playerstate = 1
        }
            var i = 0
            while(i < states.count)
            {
            if(i <= 6)
            {
            if(states[i] == 1 && states[i + 1] == 1 && states[i + 2] == 1)
            {
                label1.text = "player one win"
            
active = false            }
            else if(states[i] == 2 && states[i + 1] == 2 && states[i + 2] == 2)
            {
                label1.text = "player two win"
            active = false
            }
            else if(i <= 2 && states[i] == 2 && states[i + 3] == 2 && states[i + 6] == 2)
            {
                label1.text = "player two win"
            active = false
            }
            else if(i <= 2 && states[i] == 1 && states[i + 3] == 1 && states[i + 6] == 1)
            {
             label1.text = "player one win"
                active = false
            }
            else if(i <= 2 && states[0] == 2 && states[4] == 2 && states[8] == 2)
            {
                label1.text = "player two win"
            active = false
            }
            else if(i <= 2 && states[0] == 1 && states[4] == 1 && states[8] == 1)
            {
                label1.text = "player one win"
            active = false
            }
            else if(i <= 2 && states[2] == 1 && states[4] == 1 && states[6] == 1)
            {
                label1.text = "player one win"
            active = false
            }
            else if(i <= 2 && states[2] == 2 && states[4] == 2 && states[6] == 2)
            {
                label1.text = "player two win"
            active = false
                }
            }
            i += 1
            }
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    

}

