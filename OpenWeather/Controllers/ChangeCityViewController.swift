//
//  ChangeCityViewController.swift
//  OpenWeather
//
//  Created by linda.zande on 13/08/2021.
//

import UIKit

protocol  ChangeCityDelegate {
    func userEnterCityName(city: String)

}
class ChangeCityViewController: UIViewController {
    
    var delegate: ChangeCityDelegate?
    
    @IBOutlet weak var cityTextField: DesignableTextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    //getWEatherTapped
    
    @IBAction func getWeatherTapped(_ sender: Any) {
    guard let cityName = cityTextField.text else {return }
    
    if !cityName.isEmpty {
    delegate?.userEnterCityName(city: cityName)
    self.dismiss(animated: true, completion: nil)
    }
    }
}


