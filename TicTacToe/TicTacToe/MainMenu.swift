//
//  MainMenu.swift
//  TicTacToe
//
//  Created by Jun Su Moon on 2017-12-23.
//  Copyright © 2017 Junsu Mun. All rights reserved.
//

import UIKit

class MainMenu: UIViewController {

    @IBOutlet weak var lynnlight: UIImageView!
    @IBOutlet weak var lynnbutton: UIButton!
    var lynnafter: UIImage = UIImage(named: "Mcdonald's Lynn After")!
    var lynnbefore: UIImage = UIImage(named: "Mcdonald's Lynn Button")!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func mode1ClickedDown(_ sender: UIButton) {
        lynnbutton.setImage(lynnafter, for: .normal)
    }
    @IBAction func case3(_ sender: UIButton) {
        lynnbutton.setImage(lynnbefore, for: .normal)
    }
    
    @IBAction func test2(_ sender: Any) {
        print("hello")
    }
    @IBAction func test(_ sender: UITapGestureRecognizer) {
        print("hello")
    }
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
