//
//  Mode2.swift
//  TicTacToe
//
//  Created by Jun Su Moon on 2017-12-19.
//  Copyright © 2017 Junsu Mun. All rights reserved.
//

import UIKit

class Mode2: UIViewController {
    
    @IBOutlet weak var one1: UIImageView!
    @IBOutlet weak var one2: UIImageView!
    @IBOutlet weak var one3: UIImageView!
    @IBOutlet weak var two1: UIImageView!
    @IBOutlet weak var two2: UIImageView!
    @IBOutlet weak var two3: UIImageView!
    @IBOutlet weak var three1: UIImageView!
    @IBOutlet weak var three2: UIImageView!
    @IBOutlet weak var three3: UIImageView!
    
    var board: [[Int]] = [[Int]](repeating: [Int](repeating: 3, count: 3), count: 3)
    var turn: Int = 1
    var totalturn: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func enumerate(){
        for i in 0..<board.count {
            print(i)
            for j in 0..<board[i].count{
                print(board[i][j], terminator: " ")
            }
            print()
        }
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //tapEvent function add X,O image to the imageView
    func tapEvent(imageview: UIImageView, x: Int, y: Int) {
        if imageview.image == nil {
            if turn==1{
                imageview.image = UIImage(named: "X.png")
                board[x][y] = turn
                turn = 2
                totalturn += 1
            }
            else{
                imageview.image = UIImage(named: "O.png")
                board[x][y] = turn
                turn = 1
                totalturn += 1
            }
        }
    }
    
    func printWinner(){
        let winner: Int = checkWinner()
        if winner == 1 {
            print("X Player won")
        }
        else if winner == 2 {
            print("O Player won")
        }
        else if totalturn == 9 && winner == -1 {
            print("Draw")
        }
    }
    func checkWinner() -> Int {
        var winner: Int = -1
        var rowcheckable: Bool = true
        var colcheckable: Bool = true
        var diag1checkable: Bool = true
        var diag2checkable: Bool = true
        
        for i in 0..<board.count {
            for j in 0..<board[i].count {
                if rowcheckable && board[i][0] != board[i][j]  {
                    rowcheckable = false
                }
                if colcheckable && board[0][i] != board[j][i] {
                    colcheckable = false
                }
                if diag1checkable && board[0][0] != board[j][j] {
                    diag1checkable = false
                }
                if diag2checkable && board[0][board.count-1] != board[j][board.count-1-j] {
                    diag2checkable = false
                }
            }
            if rowcheckable {
                winner = board[i][0]
            }
            if colcheckable {
                winner = board[0][i]
            }
            if diag1checkable {
                winner = board[0][0]
            }
            if diag2checkable {
                winner = board[0][board.count-1]
            }
            
            if rowcheckable||colcheckable||diag1checkable||diag2checkable {
                break
            }
            else {
                rowcheckable = true
                colcheckable = true
            }
        }
        return winner
    }
    
    @IBAction func one1Tapped(_ sender: UITapGestureRecognizer) {
        tapEvent(imageview: one1, x: 0, y: 0)
        printWinner()
    }
    @IBAction func one2Tapped(_ sender: UITapGestureRecognizer) {
        tapEvent(imageview: one2, x: 0, y: 1)
        printWinner()
    }
    @IBAction func one3Tapped(_ sender: UITapGestureRecognizer) {
        tapEvent(imageview: one3, x: 0, y: 2)
        printWinner()
    }
    @IBAction func two1Tapped(_ sender: UITapGestureRecognizer) {
        tapEvent(imageview: two1, x: 1, y: 0)
        printWinner()
    }
    @IBAction func two2Tapped(_ sender: UITapGestureRecognizer) {
        tapEvent(imageview: two2, x: 1, y: 1)
        printWinner()
    }
    @IBAction func two3Tapped(_ sender: UITapGestureRecognizer) {
        tapEvent(imageview: two3, x: 1, y: 2)
        printWinner()
    }
    @IBAction func three1Tapped(_ sender: UITapGestureRecognizer) {
        tapEvent(imageview: three1, x: 2, y: 0)
        printWinner()
    }
    @IBAction func three2Tapped(_ sender: UITapGestureRecognizer) {
        tapEvent(imageview: three2, x: 2, y: 1)
        printWinner()
    }
    @IBAction func three3Tapped(_ sender: UITapGestureRecognizer) {
        tapEvent(imageview: three3, x: 2, y: 2)
        printWinner()
    }
}

