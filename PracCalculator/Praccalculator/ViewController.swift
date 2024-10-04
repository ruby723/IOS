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
    
    func showAlert(message:String) {
        let alert = UIAlertController(title:"알림", message:"\(message)", preferredStyle: .alert)
        
        let okAction = UIAlertAction(title:"확인", style:.default) // 얼럿에 확인 버튼 추가
        alert.addAction(okAction)
        
        present(alert, animated: true)
    }
    
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
        
//        let a = Int(firstOperandField.text!)!
//        let b = Int(secondOperandField.text!)!
//        let op = operatorButton.title(for:.normal)!
        
        guard let text = firstOperandField.text, let a = Int(text) else {
            
            showAlert(message:"값을 입력해주세요")
            return
        }
        
        guard let text = secondOperandField.text, let b = Int(text) else {
            
            showAlert(message:"값을 입력해주세요")
            return
        }
        
        guard let op = operatorButton.title(for:.normal), op != "?" else {
            
            showAlert(message:"연산자를 선택해주세요")
            return
        }
        
        
//        if let text = firstOperandField.text, let a = Int(text) {
//            
//            if let text = secondOperandField.text, let b = Int(text) {
//                
//                if let op = operatorButton.title(for:.normal) {
//                    
//                    if(op == "+") {
//                        let result = a+b
//                        resultLabel.text = "\(result)"
//                    } else if op == "-" {
//                        let result = a-b
//                        resultLabel.text = "\(result)"
//                    } else if op == "*" {
//                        let result = a*b
//                        resultLabel.text = "\(result)"
//                    } else if op == "/" {
//                        let result = a/b
//                        resultLabel.text = "\(result)"
//                    } else {
//                        print("연산자 선택")
//                    }
//                }
//            }
//        }
        
        var result : Int? = nil
        switch op {
            case "+" :
                result = a + b
            case "-" :
                result = a - b
            case "*" :
                result = a * b
            case "/" :
                result = a / b
        default :
            print("연산자 선택")
            break
        }
        
        guard let result = result else {return}
        
        resultLabel.text = "\(result)"
        
        
    }
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

