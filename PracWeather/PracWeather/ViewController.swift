//
//  ViewController.swift
//  PracWeather
//
//  Created by 김정인 on 10/1/24.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var weatherImageView: UIImageView!
    
    @IBOutlet weak var statusLabel: UILabel!
    
    @IBOutlet weak var temperatureLabel: UILabel!
    
    @IBOutlet weak var weatherLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let weather = "흐림"
        let temperature = 17
        
        switch temperature {
        case ..<(-10) :
            weatherLabel.text = "이불 밖은 위험해요"
        case -10...10 :
            weatherLabel.text = "두툼한 패딩 챙기세요"
        case 11...20 :
            weatherLabel.text = "일교차 조심하세요"
        case 21...30 :
            weatherLabel.text = "여름이 다가오고 있어요"
        case 31... :
            weatherLabel.text = "XX여름"
        default :
            break
        }
        
//        if weather == "맑음" {
//            weatherImageView.image = UIImage(named: "016-sun")
//        } else if weather == "흐림" {
//            weatherImageView.image = UIImage(named: "001-cloud")
//        } else if weather == "눈" {
//            weatherImageView.image = UIImage(named: "004-cloud")
//        } else if weather == "비" {
//            weatherImageView.image = UIImage(named: "002-cloud")
//        }
        
        switch weather {
        case "맑음":
            weatherImageView.image = UIImage(named: "016-sun")
        case "흐림":
            weatherImageView.image = UIImage(named: "001-cloud")
        case "눈":
            weatherImageView.image = UIImage(named: "004-cloud")
        case "비":
            weatherImageView.image = UIImage(named: "002-cloud")
        default :
            break
        }
        
        statusLabel.text = weather
        temperatureLabel.text = "\(temperature)"
    }


}

