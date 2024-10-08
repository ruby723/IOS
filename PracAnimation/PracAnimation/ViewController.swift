//
//  ViewController.swift
//  PracAnimation
//
//  Created by 김정인 on 10/8/24.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBOutlet weak var boxView: UIView!
    
    
    @IBAction func moveBox(_ sender: Any) {
        
        //        UIView.animate(withDuration: 10, animations: {
        //            self.boxView.frame = CGRect(x: 200, y: 400, width: 100, height: 200)
        //            self.boxView.backgroundColor = UIColor.yellow
        //        }) {_ in
        //            print("애니메이션 종료")
        //        }
        
        UIView.animate(withDuration: 10){
            self.boxView.frame = CGRect(x: 200, y: 400, width: 100, height: 200)
            self.boxView.backgroundColor = UIColor.yellow
        } completion: {_ in
            print("애니메이션 종료")
        }
    }
    
}

