//
//  ViewController.swift
//  PracLotto
//
//  Created by 김정인 on 10/2/24.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var number1Label: UILabel!
    @IBOutlet weak var number2Label: UILabel!
    @IBOutlet weak var number3Label: UILabel!
    @IBOutlet weak var number4Label: UILabel!
    @IBOutlet weak var number5Label: UILabel!
    @IBOutlet weak var number6Label: UILabel!
    @IBOutlet weak var number7Label: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
//        let rnd1 = Int.random(in: 1...45)
//        number1Label.text = "\(rnd1)"
//        switch rnd1 {
//        case 1...10 :
//            number1Label.backgroundColor = UIColor.yellow
//            number1Label.textColor = UIColor.black
//        case 11...20 :
//            number1Label.backgroundColor = UIColor.blue
//            number1Label.textColor = UIColor.white
//        case 21...30 :
//            number1Label.backgroundColor = UIColor.red
//            number1Label.textColor = UIColor.white
//        case 31...40 :
//            number1Label.backgroundColor = UIColor.gray
//            number1Label.textColor = UIColor.white
//        case 21...45 :
//            number1Label.backgroundColor = UIColor.green
//            number1Label.textColor = UIColor.black
//        
//        default :
//            break
//        }
//        
//        let rnd2 = Int.random(in: 1...45)
//        number2Label.text = "\(rnd2)"
//        switch rnd2 {
//        case 1...10 :
//            number2Label.backgroundColor = UIColor.yellow
//            number2Label.textColor = UIColor.black
//        case 11...20 :
//            number2Label.backgroundColor = UIColor.blue
//            number2Label.textColor = UIColor.white
//        case 21...30 :
//            number2Label.backgroundColor = UIColor.red
//            number2Label.textColor = UIColor.white
//        case 31...40 :
//            number2Label.backgroundColor = UIColor.gray
//            number2Label.textColor = UIColor.white
//        case 21...45 :
//            number2Label.backgroundColor = UIColor.green
//            number2Label.textColor = UIColor.black
//        
//        default :
//            break
//        }
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        let labels = [number1Label!, number2Label!, number3Label!, number4Label!, number5Label!, number6Label!, number7Label!]
        
        var nums = [Int]()
        while nums.count < labels.count {
            let rnd = Int.random(in: 1...45)
            if !nums.contains(rnd) {
                nums.append(rnd)
            }
        }
        
        let sortedNums = nums.sorted()
        for (index, label) in labels.enumerated() {
            label.layer.cornerRadius = label.bounds.width/2
            label.clipsToBounds = true
            
            label.text = "\(sortedNums[index])"
            
            switch sortedNums[index] {
            case 1...10 :
                label.backgroundColor = UIColor.yellow
                label.textColor = UIColor.black
            case 11...20 :
                label.backgroundColor = UIColor.blue
                label.textColor = UIColor.white
            case 21...30 :
                label.backgroundColor = UIColor.red
                label.textColor = UIColor.white
            case 31...40 :
                label.backgroundColor = UIColor.gray
                label.textColor = UIColor.white
            case 21...45 :
                label.backgroundColor = UIColor.green
                label.textColor = UIColor.black
            
            default :
                break
            }
            
            number7Label.backgroundColor = UIColor.purple
            number7Label.textColor = UIColor.white
        }
        
//        number1Label.layer.cornerRadius = number1Label.bounds.width/2
//        number1Label.clipsToBounds = true
//        
//        number2Label.layer.cornerRadius = number2Label.bounds.width/2
//        number2Label.clipsToBounds = true
//        
//        number3Label.layer.cornerRadius = number3Label.bounds.width/2
//        number3Label.clipsToBounds = true
//        
//        number4Label.layer.cornerRadius = number4Label.bounds.width/2
//        number4Label.clipsToBounds = true
//        
//        number5Label.layer.cornerRadius = number5Label.bounds.width/2
//        number5Label.clipsToBounds = true
//        
//        number6Label.layer.cornerRadius = number6Label.bounds.width/2
//        number6Label.clipsToBounds = true
//        
//        number7Label.layer.cornerRadius = number7Label.bounds.width/2
//        number7Label.clipsToBounds = true
    }
    
}
