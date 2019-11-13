//
//  AbstractFactoryPattern.swift
//  Design Patterns
//
//  Created by Derrick on 2019/11/13.
//  Copyright © 2019 winter. All rights reserved.
//

import Foundation

// 抽象工厂类应只包含选择具体工厂的逻辑，具体工厂类应只包含选择实现类的逻辑

// 实现： 买家提供要买的车型，我们提供给他满足车型配置的车，买家无需了解车具体配置的细节



class AbstractFactoryPattern:BaseViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let car = Car(carType: .COMPACT)
        print(car)
    }
}
