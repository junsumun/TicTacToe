//
//  ViewController.swift
//  TicTacToe
//
//  Created by Jun Su Moon on 2017-12-19.
//  Copyright © 2017 Junsu Mun. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var one1: UIImageView!
    @IBOutlet weak var one2: UIImageView!
    @IBOutlet weak var one3: UIImageView!
    @IBOutlet weak var two1: UIImageView!
    @IBOutlet weak var two2: UIImageView!
    @IBOutlet weak var two3: UIImageView!
    @IBOutlet weak var three1: UIImageView!
    @IBOutlet weak var three2: UIImageView!
    @IBOutlet weak var three3: UIImageView!
    
    var turn: Int = 1;
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("hello")
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func tapEvent(imageview: UIImageView){
        if imageview.image == nil {
            if turn==1{
                imageview.image = UIImage(named: "X.png")
                turn = 2
            }
            else{
                imageview.image = UIImage(named: "O.png")
                turn = 1
            }
        }
        
    }
    @IBAction func one1Tapped(_ sender: UITapGestureRecognizer) {
        tapEvent(imageview: one1)
    }
    @IBAction func one2Tapped(_ sender: UITapGestureRecognizer) {
        tapEvent(imageview: one2)
    }
    @IBAction func one3Tapped(_ sender: UITapGestureRecognizer) {
        tapEvent(imageview: one3)
    }
    @IBAction func two1Tapped(_ sender: UITapGestureRecognizer) {
        tapEvent(imageview: two1)
    }
    @IBAction func two2Tapped(_ sender: UITapGestureRecognizer) {
        tapEvent(imageview: two2)
    }
    @IBAction func two3Tapped(_ sender: UITapGestureRecognizer) {
        tapEvent(imageview: two3)
    }
    @IBAction func three1Tapped(_ sender: UITapGestureRecognizer) {
        tapEvent(imageview: three1)
    }
    @IBAction func three2Tapped(_ sender: UITapGestureRecognizer) {
        tapEvent(imageview: three2)
    }
    @IBAction func three3Tapped(_ sender: UITapGestureRecognizer) {
        tapEvent(imageview: three3)
    }
    
    
    
}

