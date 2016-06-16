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
    
    var count = 0
    var currentValue = "X"
    var winnerExists = true
    var winningSign = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //clear labels
        clearLabel()
        
        // Do any additional setup after loading the view, typically from a nib.
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func clearLabel()
    {
        //reset count
        count = 0
        
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
        
        winningSign = ""
        currentValue = "X"
    }
    
    func getValue()
    {
        count += 1
        
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
            
            else
            {
                currentValue = ""
            }
        }
        
        if count == 9 && winnerExists == false
        {
            winningSign = "Cat's Game."
            gameOver()
        }
        
        print(count)
        print(currentValue)
        
    }
    
    
    @IBAction func onTap(sender: UITapGestureRecognizer) {
    
        //update count and switch x and y
        getValue()
        
        
        let point = sender.locationInView(newView)

        print(point)
    
        if CGRectContainsPoint(oneLabel.frame, point)
        {
            //print("tapped 1")
            if oneLabel.text == ""
            {
                oneLabel.text = currentValue
            }
            
        }
        
        else if CGRectContainsPoint(twoLabel.frame, point)
        {
            //print("tapped 2")
            if twoLabel.text == ""
            {
                twoLabel.text = currentValue
            }
            
        }
        
        else if CGRectContainsPoint(threeLabel.frame, point)
        {
            //print("tapped 3")
            if threeLabel.text == ""
            {
                threeLabel.text = currentValue
            }
            
        }
        
        else if CGRectContainsPoint(fourLabel.frame, point)
        {
            //print("tapped 4")
            if fourLabel.text == ""
            {
                fourLabel.text = currentValue
            }
        }

        else if CGRectContainsPoint(fiveLabel.frame, point)
        {
            //print("tapped 5")
            if fiveLabel.text == ""
            {
                fiveLabel.text = currentValue
            }
        }
        
        else if CGRectContainsPoint(sixLabel.frame, point)
        {
            //print("tapped 6")
            if sixLabel.text == ""
            {
                sixLabel.text = currentValue
            }
        }
        
        else if CGRectContainsPoint(sevenLabel.frame, point)
        {
            //print("tapped 7")
            if sevenLabel.text == ""
            {
                sevenLabel.text = currentValue
            }
        }
        
        else if CGRectContainsPoint(eightLabel.frame, point)
        {
            //print("tapped 8")
            if eightLabel.text == ""
            {
                eightLabel.text = currentValue
            }
        }
        
        else if CGRectContainsPoint(nineLabel.frame, point)
        {
            //print("tapped 9")
            if nineLabel.text == ""
            {
                nineLabel.text = currentValue
            }
        }
        
        else
        {
            count -= 1
            print(count)
        }
        
        if determineWinner() == true
        {
            gameOver()
        }
        
        
        
    }
    
    func determineWinner() -> Bool
    {
        //print("Determining Winner")
        if oneLabel.text == "X" && twoLabel.text == "X" && threeLabel.text == "X"
        {
            //print("X wins")
            winningSign = "X Wins!"
            winnerExists = true
        }
        
        else if fourLabel.text == "X" && fiveLabel.text == "X" && sixLabel.text == "X"
        {
            //print("X wins")
            winningSign = "X Wins!"
            winnerExists = true
        }
        
        else if sevenLabel.text == "X" && eightLabel.text == "X" && nineLabel.text == "X"
        {
            //print("X wins")
            winningSign = "X Wins!"
            winnerExists = true
        }
            
        else if oneLabel.text == "X" && fiveLabel.text == "X" && nineLabel.text == "X"
        {
            //print("X wins")
            winningSign = "X Wins!"
            winnerExists = true
        }
        
        else if threeLabel.text == "X" && fiveLabel.text == "X" && sevenLabel.text == "X"
        {
            //print("X wins")
            winningSign = "X Wins!"
            winnerExists = true
        }
            
        else if oneLabel.text == "O" && twoLabel.text == "O" && threeLabel.text == "O"
        {
            //print("O wins")
            winningSign = "O Wins!"
            winnerExists = true
        }
            
        else if fourLabel.text == "O" && fiveLabel.text == "O" && sixLabel.text == "O"
        {
            //print("O wins")
            winningSign = "O Wins!"
            winnerExists = true
        }
            
        else if sevenLabel.text == "O" && eightLabel.text == "O" && nineLabel.text == "O"
        {
            //print("O wins")
            winningSign = "O Wins!"
            winnerExists = true
        }
        
        else if oneLabel.text == "O" && fiveLabel.text == "O" && nineLabel.text == "O"
        {
            //print("O wins")
            winningSign = "O Wins!"
            winnerExists = true
        }
            
        else if threeLabel.text == "O" && fiveLabel.text == "O" && sevenLabel.text == "O"
        {
            //print("O wins")
            winningSign = "O Wins!"
            winnerExists = true
        }
        
        else{
            winnerExists = false
        }
        
        //print(winnerExists)
        
        return winnerExists
    }
    
    func gameOver()
    {
        
        //print("Game Over Function")
        let myAlert = UIAlertController(title: "Game Over. \(winningSign)", message: "Would You Like to Play Again?", preferredStyle: UIAlertControllerStyle.Alert)
        //dismiss button
        myAlert.addAction(UIAlertAction(title: "Yes", style: .Default, handler: {(alert: UIAlertAction!) in self.clearLabel()}))
        
        //second button
        myAlert.addAction(UIAlertAction(title:"No", style: .Default, handler: nil))
        
        //show alert view
        presentViewController(myAlert, animated: true, completion: nil)
    }

}

