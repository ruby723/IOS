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
    
    func getWeatherImage(matching weather: String) -> UIImage? {
        switch weather {
        case "맑음" :
            return UIImage(named: "016-sun")
        case "흐림" :
            return UIImage(named: "001-cloud")
        case "눈" :
            return UIImage(named: "004-cloud")
        case "비" :
            return UIImage(named: "002-cloud")
        default : return nil
        }
    }
    
    func getWeahterLabel(matching temperature: Int) -> String {
        switch temperature {
            case ..<(-10) :
               return "이불 밖은 위험해요"
            case -10...10 :
                return "두툼한 패딩 챙기세요"
            case 11...20 :
                return "일교차 조심하세요"
            case 21...30 :
                return "여름이 다가오고 있어요"
            case 31... :
                return "XX여름"
            default :
                return ""
            }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let weather = ["맑음", "흐림", "비", "눈"].randomElement() ?? "맑음"
        let temperature = Int.random(in: -20...38)
        
        weatherImageView.image = getWeatherImage(matching: weather)
        statusLabel.text = weather
        temperatureLabel.text = "\(temperature)"
        weatherLabel.text = getWeahterLabel(matching: temperature)
    }


}

