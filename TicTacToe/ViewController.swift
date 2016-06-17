//
//  ViewController.swift
//  TicTacToe
//
//  Created by Kristin Kamenar on 6/16/16.
//  Copyright © 2016 Kristin Kamenar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var oneLabel: UILabel!
    @IBOutlet weak var twoLabel: UILabel!
    @IBOutlet weak var threeLabel: UILabel!
    @IBOutlet weak var fourLabel: UILabel!
    @IBOutlet weak var fiveLabel: UILabel!
    @IBOutlet weak var sixLabel: UILabel!
    @IBOutlet weak var sevenLabel: UILabel!
    @IBOutlet weak var eightLabel: UILabel!
    @IBOutlet weak var nineLabel: UILabel!
    @IBOutlet weak var newView: UIView!
    @IBOutlet weak var outcomesLabel: UILabel!
    @IBOutlet weak var nextPlayLabel: UILabel!
    
    var count = 0
    var currentValue = "X"
    var winnerExists = true
    var winningSign = ""
    var xWins = 0
    var oWins = 0
    var ties = 0
    var location : CGPoint?
    var oldValue = "X"
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        location = nextPlayLabel.center
        
        //clear labels
        clearLabel()
        
        // Do any additional setup after loading the view, typically from a nib.
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - clearLabel
    func clearLabel()
    {
        //reset count
        count = 1
        
        //clear all labels
        oneLabel.text = ""
        twoLabel.text = ""
        threeLabel.text = ""
        fourLabel.text = ""
        fiveLabel.text = ""
        sixLabel.text = ""
        sevenLabel.text = ""
        eightLabel.text = ""
        nineLabel.text = ""
        nextPlayLabel.text = "X"
        
        winningSign = ""
        currentValue = "X"
        oldValue = "X"
    }
    
    // MARK: - getValue
    func getValue()
    {
        //print("begin get value \(count)")

        //print("In Get Value now")
        count += 1
        
        oldValue = nextPlayLabel.text!
        print("old value \(oldValue)")
        
        if count <= 9
        {
            if count%2 == 1
            {
                currentValue = "X"

            }
                
            else if count%2 == 0
            {
                currentValue = "O"
            }
            
            nextPlayLabel.text = currentValue
            print("current value \(currentValue)")
            //print(nextPlayLabel)


        }
        
        if count == 9 && winnerExists == false
        {
            winningSign = "Cat's Game."
            ties += 1
            gameOver()
        }
        
        //print(count)
        //print(currentValue)
        
    }
    

    //MARK - determineWinner
    func determineWinner() -> Bool
    {
        //print("Determining Winner")
        
        //horizontal x check
        if oneLabel.text == "X" && twoLabel.text == "X" && threeLabel.text == "X"
        {
            //print("X wins")
            winningSign = "X Wins!"
            winnerExists = true
            xWins += 1
        }
        
        else if fourLabel.text == "X" && fiveLabel.text == "X" && sixLabel.text == "X"
        {
            //print("X wins")
            winningSign = "X Wins!"
            winnerExists = true
            xWins += 1
        }
        
        else if sevenLabel.text == "X" && eightLabel.text == "X" && nineLabel.text == "X"
        {
            //print("X wins")
            winningSign = "X Wins!"
            winnerExists = true
            xWins += 1
        }
        
            
        //vertical x check
        else if oneLabel.text == "X" && fourLabel.text == "X" && sevenLabel.text == "X"
        {
            //print("X wins")
            winningSign = "X Wins!"
            winnerExists = true
            xWins += 1
        }
            
        else if twoLabel.text == "X" && fiveLabel.text == "X" && eightLabel.text == "X"
        {
            //print("X wins")
            winningSign = "X Wins!"
            winnerExists = true
            xWins += 1
        }
            
        else if threeLabel.text == "X" && sixLabel.text == "X" && nineLabel.text == "X"
        {
            //print("X wins")
            winningSign = "X Wins!"
            winnerExists = true
            xWins += 1
        }
            

        //diagonal x check
        else if oneLabel.text == "X" && fiveLabel.text == "X" && nineLabel.text == "X"
        {
            //print("X wins")
            winningSign = "X Wins!"
            winnerExists = true
            xWins += 1
        }
        
        else if threeLabel.text == "X" && fiveLabel.text == "X" && sevenLabel.text == "X"
        {
            //print("X wins")
            winningSign = "X Wins!"
            winnerExists = true
            xWins += 1
        }
            

        
        //horizontal o check
        else if oneLabel.text == "O" && twoLabel.text == "O" && threeLabel.text == "O"
        {
            //print("O wins")
            winningSign = "O Wins!"
            winnerExists = true
            oWins += 1
        }
            
        else if fourLabel.text == "O" && fiveLabel.text == "O" && sixLabel.text == "O"
        {
            //print("O wins")
            winningSign = "O Wins!"
            winnerExists = true
            oWins += 1
        }
            
        else if sevenLabel.text == "O" && eightLabel.text == "O" && nineLabel.text == "O"
        {
            //print("O wins")
            winningSign = "O Wins!"
            winnerExists = true
            oWins += 1
        }
            
        //diagonal o check
        else if oneLabel.text == "O" && fiveLabel.text == "O" && nineLabel.text == "O"
        {
            //print("O wins")
            winningSign = "O Wins!"
            winnerExists = true
            oWins += 1
        }
            
        else if threeLabel.text == "O" && fiveLabel.text == "O" && sevenLabel.text == "O"
        {
            //print("O wins")
            winningSign = "O Wins!"
            winnerExists = true
            oWins += 1
        }
          
        //vertical o check
        else if oneLabel.text == "O" && fourLabel.text == "O" && sevenLabel.text == "O"
        {
            //print("O wins")
            winningSign = "O Wins!"
            winnerExists = true
            oWins += 1
        }
            
        else if twoLabel.text == "O" && fiveLabel.text == "O" && eightLabel.text == "O"
        {
            //print("O wins")
            winningSign = "O Wins!"
            winnerExists = true
            oWins += 1
        }
            
        else if threeLabel.text == "O" && sixLabel.text == "O" && nineLabel.text == "O"
        {
            //print("O wins")
            winningSign = "O Wins!"
            winnerExists = true
            oWins += 1
        }
        
        else{
            winnerExists = false
        }
        
        //print(winnerExists)
        
        return winnerExists
    }
    
    //MARK: -gameOver
    func gameOver()
    {
        
        outcomesLabel.text = " Number of X Wins : \(xWins) \n Number of O Wins: \(oWins) \n Number of Ties: \(ties)"
        
        //print("Game Over Function")
        let myAlert = UIAlertController(title: "Game Over. \(winningSign)", message: "Would You Like to Play Again?", preferredStyle: UIAlertControllerStyle.Alert)
        //dismiss button
        
        //reset board
        myAlert.addAction(UIAlertAction(title: "Yes", style: .Default, handler: {(alert: UIAlertAction!) in self.clearLabel()}))
        
        //if the user doesn't want to play again, return to the completed board
        myAlert.addAction(UIAlertAction(title:"No", style: .Default, handler: nil))
        
        //show alert view
        presentViewController(myAlert, animated: true, completion: nil)
    }
    
    //MARK: -onDragged
    @IBAction func onDragged(sender: UIPanGestureRecognizer)
    {
        
        //getValue()
        
        let dragPoint = sender.locationInView(newView)
        
        nextPlayLabel.center = dragPoint
        
//        if CGRectContainsPoint(nextPlayLabel.frame, dragPoint)
//        {
//            print("Drag Point \(dragPoint)")
//            print("Center \(nextPlayLabel.center)")
//            
//            
//            nextPlayLabel.center = dragPoint
//        
//        
//            if sender.state == .Ended
//            {
//                if CGRectIntersectsRect(nextPlayLabel.frame, oneLabel.frame) == true
//                {
//                    oneLabel.text = nextPlayLabel.text
//                }
//            
//            }
//        }
    
         
        //determine if dragging has stopped
        if sender.state == .Ended
        {
            
            //print("dragging has stopped")


        //getValue()
        //determine where to place new symbol, otherwise place back to original location
        if CGRectContainsPoint(oneLabel.frame, dragPoint)
        {
            //print("tapped 1")
            if oneLabel.text == ""
            {
                //print("before \(currentValue)")
                getValue()
                
               //print("after \(currentValue)")
                oneLabel.text = oldValue
                self.nextPlayLabel.center = CGPoint(x: 0,y: 0)
            }
                
        }
        
        else if CGRectContainsPoint(twoLabel.frame, dragPoint)
        {
            //print("tapped 2")
            if twoLabel.text == ""
            {
                getValue()
                twoLabel.text = oldValue
                self.nextPlayLabel.center = CGPoint(x: 0,y: 0)
            }
            
        }
            
        else if CGRectContainsPoint(threeLabel.frame, dragPoint)
        {
            //print("tapped 3")
            if threeLabel.text == ""
            {
                getValue()
                threeLabel.text = oldValue
                self.nextPlayLabel.center = CGPoint(x: 0,y: 0)
            }
            
        }
            
        else if CGRectContainsPoint(fourLabel.frame, dragPoint)
        {
            //print("tapped 4")
            if fourLabel.text == ""
            {
                getValue()
                fourLabel.text = oldValue
                self.nextPlayLabel.center = CGPoint(x: 0,y: 0)
            }
        }
            
        else if CGRectContainsPoint(fiveLabel.frame, dragPoint)
        {
            //print("tapped 5")
            if fiveLabel.text == ""
            {
                getValue()
                fiveLabel.text = oldValue
                self.nextPlayLabel.center = CGPoint(x: 0,y: 0)
            }
        }
            
        else if CGRectContainsPoint(sixLabel.frame, dragPoint)
        {
            //print("tapped 6")
            if sixLabel.text == ""
            {
                getValue()
                sixLabel.text = oldValue
                self.nextPlayLabel.center = CGPoint(x: 0,y: 0)
            }
        }
            
        else if CGRectContainsPoint(sevenLabel.frame, dragPoint)
        {
            //print("tapped 7")
            if sevenLabel.text == ""
            {
                getValue()
                sevenLabel.text = oldValue
                self.nextPlayLabel.center = CGPoint(x: 0,y: 0)
            }
        }
            
        else if CGRectContainsPoint(eightLabel.frame, dragPoint)
        {
            //print("tapped 8")
            if eightLabel.text == ""
            {
                getValue()
                eightLabel.text = oldValue
                self.nextPlayLabel.center = CGPoint(x: 0,y: 0)
            }
        }
            
        else if CGRectContainsPoint(nineLabel.frame, dragPoint)
        {
            //print("tapped 9")
            if nineLabel.text == ""
            {
                getValue()
                nineLabel.text = oldValue
                self.nextPlayLabel.center = CGPoint(x: 0,y: 0)
                
            }
        }
            
        else
        {
            //count -= 1
            //print(count)
            UIView.animateWithDuration(0.75, animations: {
                self.nextPlayLabel.center = CGPoint(x: 0,y: 0)
            })
        }
            }
    
        if determineWinner() == true
        {
            gameOver()
        }
    }

}

    
    
    


