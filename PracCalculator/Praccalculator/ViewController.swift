//
//  ViewController.swift
//  FirstIosApp
//
//  Created by 김정인 on 9/30/24.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var firstOperandField: UITextField!
    
    
    @IBOutlet weak var operatorButton: UIButton!
    
    @IBAction func selectOperator(_ sender: Any) {
        let actionSheet = UIAlertController(title:nil, message:nil, preferredStyle: .actionSheet)
        
        let plusAction = UIAlertAction(title:"+(더하기)", style:.default) { _ in
            self.operatorButton.setTitle("+", for: .normal)
        }
        actionSheet.addAction(plusAction)
        
        let minusAction = UIAlertAction(title:"-(빼기)", style:.default) { _ in
            self.operatorButton.setTitle("-", for: .normal)
        }
        actionSheet.addAction(minusAction)
        
        let multiplyAction = UIAlertAction(title:"*(곱하기)", style:.default) { _ in
            self.operatorButton.setTitle("*", for: .normal)
        }
        actionSheet.addAction(multiplyAction)
        
        let divideAction = UIAlertAction(title:"/(나누기)", style:.default) { _ in
            self.operatorButton.setTitle("/", for: .normal)
        }
        actionSheet.addAction(divideAction)
        
        present(actionSheet, animated: true)
    }
    
    @IBOutlet weak var secondOperandField: UITextField!
    
    
    @IBOutlet weak var resultLabel: UILabel!
    
    @IBAction func calculate(_ sender: Any) {
        let a = Int(firstOperandField.text!)!
        let b = Int(secondOperandField.text!)!
        
        let op = operatorButton.title(for:.normal)!
        
        if(op == "+") {
            let result = a+b
            resultLabel.text = "\(result)"
        } else if op == "-" {
            let result = a-b
            resultLabel.text = "\(result)"
        } else if op == "*" {
            let result = a*b
            resultLabel.text = "\(result)"
        } else if op == "/" {
            let result = a/b
            resultLabel.text = "\(result)"
        } else {
            print("연산자 선택")
        }
        
    }
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

