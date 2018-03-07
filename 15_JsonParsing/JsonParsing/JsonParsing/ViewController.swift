//
//  ViewController.swift
//  JsonParsing
//
//  Created by Qi Jsb on 2018/03/07.
//  Copyright © 2018年 Qi Jsb. All rights reserved.
//

import UIKit

struct Weather:Decodable { // Weatherという構造体はDecodableを継承する
    let country:String
    let weather:String
    let temperature:String
}

class ViewController: UIViewController, UITableViewDataSource {
    
    var datalist = [Weather]()
    @IBOutlet weak var mainTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let jsonURLString = "https://raw.githubusercontent.com/ChoiJinYoung/iphonewithswift2/master/swift4weather.json"
        guard let jsonURL = URL(string: jsonURLString) else {return}
        let session = URLSession.shared.dataTask(with: jsonURL) { (data, response, error) -> Void in
            guard let data:Data = data else {return}
            print("data: \(data)")
            
            do {
                self.datalist = try JSONDecoder().decode([Weather].self, from: data)
                print("datalist: \(self.datalist)")
                
                DispatchQueue.main.async(execute: {
                    self.mainTableView.reloadData()
                })
            } catch {
                print("Parsing error: \(error)")
            }
        }
        session.resume()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return datalist.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! WeatherCell
        
        let structTemp = datalist[indexPath.row]
        cell.countryLabel.text = structTemp.country
        
        let weather = structTemp.weather
        cell.weatherLabel.text = weather
        cell.temperatureLabel.text = structTemp.temperature
        
        if (weather == "비") {
            cell.imgView.image = UIImage(named: "rainy.png")
        } else if (weather == "맑음") {
            cell.imgView.image = UIImage(named: "sunny.png")
        } else if (weather == "눈") {
            cell.imgView.image = UIImage(named: "snow.png")
        } else if (weather == "우박") {
            cell.imgView.image = UIImage(named: "blizzard.png")
        } else if (weather == "흐림") {
            cell.imgView.image = UIImage(named: "cloudy.png")
        }
        
        return cell
    }

}

