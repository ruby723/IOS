//
//  ViewController.swift
//  PracLogin
//
//  Created by 김정인 on 9/30/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var idField: UITextField!
    
    @IBOutlet weak var passwordField: UITextField!
    
    func showAlert(message: String) {
        let alert = UIAlertController(title: "알림", message: "\(message)", preferredStyle: .alert)
        let okAction = UIAlertAction(title: "확인", style:.default)
        alert.addAction(okAction)
        
        present(alert, animated: true)
    }
    
    @IBAction func login(_ sender: Any) {
//        let id = idField.text!
        guard let id = idField.text, !id.isEmpty else {
            showAlert(message:"아이디를 입력해주세요")
            return
        }
//        let password = passwordField.text!
        guard let password = passwordField.text, !id.isEmpty else {
            showAlert(message:"비밀번호를 입력해주세요")
            return
        }
        
        //kxcoding
        //1234
        
//        if id.isEmpty || password.isEmpty {
//            print("계정을 입력하세요")
//            return
//        }
        
        guard !(id.isEmpty && password.isEmpty) else {
            print("계정을 입력하세요")
            return
        }
        
        if (id == "kxcoding" && password == "1234") {
            resultLabel.text = "로그인 성공 b"
        } else {
            resultLabel.text = "로그인 실패"
        }
    }
    
    @IBOutlet weak var resultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    // 화면이 표시 된 직후에 작동하는 메소드
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        idField.becomeFirstResponder()// 커서
    }


}

