//
//  MainMenu.swift
//  TicTacToe
//
//  Created by Jun Su Moon on 2017-12-23.
//  Copyright © 2017 Junsu Mun. All rights reserved.
//

import UIKit

class MainMenu: UIViewController {
    //Variables for the Lynn Button
    @IBOutlet weak var lynnlight: UIImageView!
    @IBOutlet weak var lynnbutton: UIButton!
    var lynnafter: UIImage = UIImage(named: "Mcdonald's Lynn After")!
    var lynnbefore: UIImage = UIImage(named: "Mcdonald's Lynn Button")!
    //Variables for the Friend Button
    @IBOutlet weak var friendlight: UIImageView!
    @IBOutlet weak var friendbutton: UIButton!
    var friendafter: UIImage = UIImage(named: "Mcdonald's Friend After")!
    var friendbefore: UIImage = UIImage(named: "Mcdonald's Friend Button")!
    //Variables for the World Button
    @IBOutlet weak var worldlight: UIImageView!
    @IBOutlet weak var worldbutton: UIButton!
    var worldafter: UIImage = UIImage(named: "Mcdonald's World After")!
    var worldbefore: UIImage = UIImage(named: "Mcdonald's World Button")!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    //Event Handlers for YOU VS LYNN Button
    @IBAction func mode1ClickedDown(_ sender: UIButton) {
        lynnbutton.setImage(lynnafter, for: .normal)
        lynnlight.isHidden = false
    }
    @IBAction func mode1DraggedOut(_ sender: UIButton) {
        lynnbutton.setImage(lynnbefore, for: .normal)
        lynnlight.isHidden = true
    }
    @IBAction func mode1UpOutside(_ sender: UIButton) {
        lynnbutton.setImage(lynnbefore, for: .normal)
        lynnlight.isHidden = true
    }
    
    //Event Handlers for YOU VS FRIEND BUTTON
    @IBAction func mode2ClickedDown(_ sender: UIButton) {
        friendbutton.setImage(friendafter, for: .normal)
        friendlight.isHidden = false
    }
    @IBAction func mode2DraggedOut(_ sender: UIButton) {
        friendbutton.setImage(friendbefore, for: .normal)
        friendlight.isHidden = true
    }
    @IBAction func mode2UpOutside(_ sender: UIButton) {
        friendbutton.setImage(friendbefore, for: .normal)
        friendlight.isHidden = true
    }
    
    //Event Handlers for YOU VS WORLD BUTTON
    @IBAction func mode3ClickedDown(_ sender: UIButton) {
        worldbutton.setImage(worldafter, for: .normal)
        worldlight.isHidden = false
    }
    @IBAction func mode3DraggedOut(_ sender: UIButton) {
        worldbutton.setImage(worldbefore, for: .normal)
        worldlight.isHidden = true
    }
    @IBAction func mode3UpOutside(_ sender: UIButton) {
        worldbutton.setImage(worldbefore, for: .normal)
        worldlight.isHidden = true
    }
    
}
