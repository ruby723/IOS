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
    
    @IBOutlet var labels: [UILabel]!
    
    // 화면 호출 시마다 자동 호출
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    // 화면 회전 시 자동 호출
    override func viewWillTransition(to size: CGSize, with coordinator: any UIViewControllerTransitionCoordinator) {
        super.viewWillTransition(to: size, with: coordinator)
        
        coordinator.animate { _ in
            
            for label in self.labels {
                label.layer.cornerRadius = label.bounds.width/2
                label.clipsToBounds = true
                
            }
        }
    }
    
    func getColors(from number: Int?) -> (backgroundColor : UIColor, textColor : UIColor) {
        switch number ?? 0 {
            case 1...10 :
                return(UIColor.yellow, UIColor.black)
            case 11...20 :
                return(UIColor.blue, UIColor.white)
            case 21...30 :
                return(UIColor.red, UIColor.white)
            case 31...40 :
                return(UIColor.gray, UIColor.white)
            case 21...45 :
                return(UIColor.green, UIColor.black)
            default :
                return (UIColor.purple, UIColor.white)
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        var nums = [Int]()
        while nums.count < labels.count {
            let rnd = Int.random(in: 1...45)
            if !nums.contains(rnd) {
                nums.append(rnd)
            }
        }
        
        nums.sort()
        
//        let sortedNums = nums.sorted()
        for (index, label) in labels.enumerated() {
            label.layer.cornerRadius = label.bounds.width/2
            label.clipsToBounds = true
            
            label.text = "\(nums[index])"
            
            label.backgroundColor = getColors(from: nums[index]).0
            label.textColor = getColors(from: nums[index]).1
            
        }
        
        let colors = getColors(from: nil)
        number7Label.backgroundColor = colors.backgroundColor
        number7Label.textColor = colors.textColor
        
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
