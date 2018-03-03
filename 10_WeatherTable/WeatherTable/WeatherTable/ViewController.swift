//
//  ViewController.swift
//  WeatherTable
//
//  Created by Qi Jsb on 2018/02/18.
//  Copyright © 2018年 Qi Jsb. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {
    
    var datalist = [[String:String]]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let dict1 = ["地域":"韓国","天気":"雨"]
        let dict2 = ["地域":"日本","天気":"晴れ"]
        let dict3 = ["地域":"中国","天気":"雪"]
        let dict4 = ["地域":"スペイン","天気":"ひょう"]
        let dict5 = ["地域":"アメリカ","天気":"曇り"]
        let dict6 = ["地域":"イギリス","天気":"雨"]
        let dict7 = ["地域":"フランス","天気":"晴れ"]
        let dict8 = ["地域":"ブラジル","天気":"雪"]
        let dict9 = ["地域":"スウィス","天気":"ひょう"]
        let dict10 = ["地域":"デンマーク","天気":"曇り"]
        let dict11 = ["地域":"スウェーデン","天気":"雨"]
        let dict12 = ["地域":"ネジャーランド","天気":"晴れ"]
        let dict13 = ["地域":"クロアチア","天気":"雪"]
        let dict14 = ["地域":"ドイツ","天気":"ひょう"]
        let dict15 = ["地域":"フィリピン","天気":"曇り"]
        let dict16 = ["地域":"ハンガリー","天気":"雨"]
        let dict17 = ["地域":"イタリア","天気":"晴れ"]
        let dict18 = ["地域":"ベルギー","天気":"雪"]
        let dict19 = ["地域":"フィンランド","天気":"ひょう"]
        
        datalist = [dict1, dict2, dict3, dict4, dict5, dict6, dict7, dict8, dict9, dict10
            , dict11, dict12, dict13, dict14, dict15, dict16, dict17, dict18, dict19]
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return datalist.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        print("indexPath.row: \(indexPath.row)")
        
        var dicTemp = datalist[indexPath.row]
        cell.textLabel!.text = dicTemp["地域"]
        let weatherStr = dicTemp["天気"]
        cell.detailTextLabel!.text = weatherStr

        if weatherStr == "晴れ" {
            cell.imageView!.image = UIImage(named: "sunny.png")
        } else if weatherStr == "雨" {
            cell.imageView!.image = UIImage(named: "rainy.png")
        } else if weatherStr == "曇り" {
            cell.imageView!.image = UIImage(named: "cloudy.png")
        }  else if weatherStr == "雪" {
            cell.imageView!.image = UIImage(named: "snow.png")
        }  else if weatherStr == "ひょう" {
            cell.imageView!.image = UIImage(named: "blizzard.png")
        }
        
        return cell
    }

}

