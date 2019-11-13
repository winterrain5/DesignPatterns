//
//  ViewController.swift
//  Design Patterns
//
//  Created by Derrick on 2019/11/9.
//  Copyright © 2019 winter. All rights reserved.
//

import UIKit
struct Strategyies {
    var name:String
    var className:UIViewController
}
class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    var dataArray:[Strategyies] = [
        Strategyies(name: "策略模式", className: StrategyPattern()),
        Strategyies(name: "装饰模式", className: DecoratorPattern()),
        Strategyies(name: "原型模式", className: PrototypePattern()),
        Strategyies(name: "工厂模式", className: FactoryPattern()),
        
    ]
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
    }


}

extension ViewController:UITableViewDataSource,UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataArray.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 44
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCell(withIdentifier: "cell")
        if cell == nil {
            cell = UITableViewCell()
        }
        let strategy = dataArray[indexPath.row]
        cell?.textLabel?.text = strategy.name
        return cell!
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let classname = dataArray[indexPath.row].className
        
        self.navigationController?.pushViewController(classname, animated: true)
    }
}

