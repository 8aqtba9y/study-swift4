//
//  ViewController.swift
//  11_CustomCell
//
//  Created by Qi Jsb on 2018/03/04.
//  Copyright © 2018年 Qi Jsb. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    
    var itemlist = [[String:String]]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.backgroundColor = UIColor.clear // または、Main.storyboardで、Table Viewの Background attributeを clearに 設定する
        
        let item1 = ["name":"apple","image":"apple.jpeg","amount":"6","value":"3000"]
        let item2 = ["name":"blueberry","image":"blueberry.jpg","amount":"10","value":"30000"]
        let item3 = ["name":"carrot","image":"carrot.jpg","amount":"13","value":"5000"]
        let item4 = ["name":"cherry","image":"cherry.png","amount":"1","value":"2000"]
        let item5 = ["name":"grape","image":"grape.jpg","amount":"13","value":"1000"]
        let item6 = ["name":"kiwi","image":"kiwi.png","amount":"2","value":"15000"]
        let item7 = ["name":"lemon","image":"lemon.png","amount":"3","value":"6000"]
        let item8 = ["name":"lime","image":"lime.jpg","amount":"4","value":"4000"]
        let item9 = ["name":"meat","image":"meat.jpg","amount":"5","value":"2000"]
        let item10 = ["name":"strawberry","image":"strawberry.jpg","amount":"7","value":"8000"]
        let item11 = ["name":"tomato","image":"tomato.png","amount":"30","value":"3000"]
        let item12 = ["name":"vegetable","image":"vegetable.jpg","amount":"40","value":"7000"]
        let item13 = ["name":"watermelon","image":"watermelon.png","amount":"5","value":"10000"]
        
        itemlist = [item1, item2, item3, item4, item5, item6, item7, item8, item9, item10, item11, item12, item13]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemlist.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
            as! CustomCell // CustomCellに 型変換
        
        cell.backgroundColor = UIColor.clear // または、Main.storyboardで、Table View Cellの Background attributeを clearに 設定する
        cell.selectionStyle = UITableViewCellSelectionStyle.none // または、Main.storyboardで、Table View Cellの selection attributeを noneに 設定する
        
        let dicTemp = itemlist[indexPath.row];
        cell.nameLabel.text = dicTemp["name"]
        cell.amountLabel.text = dicTemp["amount"]
        cell.valueLabel.text = dicTemp["value"]
        
        cell.imgView.image = UIImage(named: dicTemp["image"]!)
        
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        // もし、segueの identifierが showDetailであれば、
        if segue.identifier == "showDetail" {
            // segueの 目的地を DetailViewControllerに 型変換し、受け取り口にデータを渡す
            (segue.destination as! DetailViewController).detaildata = itemlist[tableView.indexPathForSelectedRow!.row]
        }
    }

}

