//
//  ViewController.swift
//  icalculator
//
//  Created by Amr Moussa on 3/31/20.
//  Copyright © 2020 Amr Moussa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var resultLabel: UILabel!
    var fNumber :NSDecimalNumber = 0.0
    var sNumber :NSDecimalNumber  = 0.0
    var resuly:NSDecimalNumber = 0.0
    var operation:Character = " "
    
    @IBOutlet weak var signLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        resultLabel.text = ""
    
    }
 
    
    
@IBAction func btnClicked(_ sender: UIButton) {
        
        switch sender.tag {
    case 0:
            updateresult(0)
        
    case 1:
            updateresult(1)
            
    case 2:
            updateresult(2)
    case 3:
            updateresult(3)
    case 4:
            updateresult(4)
    case 5:
            updateresult(5)
    case 6:
            updateresult(6)
    case 7:
            updateresult(7)
    case 8:
            updateresult(8)
    case 9:
            updateresult(9)
//equal sign
        case 10:
             setFnum()
            makeoperation(operation, Double(fNumber), Double(sNumber))
//dot sign
//        case 18:
//           updateresult(".")
//plus sign
        case 11:
            operation = "+"
            addsign("+")
            setFnum()
//    minus sign :
        case 12:
            operation = "-"
            addsign("-")
            setFnum()
//    multiply sign
        case 13:
            operation = "x"
            addsign("X")
            setFnum()
//divide sign
        case 14:
            operation = "/"
            addsign("/")
            setFnum()
//     AC sign
        case 15:
            resultLabel.text = ""
            fNumber = 0.0
            sNumber = 0.0
            resuly = 0.0
//        plus minus sign
        case 16:
            addsign("-")
//ratio sign
        case 17:
            addsign("%")
            
            
            
        default:
            resultLabel.text = "Error"
        }
        
        
    }
    
    func updateresult(_ intdigit:Int ){
    
        resultLabel.text?.append(String(intdigit))
        
    }
    
    func addsign (_ sign :Character){
        
        signLabel.text = sign.description
        
    }
func setFnum(){
    
    
    if fNumber != 0.0 {

        sNumber = NSDecimalNumber(string: resultLabel.text)
        resultLabel.text = ""
    }
    else{
        
        fNumber = NSDecimalNumber(string: resultLabel.text)
        resultLabel.text = ""
    }

    }
    func makeoperation(_ operation:Character ,_ fNumber:Double , _ sNumber:Double){
        signLabel.text = ""
        switch operation {
        case "+":
            resultLabel.text = String(fNumber + sNumber)
        case "-":
            resultLabel.text = String(fNumber - sNumber)
        case "x":
              resultLabel.text = String(fNumber * sNumber)
        case "/":
              resultLabel.text = String(fNumber / sNumber)
        
        default:
            resultLabel.text = String(fNumber + sNumber)
       
        }
        
        
        
    }
    
}

